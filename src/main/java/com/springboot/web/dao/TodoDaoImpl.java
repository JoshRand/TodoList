package com.springboot.web.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
		todoRepo.deleteById(id);
		todoRepo.save(todo);
		
	}

	@Override
	public void addTodo(Todo todo) {
		// TODO Auto-generated method stub
		todoRepo.save(todo);
		
	}

	@Override
	public void deleteTodo(Todo todo) {
		// TODO Auto-generated method stub
		todoRepo.delete(todo);
	}

	@Override
	public List<Todo> findAllByName(String user) {
		// TODO Auto-generated method stub
		List<Todo> list = new ArrayList<Todo>();
		list = todoRepo.findAllByUser(user);
		return list;
	}

	@Override
	public Todo findTodoById(int id)
	{
		
		// TODO Auto-generated method stub
		return todoRepo.findTodoById(id);
	}

	@Override
	public void deleteTodo(int id)
	{
		todoRepo.deleteById(id);
		// TODO Auto-generated method stub
		
	}

}
