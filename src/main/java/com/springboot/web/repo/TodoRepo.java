package com.springboot.web.repo;
import org.springframework.data.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.web.model.Todo;

@Repository("TodoRepo")
public interface TodoRepo extends CrudRepository<Todo,Integer>
{
	// To add other methods
	
	//public User findByUserName(String stuname);
}
