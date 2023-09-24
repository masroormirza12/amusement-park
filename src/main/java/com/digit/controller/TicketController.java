package com.digit.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.digit.entity.Ticket;
import com.digit.service.CustomerService;
import com.digit.service.TicketService;

@Controller
public class TicketController {

	@Autowired
	TicketService ticketService;

	@Autowired
	CustomerService cs;

	@RequestMapping("/view-tickets")
	public ModelAndView getAlltickets() {
		List<Ticket> Tlist = ticketService.getAlltickets();

		ModelAndView mv = new ModelAndView("ticket-index");
		mv.addObject("Tickets", Tlist);
		return mv;
	}

	@GetMapping("/add-ticket/{activityId}/{id}/{desc}/{cost}")
	public ModelAndView addticket(@PathVariable int activityId, @PathVariable String id, @PathVariable String desc,
			@PathVariable Double cost) {
		System.out.println("hiiiii");
		ModelAndView mv = new ModelAndView("add-ticket");
		mv.addObject("userName", id);
		mv.addObject("activityId", activityId);
		mv.addObject("description", desc);
		mv.addObject("charges", cost);
		mv.addObject("ticket", new Ticket());
		return mv;
	}

	@PostMapping("/save-ticket/{activityId}/{desc}/{id}/{cost}")

	public String addtc(@ModelAttribute Ticket t, @PathVariable int activityId, @PathVariable String desc,
			@PathVariable String id, @PathVariable double cost) {

		System.out.println(t);

		ticketService.addtc(t);

		String a = "redirect:/invoice/{activityId}/{desc}/{id}/{cost}/" + t.getDatetime();

		return a;

	}

	@RequestMapping("/invoice/{activityId}/{desc}/{id}/{cost}/{date}")

	public ModelAndView getinvoice(@PathVariable int activityId, @PathVariable String desc, @PathVariable String id,
			@PathVariable double cost, @PathVariable String date) {

		ModelAndView mv = new ModelAndView("invoice");

		mv.addObject("userName", id);

		mv.addObject("activityId", activityId);

		mv.addObject("description", desc);

		mv.addObject("charges", cost);

		LocalDate d = LocalDate.parse(date);

		mv.addObject("dates", date);

		return mv;

	}

	@RequestMapping("/invoice/{id}")
	public ModelAndView getinvoice(@PathVariable String id) {
		List<Ticket> Tlist = ticketService.getticket(id);

		ModelAndView mv = new ModelAndView("tickets");
		mv.addObject(id);
		mv.addObject("Tickets", Tlist);
		return mv;
	}

	@RequestMapping("/ticketsbooked/{id}")
	public ModelAndView getticket(@PathVariable String id) {
		List<Ticket> Tlist = ticketService.getticket(id);

		ModelAndView mv = new ModelAndView("tickets");
		mv.addObject(id);
		mv.addObject("Tickets", Tlist);
		return mv;
	}

	@GetMapping("/update-ticket/{id}")
	public ModelAndView updateticket(@PathVariable Integer id) {

		ModelAndView mv = new ModelAndView("update-ticket");
		Ticket t = ticketService.getById(id);
		mv.addObject("ticket", t);
		return mv;

	}

	@PostMapping("/ticket-update/{id}")
	public String updatetickets(@ModelAttribute Ticket t, @PathVariable("id") Integer id) {
		ticketService.updatetickets(t, id);
		return "redirect:/view-tickets";
	}

	@GetMapping("/delete-ticket/{ticketid}")
	public String cancelTicket(@PathVariable Integer ticketid) {
		ticketService.cancelTicket(ticketid);
		return "redirect:/view-tickets";
	}

	@GetMapping("/activities-date")

	public String dates() {

		return "ticket-data";

	}

	@RequestMapping("/activity-date")

	public ModelAndView dateticket(@RequestParam("datetime") String datetime) {

		System.out.println("hi");

		LocalDate d = LocalDate.parse(datetime);

		List<Ticket> tList = ticketService.dateticket(d);

		System.out.println(tList);

		ModelAndView mv = new ModelAndView("ticket-date");

		mv.addObject("Tickets", tList);

		return mv;

	}



	@GetMapping("/customer-update-activity/{userName}/{id}" )

    public ModelAndView updatecustomerticket(@PathVariable String userName,@PathVariable int id) {

        ModelAndView mv=new ModelAndView("customer-up");

        Ticket t=ticketService.getById(id);

        mv.addObject("ticket",t);

        mv.addObject("userName",userName);

        return mv;



    }

	@PostMapping("/customer-save/{userName}/{id}")

	public String updatecustomertickets(@ModelAttribute Ticket t, @PathVariable("userName") String userName ,@PathVariable int id) {

		ticketService.updatetickets(t,id);

		System.out.println(t);

		return "redirect:/select/{userName}";

	}

}
