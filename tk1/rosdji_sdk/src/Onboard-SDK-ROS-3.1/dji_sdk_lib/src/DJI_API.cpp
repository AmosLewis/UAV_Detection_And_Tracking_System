/** @file DJI_API.cpp
 *  @version 3.1.7
 *  @date July 1st, 2016
 *
 *  @brief
 *  Core API for DJI onboardSDK library
 *
 *  @copyright 2016 DJI. All right reserved.
 *
 */

#include "DJI_API.h"
#include <string.h>
#include <stdio.h>

using namespace DJI;
using namespace DJI::onboardSDK;

#ifdef USE_ENCRYPT
uint8_t DJI::onboardSDK::encrypt = 1;
#else
uint8_t DJI::onboardSDK::encrypt = 0;
#endif // USE_ENCRYPT

CoreAPI::CoreAPI(HardDriver *sDevice, Version SDKVersion, bool userCallbackThread,
    CallBack userRecvCallback, UserData userData)
{
  CallBackHandler handler;
  handler.callback = userRecvCallback;
  handler.userData = userData;
  init(sDevice, handler, userCallbackThread, SDKVersion);
}

void CoreAPI::init(HardDriver *sDevice, CallBackHandler userRecvCallback,
    bool userCallbackThread, Version SDKVersion)
{
  serialDevice = sDevice;
  // serialDevice->init();

  seq_num = 0;
  sessionStatus = 11;

  filter.recvIndex = 0;
  filter.reuseCount = 0;
  filter.reuseIndex = 0;
  filter.encode = 0;

  broadcastCallback.callback = 0;
  broadcastCallback.userData = 0;
  fromMobileCallback.callback = 0;
  fromMobileCallback.userData = 0;
  hotPointCallback.callback = 0;
  wayPointCallback.callback = 0;
  hotPointCallback.userData = 0;
  wayPointEventCallback.callback = 0;
  wayPointEventCallback.userData = 0;
  wayPointCallback.userData = 0;
  followCallback.callback = 0;
  followCallback.userData = 0;
  missionCallback.callback = 0;
  missionCallback.userData = 0;

  recvCallback.callback = userRecvCallback.callback;
  recvCallback.userData = userRecvCallback.userData;

  callbackThread = false;
  hotPointData = false;
  followData = false;
  wayPointData = false;
  callbackThread = userCallbackThread;

  versionData.version = SDKVersion;

  //! @todo simplify code above
  memset((unsigned char *)&broadcastData, 0, sizeof(broadcastData));

  setup();
}

CoreAPI::CoreAPI(HardDriver *sDevice, Version SDKVersion, CallBackHandler userRecvCallback,
    bool userCallbackThread)
{
  init(sDevice, userRecvCallback, userCallbackThread, SDKVersion);
  getSDKVersion();
}

void CoreAPI::send(unsigned char session, unsigned char is_enc, CMD_SET cmdSet,
    unsigned char cmdID, void *pdata, int len, CallBack ackCallback, int timeout,
    int retry)
{
  Command param;
  unsigned char *ptemp = (unsigned char *)encodeSendData;
  *ptemp++ = cmdSet;
  *ptemp++ = cmdID;

  memcpy(encodeSendData + SET_CMD_SIZE, pdata, len);

  param.handler = ackCallback;
  param.sessionMode = session;
  param.length = len + SET_CMD_SIZE;
  param.buf = encodeSendData;
  param.retry = retry;

  param.timeout = timeout;
  param.encrypt = is_enc;

  param.userData = 0;

  sendInterface(&param);
}

void CoreAPI::send(unsigned char session_mode, bool is_enc, CMD_SET cmd_set,
    unsigned char cmd_id, void *pdata, size_t len, int timeout, int retry_time,
    CallBack ack_handler, UserData userData)
{
  Command param;
  unsigned char *ptemp = (unsigned char *)encodeSendData;
  *ptemp++ = cmd_set;
  *ptemp++ = cmd_id;

  memcpy(encodeSendData + SET_CMD_SIZE, pdata, len);

  param.handler = ack_handler;
  param.sessionMode = session_mode;
  param.length = len + SET_CMD_SIZE;
  param.buf = encodeSendData;
  param.retry = retry_time;

  param.timeout = timeout;
  param.encrypt = is_enc ? 1 : 0;

  param.userData = userData;

  sendInterface(&param);
}

