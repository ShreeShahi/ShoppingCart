package com.niit.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.dao.CategoryDAO;
import com.niit.ShoppingCartBackend.domain.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;

	@RequestMapping("/CategoryPage")
	public String adminLoginPage(Model model) {
		model.addAttribute("isUserClickedCATEGORY", "true");

		return "AdminLogin";
	}

	@RequestMapping("/newCategory")
	public String newCategory(@ModelAttribute Category category, Model model) {
		categoryDAO.save(category);
		model.addAttribute("isUserClickedNewCategory", "true");
		return "redirect:ViewcategoryPage";

	}

	@RequestMapping("/ViewcategoryPage")
	public String ViewcategoryPage(Model model) {

		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);

		model.addAttribute("isAdmin", "true");
		model.addAttribute("isAdminClickedViewcategory", "true");

		return "AdminLogin";
	}

	@RequestMapping("editCategory")
	public String editCategory(@RequestParam("id") String id, Model model) {

		Category category = categoryDAO.get(id);
		model.addAttribute("category", category);
		model.addAttribute("isAdminClickedEdit", true);
		return "AdminLogin";

	}

	@RequestMapping("afterEdit")
	public String afterEdit(@ModelAttribute Category category) {
		categoryDAO.save(category);
		return "redirect:ViewcategoryPage";
	}

	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam(value = "id") String id) {
		categoryDAO.delete(id);
		return "redirect: ViewcategoryPage";

	}

}