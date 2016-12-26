package com.onpaging.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
    
	@RequestMapping("/map")
    public String map(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
    	return "map";
    }
}
