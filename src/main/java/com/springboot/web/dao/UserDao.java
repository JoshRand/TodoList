package com.springboot.web.dao;

import java.util.List;

import com.springboot.web.model.User;

public interface UserDao
{
	public void saveUser(User user);
	public void deleteUser(int id);
	public List<User> findAllUsers();
	
}
