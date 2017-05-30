package com.niit.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.dao.CategoryDAO;
import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.dao.SupplierDAO;
import com.niit.ShoppingCartBackend.domain.Category;
import com.niit.ShoppingCartBackend.domain.Product;
import com.niit.ShoppingCartBackend.domain.Supplier;

/*import com.niit.Shoppingcart.dao.CategoryDAO;
import com.niit.Shoppingcart.domain.Category;*/

@Controller
public class HomeController {

	// http://localhost:8080/ShoppingCart/

	@Autowired
	HttpSession session;


	 @Autowired ProductDAO productDAO;
	
	 @Autowired SupplierDAO supplierDAO;
	 @Autowired CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public String goToHome(Model model)

	{
		model.addAttribute("message", "");
		List<Product> productList = productDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		List<Category> categoryList= categoryDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedMoreInfo",true);
		 
		return "Home";
	}

	@RequestMapping("/LoginPage")
	public String loginPage(Model model) {
		model.addAttribute("isUserClickedLogin", "true");
		return "Login";

	}

	@RequestMapping("/SignupPage")
	public String signupPage(Model model) {
		model.addAttribute("isUserClickedSignup", "true");

		return "Signup";
	}

	@RequestMapping("/HomePage")
	public String HomePage(Model model) {
		model.addAttribute("isUserClickedHome", "true");

		return "Home";
	}

	@RequestMapping("/MenPage")
	public String menPage(Model model) {
		model.addAttribute("isUserClickedMen", "true");

		return "Men";
	}

	@RequestMapping("/WomenPage")
	public String womenPage(Model model) {
		model.addAttribute("isUserClickedWomen", "true");

		return "Women";
	}

	@RequestMapping("/KidsPage")
	public String kidsPage(Model model) {
		model.addAttribute("isUserClickedBaby&Kids", "true");

		return "Kids";
	}

	@RequestMapping("/GiftsPage")
	public String giftsPage(Model model) {
		model.addAttribute("isUserClickedGift card", "true");

		return "Gifts";
	}

	@RequestMapping("/ContactPage")
	public String contactPage(Model model) {
		model.addAttribute("isUserClickedContact", "true");

		return "Contact";
	}

	@RequestMapping("/ProductsPage")
	public String productPage(Model model) {
		model.addAttribute("isUserClickedProducts", "true");

		return "Products";
	}

	@RequestMapping("/CategoryPage")
	public String adminLoginPage(Model model) {
		model.addAttribute("isUserClickedCATEGORY", "true");

		return "AdminLogin";
	}

	public String clothingPage(Model model) {
		model.addAttribute("isUserClickedClothing", "true");

		return "Clothing";
	}

	/*@RequestMapping("/ViewPage")
	public String view(Model model) {
		model.addAttribute("isUserClickedView", "true");

		return "View";
	}*/

	@RequestMapping("/NewproductsPage")
	public String newproductsPage(Model model) {
		model.addAttribute("isUserClickedPRODUCTS", "true");

		return "AdminLogin";
	}

	@RequestMapping("/SupplierPage")
	public String supplierPage(Model model) {
		model.addAttribute("isUserClickedSUPPLIER", "true");

		return "Supplier";
	}
	
	@RequestMapping("/AddressPage")
	public String addresspage(Model model) {
		model.addAttribute("isUserClickedClothing", "true");

		return "Address";
	}
	}
