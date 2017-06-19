package com.niit.ShoppingCartBackend;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.domain.Product;

public class ProductDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;

	@Autowired
	static ProductDAO productDAO;

	@Autowired
	static Product product;

	/*public ProductDAOTestCase() {
		initialize();
		createProductDAOTestCase();
	}*/

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCartBackend");
		context.refresh();

		productDAO = (ProductDAO) context.getBean("ProductDAO");

		// get the user from context

		product = (Product) context.getBean("product");

	}

	@Test
	public void createProductDAOTestCase() {

		
		product.setProductName("Jean");
		product.setQuantity(2);
		product.setPrice(1500);
		product.setDescription("New Collection");

		productDAO.saveOrUpdate(product);
	}
}
/*
 * @Test public void updateProductDAOTestCase() {
 * 
 * product.setName("Shirts"); product.setPrice("1200");
 * product.setDescription("New Collections");
 * 
 * 
 * boolean flag = productDAO.save(product); System.out.println(flag);
 * 
 * 
 * }
 * 
 */

/*
 * @Test public void getAllProductDAOTestCase() { int actualSize=
 * productDAO.list().size();
 * 
 * //will compare actual and expected //if actual and expected is same - TC will
 * pass //if it is different - TC fail assertEquals(12, actualSize); }
 */
