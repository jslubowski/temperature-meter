//###########################################################################
// Description:
//! \addtogroup f2806x_example_list
//! <h1> ADC Start of Conversion (adc_soc)</h1>
//!
//! This ADC example uses ePWM1 to generate a periodic ADC SOC - ADCINT1.
//! Two channels are converted, ADCINA4 and ADCINA2.
//!
//! \b Watch \b Variables \n
//! - Voltage1[10] - Last 10 ADCRESULT0 values
//! - Voltage2[10] - Last 10 ADCRESULT1 values
//! - ConversionCount - Current result number 0-9
//! - LoopCount - Idle loop counter
//
//
//###########################################################################
// $TI Release: F2806x C/C++ Header Files and Peripheral Examples V151 $
// $Release Date: February 2, 2016 $
// $Copyright: Copyright (C) 2011-2016 Texas Instruments Incorporated -
// http://www.ti.com/ ALL RIGHTS RESERVED $
//##########################################################################
#include "Sensor.h"
#include "Characteristics.h"
#include "Threshold.h"
#include "DSP28x_Project.h"// Device Headerfile and Examples Include File
#include "Average.h"
// Prototype statements for functions found within this file.
__interrupt void adc_isr(void);
void Adc_Config(void);
#define IIRTAPS 100
#define SAMPLE_NUMBER 1000
// Global variables used in this example:
/////////////////////// == zmienne == /////////////////////////////
SENSOR termorez;
CHARACTERISTICS termorezChar;
THRESHOLD threshold;
AVERAGE average;
Uint16 ConversionCount = 0;
float temperatureBuffer[SAMPLE_NUMBER];
float averageBuffer[SAMPLE_NUMBER];
Uint16 sampleSlider = 1;
int size1 = sizeof(float);

////////////////////// == makra == ////////////////////////////////
#define V_REF_HI 3.3
#define V_REF_LO 0.0
#define ADC_RANGE 4096
///////////////////////termorezystor ////////////
#define TERMORESISTOR_GAIN ((V_REF_HI - V_REF_LO) / ADC_RANGE)
#define TERMORESISTOR_OFFSET 0
#define TERMORESISTOR_A 26.1780105
#define TERMORESISTOR_B -10.026178
#define CPU_FREQUENCY 90000000
#define PWM_CLK_PRESKALER 0.5
#define PWM_FREQUENCY 2000
#define PWM_PERIOD_COUNT ((CPU_FREQUENCY *PWM_CLK_PRESKALER) / PWM_FREQUENCY)
#define SAMPLING_PERIOD (1.0/SAMPLING_FREQUENCY)
#define FILTER_BAND 1.0
#define FILTER_OMEGA 314.159268 // 2*pi*50Hz
#define INTEGRATOR_INITIAL_CONDITION 0.0
#define RESISTANCE 10000.0
#define CAPACITANCE 0.001

