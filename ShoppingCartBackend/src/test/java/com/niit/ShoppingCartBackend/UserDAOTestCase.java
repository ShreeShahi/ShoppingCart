package com.niit.ShoppingCartBackend;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackend.dao.RoleDAO;
import com.niit.ShoppingCartBackend.dao.UserDAO;
import com.niit.ShoppingCartBackend.domain.Role;
import com.niit.ShoppingCartBackend.domain.User;

public class UserDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;

	@Autowired
	static UserDAO userDAO;

	@Autowired
	static User user;

	@Autowired
	static RoleDAO roleDAO;

	@Autowired
	static Role role;

	/*
	 * public UserDAOTestCase (){ initialize(); createUserDAOTestCase(); }
	 */
	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCartBackend");
		context.refresh();

		userDAO = (UserDAO) context.getBean("UserDAO");

		roleDAO = (RoleDAO) context.getBean("RoleDAO");

		role = (Role) context.getBean("role");

		user = (User) context.getBean("user");

	}

	@Test
	public void createUserDAOTestCase() {

		user.setUser_name("shahithya");
		user.setUser_password("shahi4");
		user.setLocation("coimbatore");
		user.setAddress("tyui");
		user.setZip_code("456789");
		user.setEmail("ss@gmail.com");
		user.setContact_no("3456789");

		role.setRole("ROLE_ADMIN");
		role.setContact_no("3456789");
		role.setEmail("ss@gmail.com");
		role.setUser_name("shahithya");

		user.setRole(role);
		role.setUser(user);
		 roleDAO.save(role);
				userDAO.save(user);

			}
}
