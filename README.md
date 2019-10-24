# temperature-meter
An application for Texas Instruments MCU F28069M microcontroller

It is an application created for Analogue Interfaces class. The project was developed in Code Composer Studio. It is based on an example, so it was easier to modify. It is an C application that takes the ADC data and transforms it into the temperature and then displays information in GUI, created also in CCS. There is also a threshold implementation, so the user can give the applicatio the values of lower and higher threshold. 

Each structure is written in a way so it resembles the OOP. Each structure has its own initialization function, so in case you want to add more sensors, you can use prepared "classes" and give only the parameters you have. 
