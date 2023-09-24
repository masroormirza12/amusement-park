package com.digit.service;

import java.util.List;


import com.digit.entity.Ticket;

public interface TicketServiceinterface {

	List<Ticket> getAlltickets();

	Ticket getById(Integer id);

	void addtc(Ticket t);

	Ticket updatetickets(Ticket t, Integer id);

	void cancelTicket(Integer ticketid);

}
