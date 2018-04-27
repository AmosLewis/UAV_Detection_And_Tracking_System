/*
 * PID.cpp
 *
 *  Created on: 19/09/2011
 *      Author: Ignacio Mellado
 */
 
#include <iostream>
#include "PID.h"

namespace pid {

PID::PID() {
	Kp = 0.0;
	Ki = 0.0;
	Kd = 0.0;
	feedback = 0.0;
	reference = 0.0;
	output = 0.0;
	integrator = 0.0;
	lastError = 0.0;
    for (int i = 0; i < PID_D_FILTER_LENGTH; i++) dErrorHistory[i] = 0.0;
	started = false;
	enableAntiWindup(false, 0.0);
	enableMaxOutput(false, 0.0);
}

PID::~PID() {
}

double PID::getOutput() {
    double elapsed = timer.getElapsedSeconds();
	timer.restart(started);
	if (!started) {
		started = true;
		return output;
	}

	// Calculate error and derivative
    double error = reference - feedback;

    for (int i = 0; i < PID_D_FILTER_LENGTH - 1; i++)
		dErrorHistory[i] = dErrorHistory[i + 1];
	dErrorHistory[PID_D_FILTER_LENGTH - 1] = (error - lastError) / elapsed;
	lastError = error;

    double dError = 0.0;
    double weight = 2.0 / (PID_D_FILTER_LENGTH + 1);
    for (int i = 0; i < PID_D_FILTER_LENGTH; i++) {
		dError += weight * dErrorHistory[PID_D_FILTER_LENGTH - i - 1];
#if PID_D_FILTER_LENGTH > 1
		weight -= (2.0 / (PID_D_FILTER_LENGTH * (PID_D_FILTER_LENGTH + 1)));
#endif
	}

	// Output
	output = Kp * error + Ki * integrator + Kd * dError;

	// Anti-windup
    if (antiwindup_enabled) {
		// If enabled, only update the integrator if the PID output is inside the actuator operation range
		// or it is higher than the upper bound but the error is negative
		// or it is lower than the lower bound but the error is positive
        double ki_int = Ki * integrator;
        if ((ki_int <  antiwindup_max && ki_int   > antiwindup_min) ||
            (ki_int >= saturation_max && Ki*error < 0)              ||
            (ki_int <= saturation_min && Ki*error > 0)              )
            integrator += error * elapsed;
	} else integrator += error * elapsed;

    // Saturation 最大最小输出限定
    if (saturation_enabled) {
        if (output > saturation_max) output = saturation_max;
        if (output < saturation_min) output = saturation_min;
	}
	//output=-error/elapsed;
	return output;
}

void PID::enableAntiWindup(bool enable, double max) {
    enableAntiWindup( enable, -max, +max);
}

void PID::enableAntiWindup(bool enable, double min, double max) {
    antiwindup_enabled = enable;
    antiwindup_min = min;
    antiwindup_max = max;
}

void PID::enableMaxOutput(bool enable, double max) {
    enableMaxOutput( enable, -max, +max);
}

void PID::enableMaxOutput(bool enable, double min, double max) {
    saturation_enabled = enable;
    saturation_min = min;
    saturation_max = max;
}

void PID::reset() {
	integrator = 0.0;
	lastError = 0.0;
    for (int i = 0; i < PID_D_FILTER_LENGTH; i++) dErrorHistory[i] = 0.0;
	started = false;
}

} /* namespace CVG_BlockDiagram */
