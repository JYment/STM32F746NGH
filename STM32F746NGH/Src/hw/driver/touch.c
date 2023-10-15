/*
 * touch.c
 *
 *  Created on: 2023. 10. 15.
 *      Author: loveh
 */


#include "touch.h"

static TS_DrvTypeDef *tsDriver;
static uint16_t tsXBoundary, tsYBoundary;
static uint8_t  tsOrientation;
static uint8_t  I2cAddress;

uint8_t touchInit(void)
{
  uint8_t status = TS_OK;
  tsXBoundary = 220;
  tsYBoundary = 720;

  /* Read ID and verify if the touch screen driver is ready */
  ft5336_ts_drv.Init(TS_I2C_ADDRESS);
  if(ft5336_ts_drv.ReadID(TS_I2C_ADDRESS) == FT5336_ID_VALUE)
  {
    /* Initialize the TS driver structure */
    tsDriver = &ft5336_ts_drv;
    I2cAddress = TS_I2C_ADDRESS;
    tsOrientation = TS_SWAP_XY;

    /* Initialize the TS driver */
    tsDriver->Start(I2cAddress);
  }
  else
  {
    status = TS_DEVICE_NOT_FOUND;
  }

  return status;
}
