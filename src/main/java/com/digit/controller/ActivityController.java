
package com.digit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.digit.entity.Activity;
import com.digit.service.ActivityService;

@Controller
public class ActivityController {

	@Autowired
	ActivityService service;

	@GetMapping("/get")
	public ModelAndView getAllActivities() {

		System.out.println("ia mcdj");

		List<Activity> actList = service.getAllActivities();

		System.out.println(actList);

		ModelAndView mv = new ModelAndView("menu");

		mv.addObject("activity", actList);

		return mv;

	}

	@GetMapping("/update-activity/{id}")

	public ModelAndView updateActivity(@PathVariable("id") Integer id,HttpSession session) {

		System.out.println("hi");
		if(session.getAttribute("getCust")!=null) {

		ModelAndView mv = new ModelAndView("activity-updat");

		Activity act = service.getById(id);

		mv.addObject("activity", act);

		return mv;
		}
		else {
			return new ModelAndView("login-admin");
		}

	}

	@PostMapping("/act-activity/{id}")

	public String updateActivity(@ModelAttribute Activity activity, @PathVariable("id") Integer id) {

		service.updateActivity(activity, id);

		return "redirect:/get";

	}

	@GetMapping("/delete-activity/{id}")

	public String deleteActivity(@PathVariable("id") Integer id) {

		service.deleteActivity(id);

		return "redirect:/get";

	}

	@GetMapping("/insert-activity")

	public ModelAndView insertActivity()

	{

		ModelAndView mv = new ModelAndView("insertactivity");

		mv.addObject("activity", new Activity());

		return mv;

	}

	@PostMapping("/save")

	public String insertActivity(@ModelAttribute Activity act) {

		System.out.println("hello");

		service.insertActivity(act);

		return "redirect:/get";

	}

	@GetMapping("/get1/{id}")

	public ModelAndView getAllActivities1(@PathVariable String id) {

		List<Activity> actList = service.getAllActivities();

		System.out.println(actList);

		ModelAndView mv = new ModelAndView("customersideview");

		mv.addObject("userName", id);
		mv.addObject("activity", actList);

		return mv;

	}

	@GetMapping("/insert-activity1/{id}")
	public ModelAndView getall(@PathVariable String id)

	{

		ModelAndView mv = new ModelAndView("request");
		mv.addObject("userName", id);
		return mv;

	}

	@GetMapping("/get2/{id}")

	public ModelAndView viewAllActivitiesOfCharges(@RequestParam("charges") double charges, @PathVariable String id) {

		// System.out.println("hi");

		List<Activity> actList = service.viewAllActivitiesOfCharges(charges);
		int actCount = service.countActivityOfCharges(charges);

		System.out.println(actList);

		ModelAndView mv = new ModelAndView("view");

		mv.addObject("activity", actList);
		mv.addObject("actCount", actCount);
		mv.addObject("userName", id);
		return mv;

	}

	@GetMapping("/get3")

	public String help(@RequestParam double charges) {

		return "redirect:/get2/{charges}";

	}

}