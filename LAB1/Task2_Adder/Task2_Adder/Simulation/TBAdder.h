/*
* TBAdder.h
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/

#ifndef TBADDER_H_
#define TBADDER_H_

#include <systemc.h>
#include "../Modules/Adder.h"

//Testbench of the Adder
class TB_Adder : public sc_module {

public:
	//port definition
	sc_in <bool> clk;
	sc_vector<sc_out<sc_logic>> a;
	sc_vector<sc_out<sc_logic>> b;

	sc_vector<sc_in<sc_logic>> s;
	sc_in <sc_logic> c_out;

	//define class as SystemC Module
	SC_HAS_PROCESS(TB_Adder);
	//declaration of the constructor
	TB_Adder(sc_module_name name);

private:
	//stimuli function declaration
	void stim();
};

#endif /* TBADDER_H_ */
