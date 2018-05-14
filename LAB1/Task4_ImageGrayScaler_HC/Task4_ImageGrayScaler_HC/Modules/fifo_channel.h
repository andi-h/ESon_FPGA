/*
* igs_channel.cpp
*
*  Created on: Apr 26, 2018
*      Author: Andreas Hirtenlehner
*/

#ifndef FIFO_CHANNEL_H_
#define FIFO_CHANNEL_H_

#include "systemc.h"

// this class implements the virtual functions
// in the interfaces
template <class T>
class fifo_channel : public sc_module, virtual public sc_interface, virtual public sc_fifo_in_if<T>, virtual public sc_fifo_out_if<T>
{
private:
	sc_fifo<T> p_fifo;

public:
	// constructor
	fifo_channel(sc_module_name nm) : sc_module(nm)
	{
	}

	virtual int num_available() const { return p_fifo.num_available(); }
	virtual void read(T& t) { p_fifo.read(t); };
	virtual T read() { return p_fifo.read(); };
	virtual bool nb_read(T& t) { return p_fifo.nb_read(t); };
	virtual const sc_event& data_written_event() const { return p_fifo.data_written_event(); };
	virtual int num_free() const { return p_fifo.num_free(); };
	virtual bool nb_write(const T& t) { return p_fifo.nb_write(t); };
	virtual const sc_event& data_read_event() const { return p_fifo.data_read_event(); };
	virtual void write(const T& t) { p_fifo.write(t); };
};

#endif /* FIFO_CHANNEL_H_ */
