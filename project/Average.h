/*
 * Average.h
 *
 *  Created on: 31 maj 2019
 *      Author: SW
 */

#ifndef AVERAGE_H_
#define AVERAGE_H_
typedef struct AVERAGE{
	float *input;
	float output;
	unsigned int size;

}AVERAGE;
void average_init(AVERAGE *self, float *input, unsigned int size);
void average_calculate(AVERAGE *self);


#endif /* AVERAGE_H_ */
