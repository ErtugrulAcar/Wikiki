package com.aydin.demo.teambravowiki.controller;


import com.aydin.demo.teambravowiki.model.UserPageContext;
import com.aydin.demo.teambravowiki.model.WikiPageContent;
import com.aydin.demo.teambravowiki.webservice.client.UserPageClient;
import com.aydin.demo.teambravowiki.webservice.client.UserProfileClient;
import com.aydin.demo.teambravowiki.webservice.client.WikiPageClient;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class HomeController {
    private UserProfileClient userProfileClient = new UserProfileClient();
    private UserPageClient userPageClient = new UserPageClient();
    private WikiPageClient wikiPageClient = new WikiPageClient();
    private static JsonParser parser = new JsonParser();
    @RequestMapping("/login")
    public String login(HttpServletRequest request){
        HttpSession session = request.getSession();
        if(session.getAttribute("userId") == null){
            return "/login.jsp";
        }
        else{
            String userId = session.getAttribute("userId").toString();
            int intUserId = Integer.parseInt(userId);
            return "/userProfile" + intUserId;
        }

    }
    @PostMapping("/home")
    public String home(){
        return "homepage.jsp";
    }
    @PostMapping("/authentication")
    public String authenticator(HttpServletRequest request){
        String userid = userProfileClient.authentication(request.getParameter("email"), request.getParameter("password"));
        if(!userid.equals("0")){
            HttpSession session = request.getSession();
            session.setAttribute("userId",userid );
            return "redirect:/wikiPage1";
        }
        return "redirect:/login";
    }

    @RequestMapping("/userProfile{userId}")
    public String userProfile(@PathVariable("userId") int userId, HttpSession session) {
        session.setAttribute("requestedUserProfile", userPageClient.getPageContext(userId));
        return "userProfile.jsp";
    }
    @RequestMapping("wikiPage{wikiPageId}")
    public String wikiPage(@PathVariable("wikiPageId")int wikiPageId, HttpSession session){
         WikiPageContent wikiPageContent =wikiPageClient.getWikiPageContent(wikiPageId);
         session.setAttribute("headerContent", parser.parse(wikiPageContent.getHeaderContent()).getAsJsonObject());
         session.setAttribute("pageContent", parser.parse(wikiPageContent.getPageContent()).getAsJsonObject());
         return "wikiPage.jsp";
    }

}
