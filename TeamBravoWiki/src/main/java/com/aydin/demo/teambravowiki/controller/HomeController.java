package com.aydin.demo.teambravowiki.controller;


import com.aydin.demo.teambravowiki.webservice.client.UserProfileClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.aydin.demo.teambravowiki.model.UserInfo;
import javax.servlet.http.HttpSession;


@Controller
public class HomeController {
    private UserProfileClient userProfileClient = new UserProfileClient();
    private UserInfo userInfo;
    @RequestMapping("/*")
    public String login(){
        return "login.jsp";
    }
    
    @RequestMapping("/userProfile{userId}")
    public String userProfile(@PathVariable("userId") int userId, HttpSession session) {
        userInfo = userProfileClient.getUserInfo(userId);
        session.setAttribute("userInfo", userInfo);
        return "userProfile.jsp";
    }
}
