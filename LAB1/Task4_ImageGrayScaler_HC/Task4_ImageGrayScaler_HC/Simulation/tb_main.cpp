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
	sc_core::sc_report_handler::set_actions("/IEEE_Std_1666/deprecated",
		sc_core::SC_DO_NOTHING);

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

	// start simulation
	sc_start(8000, SC_US);
	sc_close_vcd_trace_file(tf);	// close trace file

	return 0;
}
