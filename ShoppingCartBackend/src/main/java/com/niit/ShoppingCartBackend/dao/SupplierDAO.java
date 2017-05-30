package com.niit.ShoppingCartBackend.dao;

import java.util.List;

import com.niit.ShoppingCartBackend.domain.Supplier;

public interface SupplierDAO {

	public List<Supplier> list();

	public boolean save(Supplier supplier);

	public void update(Supplier supplier);
	// public boolean validate(String id, String password);

public Supplier get(String id);

public void delete(String id);

}
