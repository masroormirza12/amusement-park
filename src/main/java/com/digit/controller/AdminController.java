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

import com.digit.entity.Admin;
import com.digit.exceptions.AdminException;
import com.digit.exceptions.LoginException;
import com.digit.exceptions.NoIDfound;
import com.digit.service.AdminService;

@Controller
public class AdminController {


	@Autowired
	AdminService service;

	@GetMapping("/AdminSignUp")
	public ModelAndView SignUp()throws AdminException, LoginException {
		Admin admin = new Admin();
		ModelAndView mv = new ModelAndView("login-admin");
		mv.addObject("admin", admin);
		return mv;
	}

	@GetMapping("/")
	public ModelAndView getAllAdmin() {
		List<Admin> adminList = service.getAllAdmin();
		ModelAndView mv = new ModelAndView("index-admin");
		mv.addObject("admin", adminList);
		return mv;
	}

	@GetMapping("/insert-admin")
	public ModelAndView insertAdmin() {
		ModelAndView mv = new ModelAndView("adminSignup");
		mv.addObject("admin", new Admin());
		return mv;
	}

	@PostMapping("/save-admin")
	public String insertAdmin1(@ModelAttribute Admin admin) {
		service.insertAdmin(admin);
		return "redirect:/login-admin";
	}

	@GetMapping("/update-admin/{userName}")
	public ModelAndView updateEmployee(@PathVariable String userName) {
		ModelAndView mv = new ModelAndView("update-admin");
		Admin admin = service.getById(userName);
		mv.addObject("admin", admin);
		return mv;
	}

	@PostMapping("/admin-update/{userName}")
	public String updateAdmin(@ModelAttribute Admin admin, @PathVariable("userName") String userName)  {
		service.updateAdmin(admin, userName);
		return "redirect:/";
	}

	@GetMapping("/delete-admin/{userName}")
	public String deleteAdmin(@PathVariable String userName) {

		service.deleteAdmin(userName);

		return "redirect:/";

	}

	@GetMapping("/admin")
	public String select() {
		return "admin-select";
	}

	@GetMapping("/admin-submit")
	public String adminback() {
		return "admin-menue";
	}

	@GetMapping("/login-admin")
	public String login(Model model) {

		model.addAttribute("admin", new Admin());
		return "login-admin";
	}

	@PostMapping("/authenticate-admin")
	public String authenticate(@RequestParam("userName") String userName, @RequestParam("password") String password ,HttpSession session) {
		Admin getcust = service.findByuserName(userName);
		if (getcust != null && getcust.getPassword().equals(password)) {

			session.setAttribute("getCust", getcust);
			return "redirect:/select-admin/" + userName;
		}

		else  {

	        String message=new NoIDfound("user not found").getMessage();

	        return "redirect:/login-admin/"+message;

	    }
	}
	@GetMapping("/login-admin/{message}")

	public String login(Model model,@PathVariable String message)

	{

	model.addAttribute(message);

	model.addAttribute("admin", new Admin());

	return "login-admin";

	}

	@GetMapping("/select-admin/{userName}")
	public ModelAndView select(@PathVariable String userName) {
		System.out.println("Hello");
		ModelAndView mv = new ModelAndView("admin-menue");
		mv.addObject("userName", userName);
		return mv;
	}

	@GetMapping("/logOut")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/login-admin";
	}

}
