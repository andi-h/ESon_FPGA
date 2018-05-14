/*
 * TBHalfAdder.h
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#ifndef TBIMAGEGRAYSCALER_H_
#define TBIMAGEGRAYSCALER_H_

#include <systemc.h>
#include <Windows.h>
//Testbench of the ImageGrayScaler
class TB_ImageGrayScaler : public sc_module{

public:
	//port definition
	sc_in <bool> clk;
	sc_out< sc_uint <8>> red;
	sc_out< sc_uint <8>> green;
	sc_out< sc_uint <8>> blue;

	sc_in< sc_uint <8>> gray;

	//define class as SystemC Module
	SC_HAS_PROCESS(TB_ImageGrayScaler);
	//declaration of the constructor
	TB_ImageGrayScaler(sc_module_name name);

	typedef struct RGBTriplet_s
	{
		BYTE red;
		BYTE green;
		BYTE blue;
	} RGBTriplet_t;

private:
	//stimuli function declaration
	void stim();
	RGBTriplet_t* bmp2rgb(int* width, int* height, long* size, LPCTSTR file_name);
	bool rgb2bmp(BYTE* buffer, int width, int height, LPCTSTR file_name);
};

#endif /* TBIMAGEGRAYSCALER_H_ */
