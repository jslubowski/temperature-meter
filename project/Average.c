#include "Average.h"

void average_init(AVERAGE *self, float *input, unsigned int size){
	self->input = input;
	self->size = size;
}

void average_calculate(AVERAGE *self){
	float temp = 0;
	int i;
	for(i = 0; i < (self->size); i++){
		temp += self->input[i];
	}
	self->output = temp/(self->size);
}








