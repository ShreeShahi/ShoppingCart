package com.niit.Controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.dao.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.domain.Shippingaddress;



@Controller
public class ShippingaddressController {
@Autowired ShippingaddressDAO shippingaddressDAO;
@RequestMapping("proceed")
public String Proceed(Principal p, Model model)
{
	String email = 	p.getName();
	List<Shippingaddress> shippingList=shippingaddressDAO.list(email);
	model.addAttribute("shippingList", shippingList);
	model.addAttribute("isUserClickedShippingAddressClicked", true);
	return "UserLogin";
	
}
}
