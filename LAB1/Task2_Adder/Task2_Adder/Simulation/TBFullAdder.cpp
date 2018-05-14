/*
* TBFullAdder.cpp
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/

#include "TBFullAdder.h"

TB_FullAdder::TB_FullAdder(sc_module_name name) :
	clk("clk"),
	a("output_a"),
	b("output_b"),
	c_in("outout_c_in"),
	s("input_s"),
	c_out("input_c_out")
{
	cout << "Start Testbench for FullAdder...\n";
	SC_CTHREAD(stim, clk.pos());
}

void TB_FullAdder::stim() {
	a.write(SC_LOGIC_0);
	b.write(SC_LOGIC_0);
	c_in.write(SC_LOGIC_0);

	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_0);
	assert(c_out.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_1);
	assert(c_out.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_0);
	b.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_1);
	assert(c_out.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_0);
	assert(c_out.read() == SC_LOGIC_1);

	a.write(SC_LOGIC_0);
	b.write(SC_LOGIC_0);
	c_in.write(SC_LOGIC_1);

	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_1);
	assert(c_out.read() == SC_LOGIC_0);

	a.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_0);
	assert(c_out.read() == SC_LOGIC_1);

	a.write(SC_LOGIC_0);
	b.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_0);
	assert(c_out.read() == SC_LOGIC_1);

	a.write(SC_LOGIC_1);
	wait(1); // wait for one clock cycle
	assert(s.read() == SC_LOGIC_1);
	assert(c_out.read() == SC_LOGIC_1);
}
