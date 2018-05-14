/*
 * main.c
 *
 *  Created on: 14.05.2018
 *      Author: Andreas Hirtenlehner
 */

#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

#define GPIO_DIR_OUT ((u32) 0)
#define GPIO_DIR_IN  ((u32) 1)

#define SW_GPIO_CHANNEL  1
#define LED_GPIO_CHANNEL 2

int main(void)
{
	int status;

	u8 sw_state     = 0x00;
	u8 sw_state_old = 0x00;
	u8 gray_code    = 0x00;

	XGpio gpio_sw;
	XGpio gpio_led;

	xil_printf("Initialize Hardware...\r\n");

	status = XGpio_Initialize(&gpio_sw, XPAR_GPIO_0_DEVICE_ID);

	if (status != XST_SUCCESS) {
		xil_printf("Switches GPIO Initialization Failed.\r\n");
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&gpio_led, XPAR_GPIO_0_DEVICE_ID);

	if (status != XST_SUCCESS) {
		xil_printf("LED GPIO Initialization Failed.\r\n");
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&gpio_sw,  SW_GPIO_CHANNEL,  GPIO_DIR_IN);
	XGpio_SetDataDirection(&gpio_led, LED_GPIO_CHANNEL, GPIO_DIR_OUT);

	xil_printf("Successful.\r\n");
	xil_printf("Starting Application Code...\r\n");

	while (1) {
		sw_state = XGpio_DiscreteRead(&gpio_sw, SW_GPIO_CHANNEL);

		if(sw_state != sw_state_old)
		{
			XGpio_DiscreteWrite(&gpio_led, LED_GPIO_CHANNEL, sw_state);
			gray_code = (sw_state >> 1) ^ sw_state;
			xil_printf("Switch State changed - Binary: %i Gray Code: %i\r\n", sw_state, gray_code);
			sw_state_old = sw_state;
		}
	}

	return XST_SUCCESS;
}
