package com.digit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.digit.entity.Customer;
import com.digit.exceptions.NoIDfound;
import com.digit.service.CustomerService;

@Controller
public class CustomerController {


	@Autowired
	CustomerService service;

	@GetMapping("/customers")
	public ModelAndView getAllCustomer() {
		List<Customer> customer = service.getAllCustomer();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("customer", customer);
		return mv;
	}

	@GetMapping("/add-customer")
	public ModelAndView addCustomer() {
		ModelAndView mv = new ModelAndView("add-customer");
		mv.addObject("customer", new Customer());
		return mv;
	}

	@PostMapping("/save1")
	public String addCustomer1(@ModelAttribute Customer c) {
		System.out.println("hello");
		service.addCustomer1(c);
		return "redirect:/login";
	}

	@GetMapping("/home")
	public String homepage() {
		return "mainindex";

	}

	@GetMapping("/customer")
	public String select() {
		return "customer-select";
	}

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("customer", new Customer());
		return "log-in";
	}

	@PostMapping("/authenticate")
	public String authenticate(@RequestParam("userName") String userName, @RequestParam("password") String password,HttpSession session) {
		Customer getcust = service.findByUsername(userName);
		if (getcust != null && getcust.getPassword().equals(password)) {
			session.setAttribute("getcust", getcust);
			return "redirect:/select/" + userName;
		} else

	    {

	        String message=new NoIDfound("user not found").getMessage();

	        return "redirect:/login/" +message;

	    }
	}
	@GetMapping("/login/{message}")

	public String login(Model model,@PathVariable String message)

	{

	model.addAttribute(message);

	model.addAttribute("customer",new Customer());

	return "log-in";

	}



	@GetMapping("/select/{userName}")
	public ModelAndView select(@PathVariable String userName) {
		System.out.println("Hello");
		ModelAndView mv = new ModelAndView("customer-meue");
		mv.addObject("userName", userName);
		return mv;
	}

	@GetMapping("/update-customer/{userName}")
	public ModelAndView updateEmployee(@PathVariable String userName) {
		System.out.println("hi");
		ModelAndView mv = new ModelAndView("update");
		Customer c = service.findByUsername(userName);
		System.out.println(c);
		mv.addObject("user", c);

		return mv;

	}

	@PostMapping("/cust-update/{userName}")
	public String updateCustomer(@ModelAttribute Customer customer, @PathVariable("userName") String userName) {
		service.updateCustomer(customer, userName);
		return "redirect:/customers";
	}

	@GetMapping("/customer-update/{userName}")

	public ModelAndView updatecus(@PathVariable String userName) {

		System.out.println("hi");

		ModelAndView mv = new ModelAndView("customer-update");

		Customer c = service.findByUsername(userName);

		System.out.println(c);

		mv.addObject("user", c);

		mv.addObject("userName", userName);

		return mv;

	}

	@PostMapping("/update-customer/{userName}")

	public ModelAndView customerupdate(@ModelAttribute Customer customer, @PathVariable("userName") String userName) {

		service.customerupdate(customer, userName);

		ModelAndView mv = new ModelAndView("customer-meue");

		mv.addObject("userName", userName);

		return mv;

	}

	@GetMapping("/delete-customer/{userName}")

	public String deletecustomer(@PathVariable("userName") String userName) {
		System.out.println("enter");

		service.deletecustomer(userName);

		return "redirect:/customers";

	}
	@GetMapping("/logoout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/login";
	}


}

