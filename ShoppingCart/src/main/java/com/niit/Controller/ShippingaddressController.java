package com.niit.Controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.dao.CartDAO;
import com.niit.ShoppingCartBackend.dao.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.domain.Cart;
import com.niit.ShoppingCartBackend.domain.Shippingaddress;

@Controller
public class ShippingaddressController {
	@Autowired
	ShippingaddressDAO shippingaddressDAO;
	@Autowired
	CartDAO cartDAO;

	@RequestMapping("proceed")
	public String Proceed(Principal p, Model model) {
		String email = p.getName();
		List<Shippingaddress> shippingList = shippingaddressDAO.list(email);
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("isUserClickedShippingAddressClicked", true);
		return "UserLogin";

	}

	@RequestMapping("address")
	public String Address(@ModelAttribute Shippingaddress shippingaddress, Model model) {
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		model.addAttribute("isUserClickedSend", true);
		return "UserLogin";
	}

	@RequestMapping("deleteshippingAddress")
	public String deleteshippingAddress(@RequestParam("shippingId") String shippingId, Model model) {
		shippingaddressDAO.delete(shippingId);
		return "redirect:proceed";

	}

	@RequestMapping("shippingAddress")
	public String shippingAddress(@RequestParam("shippingId") String shippingId, Principal p, Model model) {

		String email = p.getName();
System.out.println(email);
		List<Cart> cartList = cartDAO.getByEmailId(email);

		for (Cart c : cartList) {
			c.setShippingId(shippingId);
			System.out.println(shippingId);
			cartDAO.save(c);
		}
		model.addAttribute("isUserClickedDeliverHere", true);
		return "UserLogin";

	}
}
