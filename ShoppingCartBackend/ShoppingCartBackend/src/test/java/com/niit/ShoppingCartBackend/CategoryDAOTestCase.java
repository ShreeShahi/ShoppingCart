package com.niit.ShoppingCartBackend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.dao.CategoryDAO;
import com.niit.ShoppingCartBackend.domain.Category;

public class CategoryDAOTestCase {

@Autowired static AnnotationConfigApplicationContext context;
	
	@Autowired  static CategoryDAO  categoryDAO;
	
@Autowired static Category category;

@BeforeClass
public static void initialize() {
	context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.ShoppingCartBackend");
	context.refresh();
	
	categoryDAO =  (CategoryDAO) context.getBean("CategoryDAO");
	
	
	category = (Category)context.getBean("category");
	
}

@Test
public void createCategoryDAOTestCase() {
category.setCategory_Description("clothing");
category.setCategory_name("Men");
   
	
	
	boolean flag =  categoryDAO.save(category);
	System.out.println(flag);
	
	assertEquals("createCategoryDAOTestCase",true,flag);
}
/*@Test
public void updateCategoryTestCase()
{
	category.setCategory_name("Women");
	category.setCategory_Description("");
	
	//category.setPassword("shahi");
	
	//category.setContact("123456");
	boolean flag =  categoryDAO.update(category);
	System.out.println(flag);
	//error - if there is in runtime errors  -  Red mark
	//success  - if expected and actual is same  - green mark
	//fail  - if expected and actual is different  -  blue mark
	assertEquals(" update user test case",true,flag);
	
}

@Test
public void validateUSerTestCase()
{
	
	boolean flag =  categoryDAO.validate("Shree Shahithya", "shahi");
	
	System.out.println(flag);
	assertEquals(true, flag);
	
}

@Test
public void getAllUserTestCase()
{
	int actualSize=   categoryDAO.list().size();
	
	//will compare actual and expected
	//if actual and expected is same - TC will pass
	//if it is different - TC fail
	assertEquals(12, actualSize);
}
*/
}
