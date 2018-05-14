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
	ha("ha1"), // instantiate the module HalfAdder with name "ha1"
	TB_ha1("TB") // instantiate the module TB_HalfAdder with name "TB"
{

	//connecting signals with HalfAdder module
	ha.a(s_a);
	ha.b(s_b);
	ha.s(s_s);
	ha.c(s_c);

	//connecting signals with TB_HalfAdder module
	TB_ha1.clk(clk);
	TB_ha1.a(s_a);
	TB_ha1.b(s_b);
	TB_ha1.s(s_s);
	TB_ha1.c(s_c);
}
