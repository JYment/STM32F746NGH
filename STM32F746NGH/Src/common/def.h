/*
 * def.h
 *
 *  Created on: Oct 2, 2023
 *      Author: loveh
 */

#ifndef COMMON_DEF_H_
#define COMMON_DEF_H_



#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>




#define _DEF_LED1             0
#define _DEF_BACKLIGHT        1



#define _DEF_UART1            0
#define _DEF_UART2            1
#define _DEF_UART3            2
#define _DEF_UART4            3


#define _DEF_I2C1             0
#define _DEF_I2C2             1
#define _DEF_I2C3             2

#define constrain(amt,low,high) ((amt)<(low)?(low):((amt)>(high)?(high):(amt)))


#endif /* COMMON_DEF_H_ */
