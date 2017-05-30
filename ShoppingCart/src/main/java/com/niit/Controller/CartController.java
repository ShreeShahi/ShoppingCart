package com.niit.Controller;

import java.security.Principal;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.dao.CartDAO;
import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.dao.UserDAO;
import com.niit.ShoppingCartBackend.domain.Cart;
import com.niit.ShoppingCartBackend.domain.Product;
import com.niit.ShoppingCartBackend.domain.User;

@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	Cart cart;
    @Autowired
    Product product;
	@RequestMapping("productDetails")
	public String productdetails(@RequestParam("productId") String productId, Model model) {

		Product product = productDAO.get(productId);

		model.addAttribute("isUserClickedMoreInfo", true);
		model.addAttribute("product", product);
		return "UserLogin";

	}

	@RequestMapping("mycart")
	public String mycart(Principal p, Model model) {
		List<Cart> cartList = cartDAO.getByEmailId(p.getName());
		model.addAttribute("cartList", cartList);

		model.addAttribute("isUserClickedAddtocart", true);
		
		return "UserLogin";
	}

	@RequestMapping("addCart")
	public String addCart(@RequestParam("productId") String productId, Principal p, Model model) {

		

		Product product = productDAO.get(productId);
		User user = userDAO.getByEmailId(p.getName());
		Cart crt = cartDAO.getByUserandProduct(p.getName(), productId);
		
if(product.getQuantity() > 0 ){
			
			if(cartDAO.itemAlreadyExist(p.getName(), productId, true)){
				int quantity = crt.getQuantity() + 1;
				crt.setQuantity(quantity);
				crt.setTotal(product.getPrice() * quantity);
				cartDAO.save(crt);
}else{


		cart.setProductId(productId);
		cart.setProductName(product.getProductName());
		cart.setEmail(p.getName());
		
		cart.setQuantity(1);
		cart.setPrice(product.getPrice());
		cart.setStatus('N');
		cart.setTotal(product.getPrice() * cart.getQuantity());
		cart.setUserId(user.getUsersId());
		cart.setDays(1);

		cartDAO.save(cart);
}int quantity = product.getQuantity() - 1;
product.setQuantity(quantity);

productDAO.update(product);

		return "redirect:mycart";

}
else {
	model.addAttribute("product", product);
model.addAttribute("message", "Out of stock");
return "UserLogin";
	}}


	@RequestMapping("removeCart")
	public String removeCart(@RequestParam("cartId") int cartId, Model model) {
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductId(cart.getProductId());
		int quantity = product.getQuantity()+cart.getQuantity();
		product.setQuantity(quantity);
		productDAO.save(product);
		cartDAO.delete(cartId);
		return "redirect:mycart";
	}

}
