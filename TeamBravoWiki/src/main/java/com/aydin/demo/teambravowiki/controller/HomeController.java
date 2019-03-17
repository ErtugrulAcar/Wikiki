package com.aydin.demo.teambravowiki.controller;


import com.aydin.demo.teambravowiki.webservice.client.UserProfileClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.aydin.demo.teambravowiki.model.UserInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class HomeController {
    private UserProfileClient userProfileClient = new UserProfileClient();
    private UserInfo userInfo;
    @RequestMapping("/login")
    public String login(HttpServletRequest request){
        HttpSession session = request.getSession();

        if(session.getAttribute("userId") == null)
            return "login.jsp";
        String userId = session.getAttribute("userId").toString();
        System.out.println(userId);
        int intUserId = Integer.parseInt(userId);
        return "userProfile"+intUserId;
    }

    @PostMapping("/authentication")
    public String authenticator(HttpServletRequest request){
        String userid = userProfileClient.authentication(request.getParameter("email"), request.getParameter("password"));
        if(!userid.equals("0")){
            HttpSession session = request.getSession();
            session.setAttribute("userId",userid );
            System.out.println("userId"  + session.getAttribute("userId"));
            return "redirect:/userProfile" + userid;
        }
        System.out.println("Not a user");
        return "redirect:/login";
    }

    @RequestMapping("/userProfile{userId}")
    public String userProfile(@PathVariable("userId") int userId, HttpSession session) {
        userInfo = userProfileClient.getUserInfo(userId);
        session.setAttribute("userInfo", userInfo);
        return "userProfile.jsp";
    }
}
