/*
 * bsp.h
 *
 *  Created on: Oct 2, 2023
 *      Author: loveh
 */

#ifndef BSP_BSP_H_
#define BSP_BSP_H_


#include "def.h"

#include "stm32f7xx_hal.h"
#include "usb_device.h"


void bspInit(void);

void delay(uint32_t ms);
uint32_t millis(void);
long map(long x, long in_min, long in_max, long out_min, long out_max);

void Error_Handler(void);


#endif /* BSP_BSP_H_ */
