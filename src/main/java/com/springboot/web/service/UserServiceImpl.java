package com.springboot.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.springboot.web.dao.UserDao;
import com.springboot.web.model.User;

@Service
@Component
public class UserServiceImpl implements UserService
{

	@Autowired
	private UserDao userDao;
	
	@Override
	public void findUserById(int id)
	{
		
		
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUser(User user)
	{
		userDao.saveUser(user);
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean userExists(String name)
	{
		List<User> list = userDao.findAllUsers();
		for (User user : list)
		{
			if(user.getuName().equals(name))
			{
				return true;
			}
		}
		
		// TODO Auto-generated method stub
		return false;
	}

}
