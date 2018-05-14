/*
* HalfAdder.h
*
*  Created on: Apr 24, 2018
*
*/

#ifndef HALFADDER_H_
#define HALFADDER_H_

class HalfAdder : public sc_module {

public:
	//input and output port definition
	sc_in <sc_logic> a;
	sc_in <sc_logic> b;

	sc_out <sc_logic> s;
	sc_out <sc_logic> c;

	//SystemC Macro for defining Class with Process
	SC_HAS_PROCESS(HalfAdder);

	//declare Constructor with parameter SystemC Module name
	HalfAdder(sc_module_name name);

private:
	//declare other functions of the Module
	//SystemC processes are of type void and don't
	//have parameters
	void output();
};

#endif /* HALFADDER_H_ */
