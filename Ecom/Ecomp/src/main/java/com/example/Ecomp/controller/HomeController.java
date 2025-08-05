package com.example.Ecomp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Ecomp.dao.ProductDao;
import com.example.Ecomp.model.Product;

@Controller
public class HomeController {
@Autowired
ProductDao pd;
@RequestMapping("/")
public String index(Model model)
{
	List<Product> prod=(List<Product>) pd.findAll();
	model.addAttribute("product", prod);
return "index";
}
@RequestMapping("about")
public String about() {
    return "about";
}

@RequestMapping("cont")
public String contact() {
    return "contact";
}

@RequestMapping("reg")
public String signUp() {
    return "signup";
}
@RequestMapping("log")
public String logIn() {
    return "login";
}
@RequestMapping("cart")
public String cart() {
    return "cart";
}
@RequestMapping("orderComp")
public String ordercomp() {
    return "order-complete";
}
}