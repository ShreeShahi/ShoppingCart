package com.niit.Controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.dao.RoleDAO;
import com.niit.ShoppingCartBackend.dao.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.dao.UserDAO;
import com.niit.ShoppingCartBackend.domain.Product;
import com.niit.ShoppingCartBackend.domain.Role;
import com.niit.ShoppingCartBackend.domain.Shippingaddress;
import com.niit.ShoppingCartBackend.domain.User;

@Controller
public class UserController {

	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private Role role;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	ShippingaddressDAO shippingaddressDAO;

	@RequestMapping("/newUser")
	public String newUser(@ModelAttribute User user, @ModelAttribute Shippingaddress shippingaddress, Model model) {

		user.setEnabled(true);

		role.setRole("ROLE_USER");
		role.setUser_name(user.getUser_name());
		role.setContact_no(user.getContact_no());
		role.setEmail(user.getEmail());

		user.setRole(role);
		role.setUser(user);

		userDAO.save(user);
		roleDAO.save(role);
		System.out.println("-------------------------------------------------------------");
		shippingaddress.setUsersId(user.getUsersId());

		shippingaddressDAO.saveOrUpdate(shippingaddress);
		model.addAttribute("isUserClickedSignin", true);
		return "Home";

	}

	@RequestMapping("afterlogin")
	public String afterLogin(Principal p, Model model) {
		String mailid = p.getName();
		User user = userDAO.get(mailid);

		Role role = roleDAO.getByEmail(mailid);

		String r = role.getRole();
		System.out.println(r);
		if (r.equals("ROLE_ADMIN")) {
			model.addAttribute("isAdmin", true);

			return "AdminLogin";
		} else if (r.equals("ROLE_USER")) {
			List<Product> productList = productDAO.list();
			model.addAttribute("productList", productList);
			model.addAttribute("productDetails", true);
			model.addAttribute("isUser", true);

			return "UserLogin";
		} else {
			model.addAttribute("error", "Invalid username or password!");
			return "Home";
		}
	}
}
