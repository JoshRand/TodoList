package com.springboot.web.controller;

import java.net.http.HttpRequest;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.web.model.User;
import com.springboot.web.service.UserService;

//@RestController
@Controller
public class UserController
{
	@Autowired
	UserService userService;

	//HttpServletRequest request;
	
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
			model.put("user", user);
			userService.addUser(user);
			return "registration";
		}
		
		
	} 
	
	@RequestMapping(value = "/account-details", method = RequestMethod.GET)
	public String showAccountDetails(@RequestParam(value = "name") String userName, ModelMap model, User user, String name) {
		System.out.println(userName);
		
		user = userService.findUserByName(userName);
		model.put("user",user);
		
		return "accountdetails";
	}
	
	
}
