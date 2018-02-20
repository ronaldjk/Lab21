package com.gc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller // You need to add this annotation.
public class HomeController {

	@RequestMapping("/welcome")
	public String registerform() {

		
		return "register";
	}
	
	@RequestMapping("success")
	public ModelAndView registerSuccess(@RequestParam("fName") String firstName, @RequestParam("lName") String lastName, @RequestParam("gender") String gender, @RequestParam("test")String checkbox) {
		String sayHello = "Thanks for ordering, " + firstName + "!";  //" " + gender + " " + checkbox;
		return new ModelAndView("success","helloMsg", sayHello); // first parameter is the name of the jsp.
												 // second parameter is the name of the EL tag variable name
												 // third parameter is the object or data that should...
												 //...go back into our jsp page.
	}
}
