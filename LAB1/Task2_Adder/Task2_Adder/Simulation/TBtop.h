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
#include "../modules/FullAdder.h"
#include "../modules/Adder.h"
#include "TBHalfAdder.h"
#include "TBFullAdder.h"
#include "TBAdder.h"

// Top level module of the HalfAdder, FullAdder and Adder Testbenches
class TB_top : public sc_module {

public:
	// port declaration
	sc_in <bool> clk;

	//Used Module instantiation
	HalfAdder half_adder;
	TB_HalfAdder TB_half_adder;

	FullAdder full_adder;
	TB_FullAdder TB_full_adder;

	Adder adder;
	TB_Adder TB_adder;

	//define Class as SC Process
	SC_HAS_PROCESS(TB_top);
	TB_top(sc_module_name name);

	//Signals for connecting the modules
	sc_signal <sc_logic> s_ha_a;
	sc_signal <sc_logic> s_ha_b;
	sc_signal <sc_logic> s_ha_s;
	sc_signal <sc_logic> s_ha_c;
	sc_signal <sc_logic> s_fa_a;
	sc_signal <sc_logic> s_fa_b;
	sc_signal <sc_logic> s_fa_s;
	sc_signal <sc_logic> s_fa_c_in;
	sc_signal <sc_logic> s_fa_c_out;
	sc_vector < sc_signal <sc_logic>> s_a_a;
	sc_vector < sc_signal <sc_logic>> s_a_b;
	sc_vector < sc_signal <sc_logic>> s_a_s;
	sc_signal <sc_logic> s_a_c_out;
};

#endif /* TBTOP_H_ */
