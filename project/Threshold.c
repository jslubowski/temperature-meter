#include "Threshold.h"

void threshold_init(THRESHOLD *self, float *input){
	self->input = input;
}


void threshold_upperLimit(THRESHOLD *self){
	if(*self->input > self->upperThresh){
		self->upperAlert = 1;
	}
	else{
		self->upperAlert = 0;
	}
}

void threshold_lowerLimit(THRESHOLD *self){
	if(*self->input < self->lowerThresh){
		self->lowerAlert = 1;
	}
	else{
		self->lowerAlert = 0;
	}
}






