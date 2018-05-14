/*
*  Adder.h
*
*  Created on: Apr 24, 2018
*
*/

#ifndef ADDER_H_
#define ADDER_H_

#define ADDER_LENGTH 4

#include "FullAdder.h"

class Adder : public sc_module {

public:
	//input and output port definition
	sc_in <bool> clk;
	sc_vector<sc_in<sc_logic>> a;
	sc_vector<sc_in<sc_logic>> b;

	sc_vector<sc_out<sc_logic>> s;
	sc_out <sc_logic> c_out;

	//Used Module instantiation
	sc_vector<FullAdder> full_adder;

	//SystemC Macro for defining Class with Process
	SC_HAS_PROCESS(Adder);

	//declare Constructor with parameter SystemC Module name
	Adder(sc_module_name name);

private:
	//signal declaration
	sc_vector <sc_signal <sc_logic>> s_s;
	sc_vector <sc_signal <sc_logic>> s_c_in;
	sc_vector <sc_signal <sc_logic>> s_c_out;

	//declare other functions of the Module
	//SystemC processes are of type void and don't
	//have parameters
	void output();
	void carry();
};

#endif /* ADDER_H_ */
