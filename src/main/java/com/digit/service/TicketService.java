package com.digit.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digit.entity.Ticket;
import com.digit.repository.CustomerRepository;
import com.digit.repository.TicketRepository;

@Service
public class TicketService implements TicketServiceinterface {

	@Autowired
	TicketRepository repository;

	@Override
	public List<Ticket> getAlltickets() {

		return repository.findAll();
	}

	@Override
	public void addtc(Ticket t) {

		repository.save(t);

	}

	public List<Ticket> dateticket(LocalDate d) {

		return repository.dateticket(d);

	}

	@Override
	public Ticket updatetickets(Ticket t, Integer id) {
		Ticket ti = repository.findById(id).get();
		ti.setCustomer(t.getCustomer());
		ti.setActivity(t.getActivity());
		ti.setDatetime(t.getDatetime());
		return repository.save(ti);
	}

	@Override
	public Ticket getById(Integer id) {

		return repository.findById(id).get();
	}

	@Override
	public void cancelTicket(Integer ticketid) {

		repository.deleteById(ticketid);

	}

	public List<Ticket> getticket(String id) {

		return repository.getticket(id);
	}

	public Ticket getByuser(String id) {

		return repository.getByuser(id);

	}

	public Ticket updatetickets(Ticket t, String userName) {

		Ticket ti = repository.getByuser(userName);

		ti.setCustomer(t.getCustomer());

		ti.setActivity(t.getActivity());

		ti.setDatetime(t.getDatetime());

		return repository.save(ti);

	}

}
