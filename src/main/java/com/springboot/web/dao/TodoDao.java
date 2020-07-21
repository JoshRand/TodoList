package com.springboot.web.dao;

import com.springboot.web.model.Todo;

public interface TodoDao {

	public void updateTodo(int id, Todo todo);
	public void addTodo(Todo todo);
	public void deleteTodo(int id);
	
	
	
}
