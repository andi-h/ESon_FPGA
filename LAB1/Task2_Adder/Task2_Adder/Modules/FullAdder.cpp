/*
*  FullAdder.cpp
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/
#include <systemc.h>
#include "FullAdder.h"

//Constructor definition of the FullAdder Module
FullAdder::FullAdder(sc_module_name name) :
	// define names for the input and output signals
	a("input_a"),
	b("input_b"),
	c_in("input_c_in"),
	s("output_s"),
	c_out("output_c_out"),
	ha1("ha1"),
	ha2("ha2")
{
	ha1.a(a);
	ha1.b(b);
	ha1.s(s_s1);
	ha1.c(s_c1);

	ha2.a(s_s1);
	ha2.b(c_in);
	ha2.s(s);
	ha2.c(s_c2); 

	//define output method as SC_Method with sensitivity list
	SC_METHOD(output)
		sensitive << s_c1 << s_c2;
}

// define output function
void FullAdder::output() {
	c_out.write(s_c1 | s_c2);
}
