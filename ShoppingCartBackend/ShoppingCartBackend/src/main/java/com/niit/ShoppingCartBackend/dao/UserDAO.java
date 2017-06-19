package com.niit.ShoppingCartBackend.dao;

import java.util.List;

import com.niit.ShoppingCartBackend.domain.User;

public interface UserDAO {
	
	public void save(User user);

	public boolean update(User user);

	public boolean validate(String user_name, String user_password);

	public List<User> list();

	public User get(String id);

	public User getByEmailId(String name);

	

}
