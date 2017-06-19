package com.niit.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.ShoppingCartBackend.dao.CategoryDAO;
import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.dao.SupplierDAO;
import com.niit.ShoppingCartBackend.domain.Category;
import com.niit.ShoppingCartBackend.domain.Product;
import com.niit.ShoppingCartBackend.domain.Supplier;
import com.niit.shoppingcart.util.FileUtil;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	Product product;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/NewproductsPage")
	public String newproductsPage(Model model) {
		
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedPRODUCTS", "true");

		return "AdminLogin";
	}

	@RequestMapping("/newProducts")
	public String newProduct(@ModelAttribute Product product, @RequestParam("image") MultipartFile file, Model model) {

		productDAO.saveOrUpdate(product);
		String path = "E://Eclipse Project/ShoppingCart/src/main/webapp/WEB-INF/resources/images/Product/";
		FileUtil.upload(path, file, product.getProductId() + ".jpg");
		
		model.addAttribute("isUserClickedADD", "true");
		return "redirect:ViewproductPage";

	}

	@RequestMapping("/ViewproductPage")
	public String ViewproductPage(Model model) {

		List<Product> productList = productDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("productList", productList);
		model.addAttribute("supplierList", supplierList);

		model.addAttribute("isAdminClickedViewproduct", "true");

		return "AdminLogin";

	}

	@RequestMapping("editProduct")
	public String editProduct(@RequestParam("id") String id, Model model) {

		Product product = productDAO.get(id);
		model.addAttribute("product", product);
		model.addAttribute("isAdminClickededit", true);
		return "AdminLogin";

	}

	@RequestMapping("afteredit")
	public String afteredit(@ModelAttribute Product product) {
		productDAO.saveOrUpdate(product);
		return "redirect:ViewproductPage";
	}

	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam(value = "id") String id) {
		productDAO.delete(id);
		return "redirect:ViewproductPage";

	}

	/*
	 * @RequestMapping("productDetails") public String
	 * productdetails(@RequestParam("id") String id, Model model) {
	 * List<Product> productList = productDAO.list();
	 * model.addAttribute("productlist",productList ); Product product =
	 * productDAO.get(id);
	 * 
	 * model.addAttribute("productDetails", true); model.addAttribute("product",
	 * product); return "UserLogin";
	 * 
	 * }
	 */
	@ModelAttribute
	public void admiProduct(Model model) {
		model.addAttribute("isAdmin", "true");
	}
}
