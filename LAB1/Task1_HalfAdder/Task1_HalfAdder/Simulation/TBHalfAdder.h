/*
 * TBHalfAdder.h
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#ifndef TBHALFADDER_H_
#define TBHALFADDER_H_

#include <systemc.h>
//Testbench of the HalfAdder
class TB_HalfAdder : public sc_module{

public:
	//port definition
	sc_in <bool> clk;
	sc_out <sc_logic> a;
	sc_out <sc_logic> b;

	sc_in <sc_logic> s;
	sc_in <sc_logic> c;

	//define class as SystemC Module
	SC_HAS_PROCESS(TB_HalfAdder);
	//declaration of the constructor
	TB_HalfAdder(sc_module_name name);

private:
	//stimuli function declaration
	void stim();
};

#endif /* TBHALFADDER_H_ */
