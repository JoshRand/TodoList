package com.springboot.web.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springboot.web.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	@Autowired
	LoginService service;
	//@GetMapping("/login")
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
	}
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String showWelcomePage(Locale locale, ModelMap model, @RequestParam String name, @RequestParam String password){
		
		boolean isValidUser = service.validateUser(name, password);
		
		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}
		model.put("clickhere",messageSource.getMessage("clickhere.message",null, locale));
		model.put("statement",messageSource.getMessage("statement.message",null, locale));
		model.put("welcome",messageSource.getMessage("welcome.message",null, locale));
		model.put("name", name);
		model.put("password", password);
		
		return "welcome";
	}
	
	
	@GetMapping("/logout")
	public String logout(ModelMap model)
	{
		
		//Cancel session
		
		
		return "redirect:login";
		
	}
	

}
