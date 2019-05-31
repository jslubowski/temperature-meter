/*
 * Threshold.h
 *
 *  Created on: 24 maj 2019
 *      Author: SW
 */


#ifndef THRESHOLD_H_
#define THRESHOLD_H_
typedef int bool;
#define true 1
#define false 0
typedef struct THRESHOLD{
	float upperThresh;
	float lowerThresh;
	float *input;
	bool upperAlert;
	bool lowerAlert;
}THRESHOLD;
void threshold_init(THRESHOLD *self, float *input);
void threshold_upperLimit(THRESHOLD *self);
void threshold_lowerLimit(THRESHOLD *self);

#endif /* THRESHOLD_H_ */