void CoreAPI::send(Command *parameter) { sendInterface(parameter); }

void CoreAPI::ack(req_id_t req_id, unsigned char *ackdata, int len)
{
  Ack param;

  memcpy(encodeACK, ackdata, len);

  param.sessionID = req_id.session_id;
  param.seqNum = req_id.sequence_number;
  param.encrypt = req_id.need_encrypt;
  param.buf = encodeACK;
  param.length = len;

  this->ackInterface(&param);
}

void CoreAPI::getDroneVersion(CallBack callback, UserData userData)
{
  versionData.version_ack = ACK_COMMON_NO_RESPONSE;
  versionData.version_crc = 0x0;
  versionData.version_name[0] = 0;

  unsigned cmd_timeout = 100; // unit is ms
  unsigned retry_time = 3;
  unsigned char cmd_data = 0;

  send(2, 0, SET_ACTIVATION, CODE_GETVERSION, (unsigned char *)&cmd_data, 1, cmd_timeout,
    retry_time, callback ? callback : CoreAPI::getDroneVersionCallback, userData);
}

void CoreAPI::activate(ActivateData *data, CallBack callback, UserData userData)
{
  data->version = versionData.version;
  accountData = *data;
  accountData.reserved = 2;

  for (int i = 0; i < 32; ++i) accountData.iosID[i] = '0'; //! @note for ios verification
  API_LOG(serialDevice, DEBUG_LOG, "version 0x%X/n", versionData.version);
  API_LOG(serialDevice, DEBUG_LOG, "%.32s", accountData.iosID);
  send(2, 0, SET_ACTIVATION, CODE_ACTIVATE, (unsigned char *)&accountData,
    sizeof(accountData) - sizeof(char *), 1000, 3,
    callback ? callback : CoreAPI::activateCallback, userData);
}

void CoreAPI::sendToMobile(uint8_t *data, uint8_t len, CallBack callback, UserData userData)
{
  if (len > 100)
  {
    API_LOG(serialDevice, ERROR_LOG, "Too much data to send");
    return;
  }
  send(2, 0, SET_ACTIVATION, CODE_TOMOBILE, data, len, 500, 1,
    callback ? callback : CoreAPI::sendToMobileCallback, userData);
}

void CoreAPI::setBroadcastFreq(uint8_t *dataLenIs16, CallBack callback, UserData userData)
{
  //! @note see also enum BROADCAST_FREQ in DJI_API.h
  for (int i = 0; i < 16; ++i)
  {
    if (versionData.version == versionM100_31)
      if (i < 12)
      {
        dataLenIs16[i] = (dataLenIs16[i] > 5 ? 5 : dataLenIs16[i]);
      }
      else
        dataLenIs16[i] = 0;
    else
    {
      if (i < 14)
      {
        dataLenIs16[i] = (dataLenIs16[i] > 5 ? 5 : dataLenIs16[i]);
      }
      else
        dataLenIs16[i] = 0;
    }
  }
  send(2, 0, SET_ACTIVATION, CODE_FREQUENCY, dataLenIs16, 16, 100, 1,
     callback ? callback : CoreAPI::setFrequencyCallback, userData);
}

TimeStampData CoreAPI::getTime() const { return broadcastData.timeStamp; }

FlightStatus CoreAPI::getFlightStatus() const { return broadcastData.status; }

void CoreAPI::setFromMobileCallback(CallBackHandler FromMobileEntrance)
{
  fromMobileCallback = FromMobileEntrance;
}

ActivateData CoreAPI::getAccountData() const { return accountData; }

void CoreAPI::setAccountData(const ActivateData &value) { accountData = value; }
void CoreAPI::setHotPointData(bool value) { hotPointData = value; }
void CoreAPI::setWayPointData(bool value) { wayPointData = value; }
void CoreAPI::setFollowData(bool value) { followData = value; }
bool CoreAPI::getHotPointData() const { return hotPointData; }
bool CoreAPI::getWayPointData() const { return wayPointData; }
bool CoreAPI::getFollowData() const { return followData; }

