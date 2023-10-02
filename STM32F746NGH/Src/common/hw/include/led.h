/*
 * led.h
 *
 *  Created on: Aug 1, 2023
 *      Author: jymen
 */

#ifndef COMMON_HW_INCLUDE_LED_H_
#define COMMON_HW_INCLUDE_LED_H_


#include "hw_def.h"


#ifdef _USE_HW_LED

#define LED_MAX_CH				HW_LED_MAX_CH


bool ledInit(void);
void ledOn(uint8_t ch);
void ledOff(uint8_t ch);
void ledAllOff(void);
void ledToggle(uint8_t ch);



#endif



#endif /* COMMON_HW_INCLUDE_LED_H_ */
