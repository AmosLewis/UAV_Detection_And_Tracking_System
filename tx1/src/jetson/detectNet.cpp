/*
 * http://github.com/dusty-nv/jetson-inference
 */
 
#include "detectNet.h"

#include <algorithm>
#include <vector>
#include <math.h>

#include "cudaMappedMemory.h"
#include "cudaOverlay.h"
#include "cudaResize.h"

#define MAX(a,b) (a>b)?a:b 
#define MIN(a,b) (a>b)?b:a

#define OUTPUT_CVG  0
#define OUTPUT_BBOX 1

//#define DEBUG_CLUSTERING

struct rectOverlap
	{
		float x,y,width,hight;
	};

detectNet* detectNet::Create( NetworkType networkType, float threshold  )
{
	if( networkType == PEDNET_MULTI )
		return Create("multiped-500/deploy.prototxt", "multiped-500/snapshot_iter_178000.caffemodel", "multiped-500/mean.binaryproto", threshold );
	else if( networkType == FACENET )
		return Create("facenet-120/deploy.prototxt", "facenet-120/snapshot_iter_24000.caffemodel", NULL, threshold );
	else if( networkType == PEDNET )
		return Create("/home/ubuntu/hj/workspace/jetson-ros/src/jetson/ped-100/deploy.prototxt", "/home/ubuntu/hj/workspace/jetson-ros/src/jetson/ped-100/snapshot_iter_70800.caffemodel", "/home/ubuntu/hj/workspace/jetson-ros/src/jetson/ped-100/mean.binaryproto", threshold );
	else 
		return Create("/home/ubuntu/hj/workspace/jetson-ros/src/jetson/car12/deploy.prototxt", "/home/ubuntu/hj/workspace/jetson-ros/src/jetson/car12/snapshot_iter_19140.caffemodel", "/home/ubuntu/hj/workspace/jetson-ros/src/jetson/car12/mean.binaryproto", threshold );
}

	
void detectNet::SetClassColor( uint32_t classIndex, float r, float g, float b, float a )
{
	if( classIndex >= GetNumClasses() || !mClassColors[0] )
		return;
	
	const uint32_t i = classIndex * 4;
	
	mClassColors[0][i+0] = r;
	mClassColors[0][i+1] = g;
	mClassColors[0][i+2] = b;
	mClassColors[0][i+3] = a;
}
	
// constructor
detectNet::detectNet() : tensorNet()
{
	mCoverageThreshold = 0.5f;
	
	mClassColors[0] = NULL;	// cpu ptr
	mClassColors[1] = NULL; // gpu ptr
}


// destructor
detectNet::~detectNet()
{
	
}


// Create
detectNet* detectNet::Create( const char* prototxt, const char* model, const char* mean_binary, float threshold, const char* input_blob, const char* coverage_blob, const char* bbox_blob )
{
	detectNet* net = new detectNet();
	
	if( !net )
		return NULL;

	//net->EnableDebug();
	
	std::vector<std::string> output_blobs;
	output_blobs.push_back(coverage_blob);
	output_blobs.push_back(bbox_blob);
	
	if( !net->LoadNetwork(prototxt, model, mean_binary, input_blob, output_blobs) )
	{
		printf("detectNet -- failed to initialize.\n");
		return NULL;
	}
	
	const uint32_t numClasses = net->GetNumClasses();
	
	if( !cudaAllocMapped((void**)&net->mClassColors[0], (void**)&net->mClassColors[1], numClasses * sizeof(float4)) )
		return NULL;
	
	for( uint32_t n=0; n < numClasses; n++ )
	{
		if( n != 1 )
		{
			net->mClassColors[0][n*4+0] = 0.0f;	// r
			net->mClassColors[0][n*4+1] = 200.0f;	// g
			net->mClassColors[0][n*4+2] = 255.0f;	// b
			net->mClassColors[0][n*4+3] = 100.0f;	// a
		}
		else
		{
			net->mClassColors[0][n*4+0] = 0.0f;	// r
			net->mClassColors[0][n*4+1] = 255.0f;	// g
			net->mClassColors[0][n*4+2] = 175.0f;	// b
			net->mClassColors[0][n*4+3] = 100.0f;	// a
		}
	}
	
	net->SetThreshold(threshold);
	return net;
}


cudaError_t cudaPreImageNetMean( float4* input, size_t inputWidth, size_t inputHeight, float* output, size_t outputWidth, size_t outputHeight, const float3& mean_value );



struct float6 { float x; float y; float z; float w; float v; float u; };
static inline float6 make_float6( float x, float y, float z, float w, float v, float u ) { float6 f; f.x = x; f.y = y; f.z = z; f.w = w; f.v = v; f.u = u; return f; }


inline static bool rectOverlap(const float6& r1, const float6& r2)
{
    return ! ( r2.x > r1.z  
        || r2.z < r1.x
        || r2.y > r1.w
        || r2.w < r1.y
        );
}

