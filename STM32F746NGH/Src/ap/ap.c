/*
 * ap.c
 *
 *  Created on: Oct 2, 2023
 *      Author: loveh
 */


#include "ap.h"



void apInit(void)
{
  cliOpen(_DEF_UART1, 9600);    //USB
  i2cOpen(_DEF_I2C1, I2C_FREQ_100KHz);
}

void apMain(void)
{
  uint32_t pre_time;

  pre_time = millis();
  while(1)
  {
    if(millis() - pre_time >= 1000)
    {
      pre_time = millis();
      ledToggle(_DEF_LED1);
//      ledToggle(_DEF_BACKLIGHT);
    }

    cliMain();
  }
}
