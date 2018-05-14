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
	igs("igs"), // instantiate the module HalfAdder with name "igs"
	TB_igs("TB_igs") // instantiate the module TB_HalfAdder with name "TB_igs"
{
	//connecting signals with ImageGrayScaler module
	igs.clk(clk);
	igs.red(s_red);
	igs.green(s_green);
	igs.blue(s_blue);
	igs.gray(s_gray);

	//connecting signals with TB_ImageGrayScaler module
	TB_igs.clk(clk);
	TB_igs.red(s_red);
	TB_igs.green(s_green);
	TB_igs.blue(s_blue);
	TB_igs.gray(s_gray);
}
