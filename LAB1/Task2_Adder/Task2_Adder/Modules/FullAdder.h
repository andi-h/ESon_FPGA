/*
*  FullAdder.h
*
*  Created on: Apr 24, 2018
*
*/

#ifndef FULLADDER_H_
#define FULLADDER_H_

#include <systemc.h>
#include "HalfAdder.h"

class FullAdder : public sc_module {

public:
	//input and output port definition
	sc_in <sc_logic> a;
	sc_in <sc_logic> b;
	sc_in <sc_logic> c_in;

	sc_out <sc_logic> s;
	sc_out <sc_logic> c_out;

	//Used Module instantiation
	HalfAdder ha1, ha2;

	//SystemC Macro for defining Class with Process
	SC_HAS_PROCESS(FullAdder);

	//declare Constructor with parameter SystemC Module name
	FullAdder(sc_module_name name);

private:
	//signal declaration
	sc_signal <sc_logic> s_s1;
	sc_signal <sc_logic> s_c1;
	sc_signal <sc_logic> s_c2;

	//declare other functions of the Module
	//SystemC processes are of type void and don't
	//have parameters
	void output();
};

#endif /* FULLADDER_H_ */
