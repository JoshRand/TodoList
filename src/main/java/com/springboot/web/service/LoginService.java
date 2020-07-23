package com.springboot.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.springboot.web.dao.UserDao;
import com.springboot.web.model.User;

@Service
public class LoginService {
	
	@Autowired
	UserDao userDao;
	
	public boolean validateUser(String userid, String password) {
 		List<User> list =
		userDao.findAllUsers();
		
 		for (User user : list)
		{
			if(userid.equals(user.getuName()) && password.equals(user.getPassword()))
			{
				return true;
			}
		}
		
		return false;
	}

}
