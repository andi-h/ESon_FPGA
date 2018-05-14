/*
* TBFullAdder.h
*
*  Created on: Apr 24, 2018
*      Author: Andreas Hirtenlehner
*/

#ifndef TBFULLADDER_H_
#define TBFULLADDER_H_

#include <systemc.h>
//Testbench of the FullAdder
class TB_FullAdder : public sc_module {

public:
	//port definition
	sc_in <bool> clk;
	sc_out <sc_logic> a;
	sc_out <sc_logic> b;
	sc_out <sc_logic> c_in;

	sc_in <sc_logic> s;
	sc_in <sc_logic> c_out;

	//define class as SystemC Module
	SC_HAS_PROCESS(TB_FullAdder);
	//declaration of the constructor
	TB_FullAdder(sc_module_name name);

private:
	//stimuli function declaration
	void stim();
};

#endif /* TBFULLADDER_H_ */