void CoreAPI::setControl(bool enable, CallBack callback, UserData userData)
{
  unsigned char data = enable ? 1 : 0;
  send(2, DJI::onboardSDK::encrypt, SET_CONTROL, CODE_SETCONTROL, &data, 1, 500, 2,
    callback ? callback : CoreAPI::setControlCallback, userData);
}

HardDriver *CoreAPI::getDriver() const { return serialDevice; }

void CoreAPI::setDriver(HardDriver *sDevice) { serialDevice = sDevice; }

void CoreAPI::getDroneVersionCallback(CoreAPI *api, Header *protocolHeader, UserData userData __UNUSED)
{
  unsigned char *ptemp = ((unsigned char *)protocolHeader) + sizeof(Header);

  api->versionData.version_ack = ptemp[0] + (ptemp[1] << 8);
  ptemp += 2;
  api->versionData.version_crc =
    ptemp[0] + (ptemp[1] << 8) + (ptemp[2] << 16) + (ptemp[3] << 24);
  ptemp += 4;
  if (api->versionData.version != versionM100_23)
  {
    memcpy(api->versionData.version_ID, ptemp, 11);
    ptemp += 11;
  }
  memcpy(api->versionData.version_name, ptemp, 32);

  API_LOG(api->serialDevice, STATUS_LOG, "version ack = %d\n", api->versionData.version_ack);
  API_LOG(api->serialDevice, STATUS_LOG, "version crc = 0x%X\n", api->versionData.version_crc);
  if (api->versionData.version != versionM100_23)
    API_LOG(api->serialDevice, STATUS_LOG, "version ID = %.11s\n", api->versionData.version_ID);
  API_LOG(api->serialDevice, STATUS_LOG, "version name = %.32s\n",
      api->versionData.version_name);
}

void CoreAPI::activateCallback(CoreAPI *api, Header *protocolHeader, UserData userData __UNUSED)
{

  unsigned short ack_data;
  if (protocolHeader->length - EXC_DATA_SIZE <= 2)
  {
    memcpy((unsigned char *)&ack_data, ((unsigned char *)protocolHeader) + sizeof(Header),
        (protocolHeader->length - EXC_DATA_SIZE));
    switch (ack_data)
    {
      case ACK_ACTIVE_SUCCESS:
        API_LOG(api->serialDevice, STATUS_LOG, "Activated successfully\n");

        if (api->accountData.encKey)
          api->setKey(api->accountData.encKey);
        return;
      case ACK_ACTIVE_NEW_DEVICE:
        API_LOG(api->serialDevice, STATUS_LOG, "New device, please link DJIGO to your "
            "remote controller and try again\n");
        break;
      case ACK_ACTIVE_PARAMETER_ERROR:
        API_LOG(api->serialDevice, ERROR_LOG, "Wrong parameter\n");
        break;
      case ACK_ACTIVE_ENCODE_ERROR:
        API_LOG(api->serialDevice, ERROR_LOG, "Encode error\n");
        break;
      case ACK_ACTIVE_APP_NOT_CONNECTED:
        API_LOG(api->serialDevice, ERROR_LOG, "DJIGO not connected\n");
        break;
      case ACK_ACTIVE_NO_INTERNET:
        API_LOG(api->serialDevice, ERROR_LOG, "DJIGO not "
            "connected to the internet\n");
        break;
      case ACK_ACTIVE_SERVER_REFUSED:
        API_LOG(api->serialDevice, ERROR_LOG, "DJI server rejected "
            "your request, please use your SDK ID\n");
        break;
      case ACK_ACTIVE_ACCESS_LEVEL_ERROR:
        API_LOG(api->serialDevice, ERROR_LOG, "Wrong SDK permission\n");
        break;
      case ACK_ACTIVE_VERSION_ERROR:
        API_LOG(api->serialDevice, ERROR_LOG, "SDK version did not match\n");
        api->getDroneVersion();
        break;
      default:
        if (!api->decodeACKStatus(ack_data))
        {
          API_LOG(api->serialDevice, ERROR_LOG, "While calling this function");
        }
        break;
    }
  }
  else
  {
    API_LOG(api->serialDevice, ERROR_LOG, "ACK is exception, session id %d,sequence %d\n",
        protocolHeader->sessionID, protocolHeader->sequenceNumber);
  }
}

