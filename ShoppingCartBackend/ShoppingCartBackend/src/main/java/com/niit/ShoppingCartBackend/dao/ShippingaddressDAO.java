package com.niit.ShoppingCartBackend.dao;

import java.util.List;

import com.niit.ShoppingCartBackend.domain.Shippingaddress;

public interface ShippingaddressDAO {

	 public List<Shippingaddress> list();
	    
	    public List<Shippingaddress> list(String email);
		
		public Shippingaddress getByShippingAddress(String shippingaddress);
		
		public Shippingaddress getByShippingId(String shippingId);
		
		public Shippingaddress getByUserName(String user_name);
		
		public Shippingaddress getByUserId(String usersId);
		
		public void saveOrUpdate(Shippingaddress shippingaddress);
		
		public void delete(String shippingId);
		
		public void editShippingAddress(Shippingaddress shippingaddress);

	

}
