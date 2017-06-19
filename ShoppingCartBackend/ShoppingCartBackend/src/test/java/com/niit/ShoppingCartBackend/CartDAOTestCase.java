package com.niit.ShoppingCartBackend;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.dao.CartDAO;
import com.niit.ShoppingCartBackend.domain.Cart;

public class CartDAOTestCase {
@Autowired  static AnnotationConfigApplicationContext context;
	
	@Autowired static CartDAO cartDAO;
	
	@Autowired static Cart cart;
	@BeforeClass
	public static void initialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCartBackend");
		context.refresh();
		
		cartDAO =  (CartDAO) context.getBean("CartDAO");
		
		
		cart = (Cart)context.getBean("cart");
		
	}
	
	@Test
	public void createCartDAOTestCase()
	{
		cart.setUserId("1");
		cart.setQuantity(2);
		cart.setStatus('X');
		cart.setPrice(1000);
		cart.setTotal(2000);
		cart.setDays(3);
	
		cartDAO.save(cart);
	 
		//assertEquals("createCartDAOTestCase",true,flag);
}

}
