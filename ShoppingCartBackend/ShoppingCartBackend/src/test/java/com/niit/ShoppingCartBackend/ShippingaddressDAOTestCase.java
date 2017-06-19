package com.niit.ShoppingCartBackend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.dao.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.domain.Shippingaddress;

public class ShippingaddressDAOTestCase {

@Autowired static AnnotationConfigApplicationContext context;
	
	@Autowired  static ShippingaddressDAO  shippingaddressDAO ;
	
@Autowired static Shippingaddress shippingaddress;

@BeforeClass
public static void initialize()
{
	context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.ShoppingCartBackend");
	context.refresh();
	
	shippingaddressDAO =  (ShippingaddressDAO) context.getBean("shippingaddressDAO");
	
	
	shippingaddress = (Shippingaddress)context.getBean("shippingaddress");
	
}

@Test
public void createAddressDAOTestCase()
{
	shippingaddress.setAddress("YYYY");
	shippingaddress.setUser_name("shahi");
	shippingaddress.setUsersId("1");
	shippingaddress.setEmail("ss@gmail.com");
	shippingaddress.setContact_no("4567896789");
	shippingaddress.setZip_code("678904");
	
	
	
}
/*@Test
public void updateUserTestCase()
{
	user.setUser_name("ShahiShree");
	user.setUser_password("shahi");
	user.setConfirm_password("shahi");
	user.setEmail("shreeshahithya@gmail.com");
	//user.setContact("123456");
	boolean flag =  userDAO.update(user);
	System.out.println(flag);
	//error - if there is in runtime errors  -  Red mark
	//success  - if expected and actual is same  - green mark
	//fail  - if expected and actual is different  -  blue mark
	assertEquals(" update user test case",true,flag);
	
}*/

/*@Test
public void validateUSerTestCase()
{
	
	boolean flag =  userDAO.validate("Shahishree", "shahi");
	
	System.out.println(flag);
	assertEquals(true, flag);
	
}

@Test
public void getAllUserTestCase()
{
	int actualSize=   userDAO.list().size();
	
	//will compare actual and expected
	//if actual and expected is same - TC will pass
	//if it is different - TC fail
	assertEquals(12, actualSize);
}
*/
}

