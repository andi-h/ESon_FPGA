/*
 * TBtop.h
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#ifndef TBTOP_H_
#define TBTOP_H_

#include <systemc.h>

#include "../modules/HalfAdder.h"
#include "TBHalfAdder.h"

// Top level module of the Multiplexer Testbench
class TB_top : public sc_module {

public:
	// port declaration
	sc_in <bool> clk;

	//Used Module instantiation
	HalfAdder ha;
	TB_HalfAdder TB_ha1;

	//define Class as SC Process
	SC_HAS_PROCESS(TB_top);
	TB_top(sc_module_name name);

	//Signals for connecting the HalfAdder module
	// with the TB_HalfAdder module
	sc_signal <sc_logic> s_a;
	sc_signal <sc_logic> s_b;
	sc_signal <sc_logic> s_s;
	sc_signal <sc_logic> s_c;
};

#endif /* TBTOP_H_ */
