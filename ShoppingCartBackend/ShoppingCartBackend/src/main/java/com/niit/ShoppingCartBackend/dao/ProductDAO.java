package com.niit.ShoppingCartBackend.dao;

import java.util.List;

import com.niit.ShoppingCartBackend.domain.Product;

public interface ProductDAO {
	public void saveOrUpdate(Product product);

	/*public boolean update(Product product);*/
	// public boolean validate(String id, String password);

	public Product get(String id);

	public void delete(String id);

	public List<Product> list();

	public Object getAllProductsByCategoryID(String id);

	public Product getByProductId(String productId);

}
