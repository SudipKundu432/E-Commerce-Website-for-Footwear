package com.example.Ecomp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
@RequestMapping("/dash")
public String dashboard()
{
	return "dashboard";
}

@RequestMapping("/addform")
public String addForm()
{
	return "addForm";
}
}