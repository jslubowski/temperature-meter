#include "Sensor.h"

void sensor_init(SENSOR *self, float offset, unsigned int *input, float gain){
	self->offset = offset;
	self->gain = gain;
	self->input = input;
}
void sensor_calculate(SENSOR *self){
	self->output = (*self->input - self->offset) * self->gain;

}



