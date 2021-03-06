/*
* HalfAdder.cpp
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/
#include <systemc.h>
#include "HalfAdder.h"

//Constructor definition of the HalfAdder Module
HalfAdder::HalfAdder(sc_module_name name) :
	// define names for the input and output signals
	a("input_a"),
	b("input_b"),
	s("output_s"),
	c("output_c")
{
	//define output method as SC_Method with sensitivity list
	SC_METHOD(output)
		sensitive << a << b;
}

// define output function
void HalfAdder::output() {
	s.write(a.read() xor b.read());
	c.write(a.read() & b.read());
}
