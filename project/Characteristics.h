/*
 * Characteristics.h
 *
 *  Created on: 24 maj 2019
 *      Author: SW
 */

#ifndef CHARACTERISTICS_H_
#define CHARACTERISTICS_H_
typedef struct CHARACTERISTICS{
	float a;
	float b;
	float *input;
	float tempOutput;
}CHARACTERISTICS;
void characteristics_init(CHARACTERISTICS *self, float a, float *input, float b);
void characteristics_calculate(CHARACTERISTICS *self);

#endif /* CHARACTERISTICS_H_ */
