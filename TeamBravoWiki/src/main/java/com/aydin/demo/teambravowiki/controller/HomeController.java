package com.aydin.demo.teambravowiki.controller;


import com.aydin.demo.teambravowiki.model.UserPageContext;
import com.aydin.demo.teambravowiki.model.WikiPageContent;
import com.aydin.demo.teambravowiki.webservice.client.UserImageClient;
import com.aydin.demo.teambravowiki.webservice.client.UserPageClient;
import com.aydin.demo.teambravowiki.webservice.client.UserProfileClient;
import com.aydin.demo.teambravowiki.webservice.client.WikiPageClient;
import com.google.gson.JsonParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.util.Base64;


@Controller
public class HomeController {
    private UserProfileClient userProfileClient = new UserProfileClient();
    private UserPageClient userPageClient = new UserPageClient();
    private WikiPageClient wikiPageClient = new WikiPageClient();
    private UserImageClient userImageClient = new UserImageClient();
    private static JsonParser parser = new JsonParser();
    @RequestMapping("/")
    public String Default() {
    	return "redirect:/home";
    }
    @RequestMapping("/login")
    public String login(HttpServletRequest request){
        HttpSession session = request.getSession();
        if(session.getAttribute("userId") == null || session.getAttribute("userId").toString().equals("0")){
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
            session.setAttribute("loginned", true);
            UserPageContext upc = userPageClient.getPageContext(Integer.parseInt(userid));
            session.setAttribute("userDetails", userPageClient.getPageContext(Integer.parseInt(userid)));
            session.setAttribute("userImage", userImageClient.getUserImage(Integer.parseInt(userid)));
            return "redirect:/home";
        }
        return "redirect:/login";
    }

    @RequestMapping("/userProfile{userId}")
    public String userProfile(@PathVariable("userId") int userId, HttpSession session) {
    	if(session.getAttribute("loginned") != null) {
	        session.setAttribute("ProfileId",userId);
	        session.setAttribute("userName", userProfileClient.getUserInfo(Integer.parseInt(session.getAttribute("userId").toString())).getName());
    	}
    	else {
    		session.setAttribute("ProfileId", -1);
    		session.setAttribute("userId", 0);
    	}
    	session.setAttribute("requestedUserProfile", userPageClient.getPageContext(userId));
        return "userProfile.jsp";
    }
    @RequestMapping("wikiPage{wikiPageId}")
    public String wikiPage(@PathVariable("wikiPageId")int wikiPageId, HttpSession session){
         WikiPageContent wikiPageContent =wikiPageClient.getWikiPageContent(wikiPageId);
         session.setAttribute("header", wikiPageContent.getHeader());
         session.setAttribute("headerContent", parser.parse(wikiPageContent.getHeaderContent()).getAsJsonObject());
         session.setAttribute("pageContent", parser.parse(wikiPageContent.getPageContent()).getAsJsonObject());
         session.setAttribute("wikiImage", wikiPageContent.getImage());
         return "wikiPage.jsp";
    }
    @RequestMapping("/logout")
    public String LogOut(HttpServletRequest request){
    	HttpSession session = request.getSession();
    	session.invalidate();
    	/*session.setAttribute("loginned", null);
    	session.setAttribute("userId", 0);*/
    	return "redirect:/login";
    }
    @RequestMapping("/home")
    public String HomePage(HttpServletRequest request) {
    	return "homepage.jsp";
    }


    @RequestMapping("/showImg")
    public String showImg(HttpSession session){
        try{
            File img = new File("C:\\einstein.jpg");
            FileInputStream fileInputStream = new FileInputStream(img);
            byte [] bytes = new byte[(int)img.length()];
            fileInputStream.read(bytes);
            String encodedFile = Base64.getEncoder().encodeToString(bytes);
            session.setAttribute("img", encodedFile);
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }
        return "base64Img.jsp";
    }
}
