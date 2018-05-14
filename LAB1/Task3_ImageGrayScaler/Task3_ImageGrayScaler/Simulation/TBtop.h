/*
 * TBtop.h
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#ifndef TBTOP_H_
#define TBTOP_H_

#include <systemc.h>

#include "../modules/ImageGrayScaler.h"
#include "TBImageGrayScaler.h"

// Top level module of the ImageGrayScaler Testbench
class TB_top : public sc_module {

public:
	// port declaration
	sc_in <bool> clk;

	//Used Module instantiation
	ImageGrayScaler igs;
	TB_ImageGrayScaler TB_igs;

	//define Class as SC Process
	SC_HAS_PROCESS(TB_top);
	TB_top(sc_module_name name);

	//Signals for connecting the ImageGrayScaler module
	// with the TB_ImageGrayScaler module
	sc_signal< sc_uint <8>> s_red;
	sc_signal< sc_uint <8>> s_green;
	sc_signal< sc_uint <8>> s_blue;
	sc_signal< sc_uint <8>> s_gray;

};

#endif /* TBTOP_H_ */
