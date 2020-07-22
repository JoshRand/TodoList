package com.springboot.web.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.springboot.web.dao.TodoDao;
import com.springboot.web.model.Todo;

@Component
@Service
public class TodoService
{

	@Autowired
	TodoDao todoDao;

	private static List<Todo> todos = new ArrayList<Todo>();

	/*
	 * If not using database private static int todoCount = 3;
	 * 
	 * static { todos.add(new Todo( "joshua", "Learn Spring MVC", new Date(),
	 * false)); todos.add(new Todo( "joshua", "Learn Struts", new Date(), false));
	 * todos.add(new Todo( "joshua", "Learn Hibernate", new Date(), false)); }
	 * 
	 */
	public List<Todo> retrieveTodos(String user)
	{
		List<Todo> filteredTodos = new ArrayList<Todo>();
		filteredTodos = todoDao.findAllByName(user);

		return filteredTodos;
//		Not using a database/repo
//      for (Todo todo : todos) {
//          if (todo.getUser().equalsIgnoreCase(user)) {
//              filteredTodos.add(todo);
//          }
//      }
	}

	public Todo retrieveTodo(int id)
	{
		
		Todo todo = todoDao.findTodoById(id);
		return todo;
		// with Repo/MySQL

//		with static todo collection
//		for (Todo todo : todos) {
//			if (todo.getId() == id) {
//				return todo;
//			}
//		}
//		return null;
	}

	public void updateTodo(Todo todo)
	{
		todoDao.updateTodo(todo.getId(), todo);

//		todos.remove(todo);
//		todos.add(todo);
	}

	public void addTodo(String name, String desc, Date targetDate, boolean isDone)
	{
		todoDao.addTodo(new Todo(name, desc, targetDate, isDone));// ++todoCount, name, desc, targetDate, isDone));
	}

	public void deleteTodo(int id)
	{
		todoDao.deleteTodo(id);
//		With Collections
//		Iterator<Todo> iterator = todos.iterator();
//		while (iterator.hasNext())
//		{
//			Todo todo = iterator.next();
//			if (todo.getId() == id)
//			{
//				iterator.remove();
//			}
//		}
	}
}