/*
 * TBtop.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#include "TBtop.h"

// Top level module of the HalfAdder Testbench
TB_top::TB_top(sc_module_name name) : 
	clk("clk"),
	half_adder("half_adder"), // instantiate the module HalfAdder with name "half_adder"
	TB_half_adder("TB_half_adder"), // instantiate the module TB_HalfAdder with name "TB_TB_half_adder"
	full_adder("full_adder"), 
	TB_full_adder("TB_full_adder"),
	adder("adder"),
	TB_adder("TB_adder")
{
	s_a_a.init(ADDER_LENGTH);
	s_a_b.init(ADDER_LENGTH);
	s_a_s.init(ADDER_LENGTH);

	//connecting signals with HalfAdder module
	half_adder.a(s_ha_a);
	half_adder.b(s_ha_b);
	half_adder.s(s_ha_s);
	half_adder.c(s_ha_c);

	//connecting signals with TB_HalfAdder module
	TB_half_adder.clk(clk);
	TB_half_adder.a(s_ha_a);
	TB_half_adder.b(s_ha_b);
	TB_half_adder.s(s_ha_s);
	TB_half_adder.c(s_ha_c);

	//connecting signals with FullAdder module
	full_adder.a(s_fa_a);
	full_adder.b(s_fa_b);
	full_adder.s(s_fa_s);
	full_adder.c_in(s_fa_c_in);
	full_adder.c_out(s_fa_c_out);

	//connecting signals with TB_FullAdder module
	TB_full_adder.clk(clk);
	TB_full_adder.a(s_fa_a);
	TB_full_adder.b(s_fa_b);
	TB_full_adder.s(s_fa_s);
	TB_full_adder.c_in(s_fa_c_in);
	TB_full_adder.c_out(s_fa_c_out);

	//connecting signals with Adder module
	adder.clk(clk);
	adder.a(s_a_a);
	adder.b(s_a_b);
	adder.s(s_a_s);
	adder.c_out(s_a_c_out);
		
	//connecting signals with TB_Adder module
	TB_adder.clk(clk);
	TB_adder.a(s_a_a);
	TB_adder.b(s_a_b);
	TB_adder.s(s_a_s);
	TB_adder.c_out(s_a_c_out);
}
