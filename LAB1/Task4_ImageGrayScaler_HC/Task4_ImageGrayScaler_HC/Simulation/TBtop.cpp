/*
 * TBtop.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#include "TBtop.h"

// Top level module of the HalfAdder Testbench
TB_top::TB_top(sc_module_name name) : 
	clk("clk"),
	rgb_fifo("rgb_fifo"),
	gray_fifo("gray_fifo"),
	igs("igs"), // instantiate the module HalfAdder with name "igs"
	TB_igs("TB_igs") // instantiate the module TB_HalfAdder with name "TB_igs"
{
	//connecting signals with ImageGrayScaler module
	igs.clk(clk);
	igs.data_in(rgb_fifo);
	igs.data_out(gray_fifo);

	//connecting signals with TB_ImageGrayScaler module
	TB_igs.clk(clk);
	TB_igs.data_in(gray_fifo);
	TB_igs.data_out(rgb_fifo);
}
