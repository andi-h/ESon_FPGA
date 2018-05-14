/*
* TBAdder.cpp
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/

#include <scv.h>
#include "TBAdder.h"

TB_Adder::TB_Adder(sc_module_name name) :
	clk("clk"),
	a("output_a"),
	b("output_b"),
	s("input_s"),
	c_out("input_c_out")
{
	a.init(ADDER_LENGTH);
	b.init(ADDER_LENGTH);
	s.init(ADDER_LENGTH);
	cout << "Start Testbench for Adder...\n";
	SC_CTHREAD(stim, clk.pos());
}

void TB_Adder::stim() {
	sc_vector <scv_smart_ptr <bool>> random_bits;
	int result;
	int a_int = 0;
	int b_int = 0;

	random_bits.init(ADDER_LENGTH);

	// generate random numbers
	for (int i = 0; i < ADDER_LENGTH; i++)
	{
		random_bits[i]->next();
		a[i] = (sc_logic)random_bits[i]->read();
		a_int += (random_bits[i]->read()) << i;

		random_bits[i]->next();
		b[i] = (sc_logic)random_bits[i]->read();
		b_int += (random_bits[i]->read()) << i;
	}

	result = a_int + b_int;

	// check result
	wait(2);
	for (int i = 0; i < ADDER_LENGTH; i++)
	{
		if (result & (1 << i))
		{
			assert(s[i].read() == SC_LOGIC_1);
		}
		else
		{
			assert(s[i].read() == SC_LOGIC_0);
		}
	}
	if (result >= (1 << ADDER_LENGTH))
	{
		assert(c_out.read() == SC_LOGIC_1);
	}
	else
	{
		assert(c_out.read() == SC_LOGIC_0);
	}
}
