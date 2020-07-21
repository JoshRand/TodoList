package com.springboot.web.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.springboot.web.model.Todo;
import com.springboot.web.repo.TodoRepo;
@Component
public class TodoDaoImpl implements TodoDao {

	@Autowired
	TodoRepo todoRepo;
	
	
	@Override
	public void updateTodo(int id, Todo todo) {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void addTodo(Todo todo) {
		// TODO Auto-generated method stub
		todoRepo.save(todo);
		
	}

	@Override
	public void deleteTodo(int id) {
		// TODO Auto-generated method stub
		todoRepo.deleteById(id);
	}

}
