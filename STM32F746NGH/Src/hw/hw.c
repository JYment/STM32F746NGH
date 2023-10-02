/*
 * hw.c
 *
 *  Created on: Oct 2, 2023
 *      Author: loveh
 */


#include "hw.h"




void hwInit(void)
{
  bspInit();

  ledInit();
  uartInit();
}
