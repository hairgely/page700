package com.onpaging.utils;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.onpaging.data.PannerService;

import sun.swing.StringUIClientPropertyKey;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
    
	@Autowired
	private PannerService pannerService;
	
    /**
     * 로그인 체크
     * 
     * @return 로그인 체크여부
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException, IOException {

    	if(StringUtils.indexOf(request.getRequestURI(), "lunch") > 0){
    		return true;
    	}
        if (request.getSession().getAttribute("bean") == null) {
            response.sendRedirect("/");
            
            return false;
        }
        return true;
    }
}
