/*
 * tb_main.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#include <systemc.h>
#include "TBtop.h"

// main method of SystemC
int sc_main(int argc, char ** arv) {
	//define clock of the system
	sc_clock clk("ClockSignal", 20, SC_NS);

	// instantiate Testbench top module
	TB_top top("top");
	top.clk(clk);

	// Setup Tracefile
	sc_trace_file* tf;
	tf = sc_create_vcd_trace_file("av_first");	// create new trace file
	tf->set_time_unit(1, SC_NS);			// set time resolution to 1 nsec

	// trace each signal
	sc_trace(tf, top.clk, "clk");
	sc_trace(tf, top.s_ha_a, "s_ha_a");
	sc_trace(tf, top.s_ha_b, "s_ha_b");
	sc_trace(tf, top.s_ha_s, "s_ha_s");
	sc_trace(tf, top.s_ha_c, "s_ha_c");
	sc_trace(tf, top.s_fa_a, "s_fa_a");
	sc_trace(tf, top.s_fa_b, "s_fa_b");
	sc_trace(tf, top.s_fa_s, "s_fa_s");
	sc_trace(tf, top.s_fa_c_in, "s_fa_c_in");
	sc_trace(tf, top.s_fa_c_out, "s_fa_c_out");

	for (int i = ADDER_LENGTH-1; i >= 0; i--)
	{
		sc_trace(tf, top.s_a_a[i], "s_a_a");
	}
	for (int i = ADDER_LENGTH - 1; i >= 0; i--)
	{
		sc_trace(tf, top.s_a_b[i], "s_a_b");
	}
	for (int i = ADDER_LENGTH - 1; i >= 0; i--)
	{
		sc_trace(tf, top.s_a_s[i], "s_a_s");
	}
	sc_trace(tf, top.s_a_c_out, "s_a_c_out");

	// start simulation
	sc_start(200, SC_NS);
	sc_close_vcd_trace_file(tf);	// close trace file

	return 0;
}




