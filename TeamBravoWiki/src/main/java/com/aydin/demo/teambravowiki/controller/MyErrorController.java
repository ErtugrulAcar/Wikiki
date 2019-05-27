package com.aydin.demo.teambravowiki.controller;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyErrorController implements ErrorController {
	@RequestMapping("/error")
    public String handleError() {
        //do something like logging
        return "/error.jsp";
    }
 
    public String getErrorPath() {
        return "/error.jsp";
    }
}
