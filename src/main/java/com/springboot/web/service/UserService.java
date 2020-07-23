package com.springboot.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.web.model.User;



@Service
public interface UserService
{

	public void findUserById(int id);
	void addUser(User user);
	boolean userExists(String name);
	
}