static void mergeRect( std::vector<float6>& rects, const float6& rect )
{
	const uint32_t num_rects = rects.size();
	
	bool intersects = false;
	
	for( uint32_t r=0; r < num_rects; r++ )
	{
		if( rectOverlap(rects[r], rect) )
		{
			intersects = true;   

#ifdef DEBUG_CLUSTERING
			printf("found overlap\n");		
#endif

			if( rect.x < rects[r].x ) 	rects[r].x = rect.x;
			if( rect.y < rects[r].y ) 	rects[r].y = rect.y;
			if( rect.z > rects[r].z )	rects[r].z = rect.z;
			if( rect.w > rects[r].w ) 	rects[r].w = rect.w;
			
			break;
		}
			
	} 
	
	if( !intersects )
		rects.push_back(rect);
}
bool DecideOberlap(float6 boex1, float6 boex2)
{
	struct rectOverlap rect1,rect2;
	rect1.x = boex1.x; rect2.x = boex2.x;
	rect1.y = boex1.y; rect2.y = boex2.y;
	rect1.width = boex1.z - boex1.x;
	rect1.hight = boex1.w - boex1.y;
	rect2.width = boex2.z - boex2.x;
	rect2.hight = boex2.w - boex2.y;

	float endx = MAX(rect1.x+rect1.width,rect2.x+rect2.width);
	float startx = MIN(rect1.x,rect2.x);

	float width = rect1.width + rect2.width - (endx - startx);

	float endy = MAX(rect1.y+rect1.hight,rect2.y+rect2.hight);
	float starty = MIN(rect1.y,rect2.y);

	float hight = rect1.hight + rect2.hight - (endy-starty);

	bool D = false;
	float Area = 0, Area1 = 0, Area2 = 0, retio = 0;

	if (width <= 0 || hight <= 0)
		D = false;
	else 
	{
		Area = width*hight;
		Area1 = rect1.width*rect2.hight;
		Area2 = rect2.width*rect2.hight;
		retio = Area / (Area1 + Area2 - Area);
		if (retio > 0.3)
			D = true;
		else
			D = false;
	}

	return D;
}
inline bool high_converage(const float6& rect1, const float6& rect2) { return rect1.v < rect2.v; }
static void detectRect(std::vector<float6>& outputRects,std::vector<float6>& inputRects)
{
	//const unsigned int num_rects = inputRects.size();
	//bool intersects = false;
    std::vector<float6>::iterator e1 = inputRects.begin(), e2;

	std::sort(inputRects.begin(),inputRects.end(),high_converage);

	//for (int i = 0; i <inputRects.size() ; i++)
	
	while(!inputRects.empty())
	{
		outputRects.push_back(inputRects.back());//Ñ¡Ôñoverage×îžß¶ÔÓŠ±ß¿òÎªA£»
		inputRects.pop_back(); //±£Žæ±ß¿òAºóŽÓÊý×éÖÐÉŸ³ý£¬Í¬Ê±žüÐÂË÷ÒýÊý×éŽóÐ¡n

		//for (int j = 0; j < inputRects.size();j++) 
		for (e2=inputRects.begin();e2!=inputRects.end();)
		{
			if (DecideOberlap(outputRects.back(), *e2)) //Èç¹ûÁœžö¿òµÄÖØµþÂÊ³¬¹ý0.5ÔòÉŸ³ýµÃ·ÖÖµÐ¡µÄ±ß¿ò
				e2 = inputRects.erase(e2);//ŽÓÊý×éÖÐÉŸ³ýBi,Í¬Ê±žüÐÂË÷ÒýÊý×éŽóÐ¡
			else
				++e2;
		}

	}
}

