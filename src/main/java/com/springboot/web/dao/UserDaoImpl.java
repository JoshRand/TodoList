package com.springboot.web.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.springboot.web.model.User;
import com.springboot.web.repo.UserRepo;

@Component
public class UserDaoImpl implements UserDao
{

	@Autowired
	private UserRepo userRepo;
	
	
	@Override
	public void saveUser(User user)
	{
		userRepo.save(user);
	}

	@Override
	public void deleteUser(int id)
	{
		userRepo.deleteById(id);
		
	}

	@Override
	public List<User> findAllUsers()
	{
		
		
		// TODO Auto-generated method stub
		return (List<User>)userRepo.findAll();
	}

	@Override
	public User currentUser(String userName)
	{
		System.out.println(userName);
		User user = userRepo.findByUserName(userName);
		System.out.println(user);
		
		// TODO Auto-generated method stub
		return user;
	}

}
