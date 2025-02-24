package com.aydin.demo.teambravowiki.controller;


import com.aydin.demo.teambravowiki.model.RegisterUser;
import com.aydin.demo.teambravowiki.model.UserInfo;
import com.aydin.demo.teambravowiki.model.WikiPageContent;
import com.aydin.demo.teambravowiki.webservice.client.*;
import com.google.gson.JsonParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


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

    @RequestMapping("/home")
    public String HomePage() {
        return "homepage.jsp";
    }

    @RequestMapping("/login")
    public String login(HttpSession session){
        if(session.getAttribute("userId") ==null || session.getAttribute("userId").toString().equals("0")){
            return "login.jsp";
        }
        else{
            return "redirect:/userProfile" + session.getAttribute("userId");
        }
    }
    @RequestMapping("/register")
    public String registerPage() {
        return "register.jsp";
    }

    @PostMapping("/authentication")
    public String authenticator(HttpServletRequest request, HttpSession session){
        String userid = userProfileClient.authentication(request.getParameter("email"), request.getParameter("password"));
        if(!userid.equals("0")){
            UserInfo userInfo = userProfileClient.getUserInfo(Integer.parseInt(userid));
            session.setAttribute("userInfo", userInfo);
            session.setAttribute("userId",userid );
            session.setAttribute("userImage", userImageClient.getUserImage(Integer.parseInt(userid)));
            session.setAttribute("userDetails", userPageClient.getPageContext(Integer.parseInt(userid)));
            return "redirect:/home";
        }
        return "redirect:/login";
    }
    @PostMapping("/register")
    public String register(HttpServletRequest request) {
    	String name = request.getParameter("name");
    	String surname = request.getParameter("surname");
    	String phone = request.getParameter("phone");
    	String email = request.getParameter("email");
    	String password = request.getParameter("password");
    	RegisterUser user = new RegisterUser(name,surname,phone,email,password);
    	UserRegisterClient register = new UserRegisterClient();
    	String x = register.registerUser(user);
    	if(x.equals("Success")) {
    		return "redirect:/home";
    	}else {
    		request.setAttribute("error", "error");
    		return "redirect:/register";
    	}
    }

    @RequestMapping("/userProfile{userId}")
    public ModelAndView userProfile(@PathVariable("userId") int userId, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("userProfile.jsp");
        modelAndView.addObject("requestedUserProfileObject", userPageClient.getPageContext(userId));
    	if(session.getAttribute("userId") == null){
    		session.setAttribute("userId", 0);
    		session.setAttribute("userImage", "");
    	}
    	session.setAttribute("requestedUserProfile", userPageClient.getPageContext(userId));
        return modelAndView;
    }
    @RequestMapping("wikiPage{wikiPageId}")
    public String wikiPage(@PathVariable("wikiPageId")int wikiPageId, HttpSession session){
         WikiPageContent wikiPageContent =wikiPageClient.getWikiPageContent(wikiPageId);
         if(wikiPageContent.isVerify()){
             session.setAttribute("header", wikiPageContent.getHeader());
             session.setAttribute("headerContent", parser.parse(wikiPageContent.getHeaderContent()).getAsJsonObject());
             session.setAttribute("pageContent", parser.parse(wikiPageContent.getPageContent()).getAsJsonObject());
             session.setAttribute("wikiImage", wikiPageContent.getImage());
             return "wikiPage.jsp";
         }
         return "redirect:/waiting";
    }

    @RequestMapping("/logout")
    public String LogOut(HttpServletRequest request){
    	HttpSession session = request.getSession();
    	session.invalidate();
    	return "redirect:/login";
    }


    @RequestMapping("/createWiki")
    public ModelAndView createWikiPage(ModelAndView modelAndView, HttpSession session){
        if(session.getAttribute("userInfo") != null){
            if(((UserInfo)session.getAttribute("userInfo")).getUserDegree() >= 3){
                modelAndView.setViewName("createWiki.jsp");
            }else{
                modelAndView.setViewName("redirect:/permissionDenied");
            }
            return modelAndView;
        }
        modelAndView.setViewName("redirect:/permissionDenied");
        return modelAndView;
    }
    @RequestMapping("/cases")
    public ModelAndView eventPage(ModelAndView modelAndView, HttpSession session){
        if(session.getAttribute("userInfo") != null){
            int id = ((UserInfo) session.getAttribute("userInfo")).getUserId();
            if(((UserInfo)session.getAttribute("userInfo")).getUserDegree() >= 3){
                modelAndView.setViewName("casePage.jsp");
                modelAndView.addObject("cases", WikiCaseClient.getListOfCasesWithSuperriorId(id));
            }else{
                modelAndView.setViewName("redirect:/permissionDenied");
            }
            return modelAndView;
        }
        modelAndView.setViewName("redirect:/permissionDenied");
        return modelAndView;
    }
    @RequestMapping("/pendingWikiPage{wikiPageId}")
    public String pendingWikipage(@PathVariable("wikiPageId")int wikiPageId, HttpSession session, HttpServletRequest request){
        if(session.getAttribute("userInfo") !=null){
            UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
            WikiPageContent wikiPageContent =wikiPageClient.getWikiPageContent(wikiPageId);
            UserInfo wikiPageOwner = UserProfileClient.getUserInfo(wikiPageContent.getWikiPageOwner());
            if(userInfo.getUserId() == wikiPageOwner.getSuperrior() || userInfo.getUserDegree() == 5){
                session.setAttribute("header", wikiPageContent.getHeader());
                session.setAttribute("headerContent", parser.parse(wikiPageContent.getHeaderContent()).getAsJsonObject());
                session.setAttribute("pageContent", parser.parse(wikiPageContent.getPageContent()).getAsJsonObject());
                session.setAttribute("wikiImage", wikiPageContent.getImage());
                request.setAttribute("caseId", WikiCaseClient.getCaseIdWithWikiPageId(wikiPageId));
                return "pendingWikiPage.jsp";
            }
        }
        return "redirect:/permissionDenied";


    }
    @PostMapping("/approveCase{caseId}")
    public ModelAndView approveCase(@PathVariable("caseId")int caseId, ModelAndView modelAndView){
        WikiCaseClient.approveWikiCase(caseId);
        modelAndView.setViewName("redirect:/cases");
        return modelAndView;
    }
    @PostMapping("rejectCase{caseId}")
    public ModelAndView rejectCase(@PathVariable("caseId")int caseId, ModelAndView modelAndView){
        WikiCaseClient.rejectCase(caseId);
        modelAndView.setViewName("redirect:/cases");
        return modelAndView;
    }

    @RequestMapping("/permissionDenied")
    public String Permission(){
        return "/PermissionDenied.jsp";
    }
    @RequestMapping("/waiting")
    public String PageWaiting(){ return "/PageApproval.jsp"; }
}
