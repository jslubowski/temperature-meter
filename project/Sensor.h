/*
 * Sensor.h
 *
 *  Created on: 10 maj 2019
 *      Author: SW
 */

#ifndef SENSOR_H_
#define SENSOR_H_

typedef struct SENSOR{
	float offset;
	unsigned int *input;
	float output;
	float gain;
}SENSOR;
void sensor_init(SENSOR *self, float offset, unsigned int *input, float gain);
void sensor_calculate(SENSOR *self);

#endif /* SENSOR_H_ */
