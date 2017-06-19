package com.niit.ShoppingCartBackend.dao;

import java.util.List;

import com.niit.ShoppingCartBackend.domain.Category;

public interface CategoryDAO {

	public List<Category> list();

	public boolean save(Category category);
	
	public boolean update(Category category);

	public void delete(String id);

	public Category get(String id);

	public boolean saveOrUpdate(Category category);
}
