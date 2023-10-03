/*
 * led.c
 *
 *  Created on: Aug 1, 2023
 *      Author: jymen
 */


#include "led.h"
#include "cli.h"


typedef struct
{
	GPIO_TypeDef *port;
	uint16_t			pin;
	GPIO_PinState on_state;
	GPIO_PinState off_state;
} led_tbl_t;

#ifdef _USE_HW_CLI
static void cliLed(cli_args_t *args);
#endif


led_tbl_t led_tbl[LED_MAX_CH] =
	{
		{GPIOI, GPIO_PIN_1, GPIO_PIN_RESET, GPIO_PIN_SET},
		{GPIOK, GPIO_PIN_3, GPIO_PIN_RESET, GPIO_PIN_SET},
	};


bool ledInit(void)
{
	bool ret = true;
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;

	for(int i=0; i<LED_MAX_CH; i++)
	{
		GPIO_InitStruct.Pin = led_tbl[i].pin;
		HAL_GPIO_Init(led_tbl[i].port, &GPIO_InitStruct);

		ledOff(i);
	}

#ifdef _USE_HW_CLI
	cliAdd("led", cliLed);
#endif


	return ret;
}

void ledOn(uint8_t ch)
{
	if(ch >= LED_MAX_CH)		return;

	HAL_GPIO_WritePin(led_tbl[ch].port, led_tbl[ch].pin, led_tbl[ch].on_state);
}

void ledOff(uint8_t ch)
{
	if(ch >= LED_MAX_CH)		return;

	HAL_GPIO_WritePin(led_tbl[ch].port, led_tbl[ch].pin, led_tbl[ch].off_state);
}

void ledAllOff(void)
{
	for(int i=0; i<LED_MAX_CH-1; i++)
	{
		HAL_GPIO_WritePin(led_tbl[i].port, led_tbl[i].pin, led_tbl[i].off_state);
	}
}


void ledToggle(uint8_t ch)
{
	if(ch >= LED_MAX_CH)		return;

	HAL_GPIO_TogglePin(led_tbl[ch].port, led_tbl[ch].pin);
}





#ifdef _USE_HW_CLI

void cliLed(cli_args_t *args)
{
	bool ret = false;

	if(args->argc == 3 && args->isStr(0, "toggle") == true)
	{
		uint8_t  led_ch;
		uint32_t toggle_time;
		uint32_t pre_time;

		led_ch      = (uint8_t)args->getData(1);
		toggle_time = (uint32_t)args->getData(2);

		if(led_ch > 0)
		{
			led_ch--;
		}

		pre_time = millis();
		while(cliKeepLoop())
		{
			if(millis() - pre_time >= toggle_time)
			{
				pre_time = millis();

				ledToggle(led_ch);
			}
		}

		ret = true;
	}

	if(ret != true)
	{
		cliPrintf("led toggle ch[1~%d] time_ms\n", LED_MAX_CH);
	}
}

#endif
