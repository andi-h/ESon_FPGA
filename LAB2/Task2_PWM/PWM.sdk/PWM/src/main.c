/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"

#define GPIO_DIR_OUT ((u32) 0)
#define GPIO_DIR_IN  ((u32) 1)

#define SW_GPIO_CHANNEL  2
#define PWM_GPIO_CHANNEL 1


int main()
{
    init_platform();

    int status;

	u8 sw_state     = 0x00;
	u8 sw_state_old = 0x00;
	u32 duty_cycle  = 0x00;

	XGpio gpio_sw;
	XGpio gpio_pwm;

	xil_printf("Initialize Hardware...\r\n");

	status = XGpio_Initialize(&gpio_sw, XPAR_GPIO_0_DEVICE_ID);

	if (status != XST_SUCCESS) {
		xil_printf("Switches GPIO Initialization Failed.\r\n");
		return XST_FAILURE;
	}

	status = XGpio_Initialize(&gpio_pwm, XPAR_GPIO_0_DEVICE_ID);

	if (status != XST_SUCCESS) {
		xil_printf("PWM GPIO Initialization Failed.\r\n");
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&gpio_sw,  SW_GPIO_CHANNEL,  GPIO_DIR_IN);
	XGpio_SetDataDirection(&gpio_pwm, PWM_GPIO_CHANNEL, GPIO_DIR_OUT);

	xil_printf("Successful.\r\n");
	xil_printf("Starting Application Code...\r\n");

	while (1) {
		sw_state = XGpio_DiscreteRead(&gpio_sw, SW_GPIO_CHANNEL);

		if(sw_state != sw_state_old)
		{
			if(sw_state > 9) duty_cycle = 9 * 110000;
			else			 duty_cycle = sw_state * 110000;

			XGpio_DiscreteWrite(&gpio_pwm, PWM_GPIO_CHANNEL, duty_cycle);

			xil_printf("Switch State changed - Binary: %i Duty-Cycle: %i\r\n", sw_state, duty_cycle);
			sw_state_old = sw_state;
		}
	}

    cleanup_platform();
    return 0;
}
