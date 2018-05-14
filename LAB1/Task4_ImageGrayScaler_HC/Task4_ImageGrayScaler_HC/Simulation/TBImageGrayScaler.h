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
#include "../Modules/ImageGrayScaler.h"

//Testbench of the ImageGrayScaler
class TB_ImageGrayScaler : public sc_module{

public:
	//port definition
	sc_in <bool> clk;

	sc_port< sc_fifo_out_if< sc_uint<24>>> data_out;
	sc_port< sc_fifo_in_if< sc_uint<8>>> data_in;

	//define class as SystemC Module
	SC_HAS_PROCESS(TB_ImageGrayScaler);
	//declaration of the constructor
	TB_ImageGrayScaler(sc_module_name name);

private:
	//stimuli function declaration
	void stim();
	ImageGrayScaler::RGBTriplet_t* bmp2rgb(int* width, int* height, long* size, LPCTSTR file_name);
	bool rgb2bmp(BYTE* buffer, int width, int height, LPCTSTR file_name);
};

#endif /* TBIMAGEGRAYSCALER_H_ */
