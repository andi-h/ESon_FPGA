/*
*  Adder.cpp
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/
#include <systemc.h>
#include "Adder.h"

//Constructor definition of the Adder Module
Adder::Adder(sc_module_name name) :
	// define names for the input and output signals
	clk("clk"),
	a("input_a"),
	b("input_b"),
	s("output_s"),
	c_out("output_c_out"),
	full_adder("full_adder")
{
	a.init(ADDER_LENGTH);
	b.init(ADDER_LENGTH);
	s.init(ADDER_LENGTH);
	s_s.init(ADDER_LENGTH);
	s_c_in.init(ADDER_LENGTH);
	s_c_out.init(ADDER_LENGTH);
	full_adder.init(ADDER_LENGTH);

	for (int i = 0; i < ADDER_LENGTH; i++)
	{
		full_adder[i].a(a[i]);
		full_adder[i].b(b[i]);
		full_adder[i].s(s_s[i]);
		full_adder[i].c_in(s_c_in[i]);
		full_adder[i].c_out(s_c_out[i]);
	}

	//define output method as SC_Method with sensitivity list
	SC_THREAD(output)
		sensitive << clk.pos();

	SC_METHOD(carry)
		for (int i = 0; i < ADDER_LENGTH; i++)
		{
			sensitive << s_c_out[i];
		}
}

// write to output
void Adder::output() {
	while (true) {
		for (int i = 0; i < ADDER_LENGTH; i++)
		{
			s[i].write(s_s[i].read());
		}
		wait();
	}
}

// calc carry
void Adder::carry() {
	s_c_in[0].write(SC_LOGIC_0);
	c_out.write(s_c_out[ADDER_LENGTH-1].read());

	for (int i = 0; i < ADDER_LENGTH-1; i++)
	{
		s_c_in[i + 1] = s_c_out[i];
	}
}
