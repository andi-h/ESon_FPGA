/*
* ImageGrayScaler.cpp
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/
#include "systemc.h"
#include "ImageGrayScaler.h"

void ImageGrayScaler::gray_scale()
{
	while (true)
	{
		sc_uint<24> data = data_in->read();
		RGBTriplet_t rgb_data;

		rgb_data.red   = (data & 0x0000FF) >> 0;
		rgb_data.green = (data & 0x00FF00) >> 8;
		rgb_data.blue  = (data & 0xFF0000) >> 16;

		sc_uint<8> gray = (0.2989 * rgb_data.red.to_double() + 0.5870 * rgb_data.green.to_double() + 0.1140 * rgb_data.blue.to_double());

		data_out->write(gray);

		wait(1);
	}
}
