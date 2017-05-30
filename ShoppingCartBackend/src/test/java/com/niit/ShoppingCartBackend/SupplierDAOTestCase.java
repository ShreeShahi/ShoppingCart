package com.niit.ShoppingCartBackend;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.dao.SupplierDAO;
import com.niit.ShoppingCartBackend.domain.Supplier;

public class SupplierDAOTestCase {


	@Autowired static AnnotationConfigApplicationContext context;
		
		@Autowired  static SupplierDAO supplierDAO;
		
@Autowired static Supplier supplier;
@BeforeClass
public static void initialize()
{
	context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.ShoppingCartBackend");
	context.refresh();
	
	
	supplierDAO =   (SupplierDAO) context.getBean("SupplierDAO");
	
	
	supplier = (Supplier) context.getBean("supplier");
	
}

@Test
public void createSupplierDAOTestCase()
{
	
	supplier.setsuppliername("Anya");
	supplier.setEmail_id("sha@gmail.com");
	supplier.setPhone_no("34567");
	supplier.setAddress("yyyyy");
	boolean flag =  supplierDAO.save(supplier);
	System.out.println(flag);
	//assertEquals("createSupplierDAOTestCase",true,flag);
}
/*@Test
public void updatesupplierTestCase()
{
	supplier.setId("jayesh");
	supplier.setName("jayesh Kumar");
	supplier.setPassword("jayesh");
	supplier.setRole("ROLE_USER");
	supplier.setContact("8888888");
	boolean flag =  supplierDAO.update(supplier);
	System.out.println(flag);
	//error - if there is in runtime errors  -  Red mark
	//success  - if expected and actual is same  - green mark
	//fail  - if expected and actual is different  -  blue mark
	assertEquals(" update supplier test case",true,flag);
	
}

@Test
public void validateSupplierDAOTestCase()		{

	boolean flag =  supplierDAO.validate("jayesh", "jayeshhh");	
	System.out.println(flag);
		assertEquals(true, flag);

}

@Test
public void getAllsupplierTestCase()
{
	int actualSize=  supplierDAO.list().size();

	assertEquals(12, actualSize);
}


*/
}
