package com.niit.ShoppingCartBackend.dao;

import java.util.List;

import com.niit.ShoppingCartBackend.domain.Role;

public interface RoleDAO {

	public void save(Role role);

	public boolean update(Role role);

	public boolean validate(String id, String password);

	public List<Role> list();

	public Role get(String id);

	public Role getByName(String username);

	public Role getByEmail(String email);

	public Role getByContact(String contact);

	public Role delete(String username);

	public void saveOrUpdate(Role role);

}