void CoreAPI::sendToMobileCallback(CoreAPI *api, Header *protocolHeader, UserData userData __UNUSED)
{
  unsigned short ack_data = ACK_COMMON_NO_RESPONSE;
  if (protocolHeader->length - EXC_DATA_SIZE <= 2)
  {
    memcpy((unsigned char *)&ack_data, ((unsigned char *)protocolHeader) + sizeof(Header),
        (protocolHeader->length - EXC_DATA_SIZE));
    if (!api->decodeACKStatus(ack_data))
    {
      API_LOG(api->serialDevice, ERROR_LOG, "While calling this function");
    }
  }
  else
  {
    API_LOG(api->serialDevice, ERROR_LOG, "ACK is exception, session id %d,sequence %d\n",
        protocolHeader->sessionID, protocolHeader->sequenceNumber);
  }
}

void CoreAPI::setFrequencyCallback(CoreAPI *api __UNUSED, Header *protocolHeader,
    UserData userData __UNUSED)
{
  unsigned short ack_data = ACK_COMMON_NO_RESPONSE;

  if (protocolHeader->length - EXC_DATA_SIZE <= 2)
  {
    memcpy((unsigned char *)&ack_data, ((unsigned char *)protocolHeader) + sizeof(Header),
        (protocolHeader->length - EXC_DATA_SIZE));
  }
  switch (ack_data)
  {
    case 0x0000:
      API_LOG(api->serialDevice, STATUS_LOG, "Frequency set successfully");
      break;
    case 0x0001:
      API_LOG(api->serialDevice, ERROR_LOG, "Frequency parameter error");
      break;
    default:
      if (!api->decodeACKStatus(ack_data))
      {
        API_LOG(api->serialDevice, ERROR_LOG, "While calling this function");
      }
      break;
  }
}
Version CoreAPI::getSDKVersion() const { return versionData.version; }

SDKFilter CoreAPI::getFilter() const { return filter; }

void CoreAPI::setVersion(const Version &value) { versionData.version = value; }

void CoreAPI::setControlCallback(CoreAPI *api, Header *protocolHeader, UserData userData __UNUSED)
{
  unsigned short ack_data = ACK_COMMON_NO_RESPONSE;
  unsigned char data = 0x1;

  if (protocolHeader->length - EXC_DATA_SIZE <= sizeof(ack_data))
  {
    memcpy((unsigned char *)&ack_data, ((unsigned char *)protocolHeader) + sizeof(Header),
        (protocolHeader->length - EXC_DATA_SIZE));
  }
  else
  {
    API_LOG(api->serialDevice, ERROR_LOG, "ACK is exception, session id %d,sequence %d\n",
        protocolHeader->sessionID, protocolHeader->sequenceNumber);
  }

  switch (ack_data)
  {
    case ACK_SETCONTROL_NEED_MODE_F:
      API_LOG(api->serialDevice, STATUS_LOG, "Obtain control failed, conditions did not "
          "satisfied");
      break;
    case ACK_SETCONTROL_RELEASE_SUCCESS:
      API_LOG(api->serialDevice, STATUS_LOG, "Released control successfully\n");
      break;
    case ACK_SETCONTROL_OBTAIN_SUCCESS:
      API_LOG(api->serialDevice, STATUS_LOG, "Obtained control successfully\n");
      break;
    case ACK_SETCONTROL_OBTAIN_RUNNING:
      API_LOG(api->serialDevice, STATUS_LOG, "Obtain control running\n");
      api->send(2, DJI::onboardSDK::encrypt, SET_CONTROL, CODE_SETCONTROL, &data, 1, 500,
          2, CoreAPI::setControlCallback);
      break;
    case ACK_SETCONTROL_RELEASE_RUNNING:
      API_LOG(api->serialDevice, STATUS_LOG, "Release control running\n");
      data = 0;
      api->send(2, DJI::onboardSDK::encrypt, SET_CONTROL, CODE_SETCONTROL, &data, 1, 500,
          2, CoreAPI::setControlCallback);
      break;
    case ACK_SETCONTROL_IOC:
      API_LOG(api->serialDevice, STATUS_LOG, "IOC mode opening can not obtain control\n");
      break;
    default:
      if (!api->decodeACKStatus(ack_data))
      {
        API_LOG(api->serialDevice, ERROR_LOG, "While calling this function");
      }
      break;
  }
}