// Detect
bool detectNet::Detect( float* rgba, uint32_t width, uint32_t height, float* boundingBoxes, int* numBoxes, float* confidence )
{
	if( !rgba || width == 0 || height == 0 || !boundingBoxes || !numBoxes || *numBoxes < 1 )
	{
		printf("detectNet::Detect( 0x%p, %u, %u ) -> invalid parameters\n", rgba, width, height);
		return false;
	}

	
	// downsample and convert to band-sequential BGR
	if( CUDA_FAILED(cudaPreImageNetMean((float4*)rgba, width, height, mInputCUDA, mWidth, mHeight,
								  make_float3(104.0069879317889f, 116.66876761696767f, 122.6789143406786f))) )
	{
		printf("detectNet::Classify() -- cudaPreImageNetMean failed\n");
		return false;
	}
	
	// process with GIE
	void* inferenceBuffers[] = { mInputCUDA, mOutputs[OUTPUT_CVG].CUDA, mOutputs[OUTPUT_BBOX].CUDA };
	
	if( !mContext->execute(1, inferenceBuffers) )
	{
		printf(LOG_GIE "detectNet::Classify() -- failed to execute tensorRT context\n");
		*numBoxes = 0;
		return false;
	}
	
	PROFILER_REPORT();

	// cluster detection bboxes
	float* net_cvg   = mOutputs[OUTPUT_CVG].CPU;
	float* net_rects = mOutputs[OUTPUT_BBOX].CPU;
	
	const int ow  = mOutputs[OUTPUT_BBOX].dims.w;		// number of columns in bbox grid in X dimension
	const int oh  = mOutputs[OUTPUT_BBOX].dims.h;		// number of rows in bbox grid in Y dimension
	const int owh = ow * oh;							// total number of bbox in grid
	const int cls = GetNumClasses();					// number of object classes in coverage map
	
	const float cell_width  = /*width*/ mInputDims.w / ow;
	const float cell_height = /*height*/ mInputDims.h / oh;
	
	const float scale_x = float(width) / float(mInputDims.w);
	const float scale_y = float(height) / float(mInputDims.h);

#ifdef DEBUG_CLUSTERING	
	printf("input width %i height %i\n", (int)mInputDims.w, (int)mInputDims.h);
	printf("cells x %i  y %i\n", ow, oh);
	printf("cell width %f  height %f\n", cell_width, cell_height);
	printf("scale x %f  y %f\n", scale_x, scale_y);
#endif
#if 1
	std::vector< std::vector<float6> > rects;
	rects.resize(cls);
	
	// extract and cluster the raw bounding boxes that meet the coverage threshold
	for( uint32_t z=0; z < cls; z++ )
	{
		rects[z].reserve(owh);
		std::vector<float6> inputBox;
		
		for( uint32_t y=0; y < oh; y++ )
		{
			for( uint32_t x=0; x < ow; x++)
			{
				const float coverage = net_cvg[z * owh + y * ow + x];
				
				if( coverage > mCoverageThreshold )
				{
					const float mx = x * cell_width;
					const float my = y * cell_height;
					
					const float x1 = (net_rects[0 * owh + y * ow + x] + mx) * scale_x;	// left
					const float y1 = (net_rects[1 * owh + y * ow + x] + my) * scale_y;	// top
					const float x2 = (net_rects[2 * owh + y * ow + x] + mx) * scale_x;	// right
					const float y2 = (net_rects[3 * owh + y * ow + x] + my) * scale_y;	// bottom 
					
				#ifdef DEBUG_CLUSTERING
					printf("rect x=%u y=%u  cvg=%f  %f %f   %f %f \n", x, y, coverage, x1, x2, y1, y2);
				#endif					
					//mergeRect( rects[z], make_float6(x1, y1, x2, y2, coverage, z) );
					
				    inputBox.push_back(make_float6(x1, y1, x2, y2, coverage, z));
				}
			}
		}
	    detectRect(rects[z],inputBox);
	}
	
	//printf("done mZ rects\n");
	
	// condense the multiple class lists down to 1 list of detections
	const uint32_t numMax = *numBoxes;
	int n = 0;
	
	for( uint32_t z = 0; z < cls; z++ )
	{
		const uint32_t numBox = rects[z].size();
		
		for( uint32_t b = 0; b < numBox && n < numMax; b++ )
		{
			const float6 r = rects[z][b];
			
			boundingBoxes[n * 4 + 0] = r.x;
			boundingBoxes[n * 4 + 1] = r.y;
			boundingBoxes[n * 4 + 2] = r.z;
			boundingBoxes[n * 4 + 3] = r.w;
			
			if( confidence != NULL )
			{
				confidence[n * 2 + 0] = r.v;	// coverage
				confidence[n * 2 + 1] = r.u;	// class ID
			}
			
			n++;
		}
	}
	
	*numBoxes = n;
#else
	*numBoxes = 0;
#endif
	return true;
}


// DrawBoxes
bool detectNet::DrawBoxes( float* input, float* output, uint32_t width, uint32_t height, const float* boundingBoxes, int numBoxes, int classIndex )
{
	if( !input || !output || width == 0 || height == 0 || !boundingBoxes || numBoxes < 1 || classIndex < 0 || classIndex >= GetNumClasses() )
		return false;
	
	const float4 color = make_float4( mClassColors[0][classIndex*4+0], 
									  mClassColors[0][classIndex*4+1],
									  mClassColors[0][classIndex*4+2],
									  mClassColors[0][classIndex*4+3] );
	
	printf("draw boxes  %i  %i   %f %f %f %f\n", numBoxes, classIndex, color.x, color.y, color.z, color.w);
	
	if( CUDA_FAILED(cudaRectOutlineOverlay((float4*)input, (float4*)output, width, height, (float4*)boundingBoxes, numBoxes, color)) )
		return false;
	
	return true;
}
	
	
