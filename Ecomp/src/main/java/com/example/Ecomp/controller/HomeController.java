package com.example.Ecomp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
@RequestMapping("/")
public String index()
{
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

}