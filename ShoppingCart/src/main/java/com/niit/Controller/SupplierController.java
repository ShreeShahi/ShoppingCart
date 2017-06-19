package com.niit.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.dao.SupplierDAO;
import com.niit.ShoppingCartBackend.domain.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	Supplier supplier;

	@RequestMapping("/SupplierPage")
	public String supplierPage(Model model) {
		model.addAttribute("isAdminClickedSUPPLIER", "true");

		return "AdminLogin";
	}

	@RequestMapping("/newSupplier")
	public String newSupplier(@ModelAttribute Supplier supplier, Model model) {
		supplierDAO.saveOrUpdate(supplier);
		;
		model.addAttribute("isUserClickedADD", "true");
		return "redirect:ViewsupplierPage";

	}

	@RequestMapping("/ViewsupplierPage")
	public String ViewsupplierPage(Model model) {

		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);

		model.addAttribute("isAdminClickedViewsupplier", "true");

		return "AdminLogin";

	}

	@RequestMapping("editSupplier")
	public String editSupplier(@RequestParam("id") String id, Model model) {

		Supplier supplier = supplierDAO.get(id);
		model.addAttribute("supplier", supplier);
		model.addAttribute("isAdminClickededits", true);
		return "AdminLogin";

	}

	@RequestMapping("afteredits")
	public String afteredits(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:ViewsupplierPage";
	}

	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam(value = "id") String id) {
		supplierDAO.delete(id);
		return "redirect:ViewsupplierPage";

	}

	@ModelAttribute
	public void admiProduct(Model model) {
		model.addAttribute("isAdmin", "true");
	}
}
