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
      ledToggle(_DEF_BACKLIGHT);
    }

    if(cliAvailable() > 0)
    {
      uint8_t rx_data;
      rx_data = cliRead();

      if(rx_data == '1')
      {
        uint8_t buf[32];

        cliPrintf("Read...\n");

        flashRead(0x8000000 + (60 * 1024), buf, 32);

        for(int i=0; i<32; i++)
        {
          cliPrintf("0x%X : 0x%X\n", 0x8000000 + (60 * 1024) + i, buf[i]);
        }
      }

      if(rx_data == '2')
      {
        cliPrintf("Erase...\n");

        if(flashErase(0x8000000 + (60 * 1024), 32) == true)
        {
          cliPrintf("Erase OK\n");
        }
        else
        {
          cliPrintf("Erase Failed\n");
        }
      }

      if(rx_data == '3')
      {
        uint8_t buf[32];

        for(int i=0; i<32; i++)
        {
          buf[i] = i;
        }

        cliPrintf("Write...\n");
        if(flashWrite(0x8000000 + (60 * 1024), buf, 32) == true)
        {
          cliPrintf("Write OK\n");
        }
        else
        {
          cliPrintf("Write Failed\n");
        }
      }
    }

//    cliMain();
  }
}
