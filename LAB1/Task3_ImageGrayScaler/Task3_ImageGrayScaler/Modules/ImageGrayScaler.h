/*
* ImageGrayScaler.h
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/

#ifndef IMAGEGRAYSCALER_H_
#define IMAGEGRAYSCALER_H_

SC_MODULE(ImageGrayScaler)
{
	sc_in<bool> clk;
	sc_in< sc_uint <8>> red;
	sc_in< sc_uint <8>> green;
	sc_in< sc_uint <8>> blue;

	sc_out< sc_uint <8>> gray;

	void gray_scale();

	SC_CTOR(ImageGrayScaler)
	{
		SC_CTHREAD(gray_scale, clk.pos());
	}
};

#endif /* IMAGEGRAYSCALER_H_ */
