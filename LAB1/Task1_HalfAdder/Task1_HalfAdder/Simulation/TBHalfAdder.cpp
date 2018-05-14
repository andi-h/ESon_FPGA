/*
 * TBHalfAdder.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#include "TBHalfAdder.h"

TB_HalfAdder::TB_HalfAdder(sc_module_name name) :
clk("clk"),
a("output_a"),
b("output_b"),
s("input_s"),
c("input_c")
{
	cout << "Start Testbench...\n";
	SC_CTHREAD(stim, clk.pos());
}

void TB_HalfAdder::stim() {
	a.write(SC_LOGIC_0);
	b.write(SC_LOGIC_0);

	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_0);
	assert(c.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_1);
	assert(c.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_0);
	b.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_1);
	assert(c.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_0);
	assert(c.read() == SC_LOGIC_1);
}
