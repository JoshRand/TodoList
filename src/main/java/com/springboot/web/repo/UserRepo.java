package com.springboot.web.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.web.model.User;

@Repository("UserRepo")
public interface UserRepo extends CrudRepository<User,Integer>
{
	
}
