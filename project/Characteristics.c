#include "Characteristics.h"

void characteristics_init(CHARACTERISTICS *self, float a, float *input, float b){
	self->a = a;
	self->b = b;
	self->input = input;
}

void characteristics_calculate(CHARACTERISTICS *self){
	self->tempOutput = (*self->input * self->a) + self->b;
}






