package com.aydin.demo.teambravowiki.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/*")
    public String login(){
        return "login.jsp";
    }
    
    @RequestMapping("/userProfile")
    public String userProfile() {
    	return "userProfile.jsp";
    }
}
