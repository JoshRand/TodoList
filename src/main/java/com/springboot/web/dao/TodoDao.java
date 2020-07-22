package com.springboot.web.dao;

import java.util.List;

import com.springboot.web.model.Todo;

public interface TodoDao {

	public void updateTodo(int id, Todo todo);
	public void addTodo(Todo todo);
	public void deleteTodo(int id);
	public void deleteTodo(Todo todo);
	public List<Todo> findAllByName(String user);
	public Todo findTodoById(int id);
	
	
	
}
