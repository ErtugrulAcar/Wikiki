package com.aydin.demo.teambravowiki.Filters;

import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Component("/private/*")
public class LoginFilter /*implements Filter*/ {

    /*@Override
    public void destroy(){}
    @Override
    public void init(FilterConfig filterConfig) {}
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request2 = (HttpServletRequest) request;
        HttpSession session = request2.getSession();
        if(request2.getRequestURI().equals("/img/wiki2logo.png")){
            chain.doFilter(request,response);
        }
        else if(!(request2.getRequestURI().equals("/authentication"))){
            Object sessionUserCcntrol = session.getAttribute("userId");
            if (session == null || sessionUserCcntrol == null) {
                request.getRequestDispatcher("/login").forward(request, response);
            }
            else {
                chain.doFilter(request, response);
            }
        }else{
            chain.doFilter(request,response);
        }
    }*/
}
