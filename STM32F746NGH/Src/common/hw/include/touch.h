/*
 * touch.h
 *
 *  Created on: 2023. 10. 15.
 *      Author: loveh
 */

#ifndef COMMON_HW_INCLUDE_TOUCH_H_
#define COMMON_HW_INCLUDE_TOUCH_H_


#include "hw_def.h"
#include "ft5336.h"


#ifdef _USE_HW_TOUCH


#define TS_I2C_ADDRESS                   ((uint16_t)0x70)


/** @brief With FT5336 : maximum 5 touches detected simultaneously
  */
#define TS_MAX_NB_TOUCH                 ((uint32_t) FT5336_MAX_DETECTABLE_TOUCH)

#define TS_NO_IRQ_PENDING               ((uint8_t) 0)
#define TS_IRQ_PENDING                  ((uint8_t) 1)

#define TS_SWAP_NONE                    ((uint8_t) 0x01)
#define TS_SWAP_X                       ((uint8_t) 0x02)
#define TS_SWAP_Y                       ((uint8_t) 0x04)
#define TS_SWAP_XY                      ((uint8_t) 0x08)

/**
  * @}
  */

/** @defgroup STM32746G_DISCOVERY_TS_Exported_Types  STM32746G_DISCOVERY_TS Exported Types
  * @{
  */
/**
*  @brief TS_StateTypeDef
*  Define TS State structure
*/
typedef struct
{
  uint8_t  touchDetected;                /*!< Total number of active touches detected at last scan */
  uint16_t touchX[TS_MAX_NB_TOUCH];      /*!< Touch X[0], X[1] coordinates on 12 bits */
  uint16_t touchY[TS_MAX_NB_TOUCH];      /*!< Touch Y[0], Y[1] coordinates on 12 bits */

#if (TS_MULTI_TOUCH_SUPPORTED == 1)
  uint8_t  touchWeight[TS_MAX_NB_TOUCH]; /*!< Touch_Weight[0], Touch_Weight[1] : weight property of touches */
  uint8_t  touchEventId[TS_MAX_NB_TOUCH];     /*!< Touch_EventId[0], Touch_EventId[1] : take value of type @ref TS_TouchEventTypeDef */
  uint8_t  touchArea[TS_MAX_NB_TOUCH];   /*!< Touch_Area[0], Touch_Area[1] : touch area of each touch */
  uint32_t gestureId; /*!< type of gesture detected : take value of type @ref TS_GestureIdTypeDef */
#endif  /* TS_MULTI_TOUCH_SUPPORTED == 1 */

} TS_StateTypeDef;


typedef enum
{
  TS_OK                = 0x00, /*!< Touch Ok */
  TS_ERROR             = 0x01, /*!< Touch Error */
  TS_TIMEOUT           = 0x02, /*!< Touch Timeout */
  TS_DEVICE_NOT_FOUND  = 0x03  /*!< Touchscreen device not found */
} TS_StatusTypeDef;



uint8_t touchInit(void);




#endif

#endif /* COMMON_HW_INCLUDE_TOUCH_H_ */


