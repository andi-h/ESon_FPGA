/*
* ImageGrayScaler.h
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/

#ifndef IMAGEGRAYSCALER_H_
#define IMAGEGRAYSCALER_H_

#include "fifo_channel.h"

SC_MODULE(ImageGrayScaler)
{
	sc_in<bool> clk;

	typedef struct RGBTriplet_s
	{
		sc_uint<8> red;
		sc_uint<8> green;
		sc_uint<8> blue;
	} RGBTriplet_t;

	sc_port< sc_fifo_in_if< sc_uint<24>>> data_in;
	sc_port< sc_fifo_out_if< sc_uint<8>>>  data_out;

	void gray_scale();

	SC_CTOR(ImageGrayScaler)
	{
		SC_CTHREAD(gray_scale, clk.pos());
	}
};

#endif /* IMAGEGRAYSCALER_H_ */