/////////////////////// == main == /////////////////////////
main()
{
// Step 1. Initialize System Control:
// PLL, WatchDog, enable Peripheral Clocks
// This example function is found in the F2806x_SysCtrl.c file.
InitSysCtrl();
// Step 2. Initialize GPIO:
// This example function is found in the F2806x_Gpio.c file and
// illustrates how to set the GPIO to it's default state.
// InitGpio(); // Skipped for this example
// Step 3. Clear all interrupts and initialize PIE vector table:
// Disable CPU interrupts
DINT;
// Initialize the PIE control registers to their default state.
// The default state is all PIE interrupts disabled and flags
// are cleared.
// This function is found in the F2806x_PieCtrl.c file.
InitPieCtrl();
// Disable CPU interrupts and clear all CPU interrupt flags:
IER = 0x0000;
IFR = 0x0000;
// Initialize the PIE vector table with pointers to the shell Interrupt
// Service Routines (ISR).
// This will populate the entire table, even if the interrupt
// is not used in this example. This is useful for debug purposes.
// The shell ISR routines are found in F2806x_DefaultIsr.c.
// This function is found in F2806x_PieVect.c.
InitPieVectTable();
// Interrupts that are used in this example are re-mapped to
// ISR functions found within this file.
EALLOW; // This is needed to write to EALLOW protected register
PieVectTable.ADCINT1 = &adc_isr;
EDIS; // This is needed to disable write to EALLOW protected registers
// Step 4. Initialize all the Device Peripherals:
// This function is found in F2806x_InitPeripherals.c
// InitPeripherals(); // Not required for this example
InitAdc(); // For this example, init the ADC
AdcOffsetSelfCal();
// Step 5. User specific code, enable interrupts:
// Enable ADCINT1 in PIE
PieCtrlRegs.PIEIER1.bit.INTx1 = 1; // Enable INT 1.1 in the PIE
IER |= M_INT1; // Enable CPU Interrupt 1
// Configure ADC
EALLOW;
AdcRegs.ADCCTL2.bit.ADCNONOVERLAP = 1; // Enable non-overlap mode
AdcRegs.ADCCTL1.bit.INTPULSEPOS = 1; // ADCINT1 trips after AdcResults latch
AdcRegs.INTSEL1N2.bit.INT1E = 1; // Enabled ADCINT1
AdcRegs.INTSEL1N2.bit.INT1CONT = 0; // Disable ADCINT1 Continuous mode
AdcRegs.INTSEL1N2.bit.INT1SEL = 1; // setup EOC1 to trigger ADCINT1 to fire
AdcRegs.ADCSOC0CTL.bit.CHSEL = 4; // set SOC0 channel select to ADCINA4
AdcRegs.ADCSOC1CTL.bit.CHSEL = 2; // set SOC1 channel select to ADCINA2
AdcRegs.ADCSOC0CTL.bit.TRIGSEL = 5; // set SOC0 start trigger on EPWM1A, due to round-robin SOC0 converts first then SOC1
AdcRegs.ADCSOC1CTL.bit.TRIGSEL = 5; // set SOC1 start trigger on EPWM1A, due to round-robin SOC0 converts first then SOC1
AdcRegs.ADCSOC0CTL.bit.ACQPS = 6; // set SOC0 S/H Window to 7 ADC Clock Cycles, (6 ACQPS plus 1)
AdcRegs.ADCSOC1CTL.bit.ACQPS = 6; // set SOC1 S/H Window to 7 ADC Clock Cycles, (6 ACQPS plus 1)
EDIS;
// Assumes ePWM1 clock is already enabled in InitSysCtrl();
EPwm1Regs.ETSEL.bit.SOCAEN = 1; // Enable SOC on A group
EPwm1Regs.ETSEL.bit.SOCASEL = 4; // Select SOC from CMPA on upcount
EPwm1Regs.ETPS.bit.SOCAPRD = 1; // Generate pulse on 1st event
EPwm1Regs.CMPA.half.CMPA = 0x0080; // Set compare A value
EPwm1Regs.TBPRD = PWM_PERIOD_COUNT; // Set period for ePWM1
EPwm1Regs.TBCTL.bit.CTRMODE = 0; // count up and start
// Wait for ADC interrupt
EINT; // Enable Global interrupt INTM
ERTM; // Enable Global realtime interrupt DBGM
///////////////////////////////////// == funkcje == ////////////////////////////////////////////
sensor_init(&termorez, TERMORESISTOR_OFFSET, &AdcResult.ADCRESULT0, TERMORESISTOR_GAIN);
characteristics_init(&termorezChar, TERMORESISTOR_A, &termorez.output, TERMORESISTOR_B);
threshold_init(&threshold, &termorezChar.tempOutput);
average_init(&average, &temperatureBuffer, sizeof(temperatureBuffer)/size1);



for(;;)
	{
	}
}

__interrupt void adc_isr(void)
{

	sensor_calculate(&termorez);
	characteristics_calculate(&termorezChar);
	temperatureBuffer[ConversionCount] = termorezChar.tempOutput;
	threshold_upperLimit(&threshold);
	threshold_lowerLimit(&threshold);
	average_calculate(&average);
	averageBuffer[ConversionCount] = average.output;

	ConversionCount++;
	if (ConversionCount >= sampleSlider){
		ConversionCount = 0;
	}


	AdcRegs.ADCINTFLGCLR.bit.ADCINT1 = 1;
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
return;
}
