package com.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.web.model.User;
import com.springboot.web.service.UserService;

//@RestController
@Controller
public class UserController
{
	@Autowired
	UserService userService;

	@RequestMapping(value = "/registration-page", method = RequestMethod.GET)
	public String showRegistration(ModelMap model) {
		User user = new User();
		model.addAttribute("user",user);
		return "registration";
	}

	@RequestMapping(value = "/registration-page", method = RequestMethod.POST)
	public String addUser(ModelMap model, User user, BindingResult result) {
		if(result.hasErrors())
		{
			return "registration-page";
		}
		if(userService.userExists(user.getuName()))
		{
			// add error message
			return "registration-page";
			
		}
		else
		{
			model.put("user",user);
			userService.addUser(user);
			return "registration";
		}
		
		
	}
	@RequestMapping(value = "/account-details", method = RequestMethod.GET)
	public String showAccountDetails(ModelMap model) {
		
		return "accountdetails";
	}

	
}
