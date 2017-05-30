package com.niit.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackend.dao.RoleDAO;
import com.niit.ShoppingCartBackend.dao.UserDAO;
import com.niit.ShoppingCartBackend.domain.Role;

@Controller


public class LoginController {
	@Autowired UserDAO userDAO;
	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private Role role;
	
	@RequestMapping("registeredUser") 
	public String showMessage(@RequestParam(value="user_name") String user_name,@RequestParam(value="user_password")String user_password,Model model)
	{
		System.out.println("in Controller");
		
		
				if(userDAO.validate(user_name, user_password))
				{
					 role = roleDAO.getByName(user_name);
					 String r = role.getRole();
					 String message;
					 if (r == "ROLE_USER") {
							message = "UserLogin";
							
						} else {
							message = "AdminLogin";
							 
						}
				/*	message="Valid Credentials";
				}
				else
				{
					message="Invalid Credentials";
				}*/
				
					 model.addAttribute("message", "Valid Credentials");
						model.addAttribute("username", user_name);
						return message;
					} else {
						
						model.addAttribute("message", "Invalid Credentials");
						return "Home";
					}

					
					
				
				}
}

