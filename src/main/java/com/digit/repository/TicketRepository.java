package com.digit.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.digit.entity.Ticket;

@Repository
public interface TicketRepository extends JpaRepository<Ticket, Integer> {

	@Query(value = "select * from ticket where customer_user_name= ?", nativeQuery = true)
	List<Ticket> getticket(String id);

	@Query(value = "select * from ticket where ticket.datetime= ?", nativeQuery = true)
	List<Ticket> dateticket(LocalDate d);

	@Query(value = "select * from ticket where customer_user_name= ?", nativeQuery = true)

	Ticket getByuser(String id);

}
