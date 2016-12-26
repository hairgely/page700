package com.onpaging.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onpaging.bean.Usert;
import com.onpaging.data.PannerService;

@Controller
public class IndexController {
    
	@Autowired
	private PannerService pannerService;
		
	@RequestMapping("/main")
    public String main(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		HttpSession session = request.getSession();
		Usert bean = (Usert) session.getAttribute("bean");
			
        if (bean != null && StringUtils.isNotEmpty(bean.getId())) {
            response.sendRedirect("/"+bean.getId());
            
            return "main";
        }
         
    	return "main";
    }
	@RequestMapping("/mainFlatly")
	public String mainFlatly(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		return "mainFlatly";
	}
	@RequestMapping("/topMain")
	public String topMain(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		return "topMain";
	}
	@RequestMapping("/*")
	public String user(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String url = request.getRequestURL().toString();
		
		Usert bean = new Usert();
		String[] tmp = StringUtils.split(url,"/");
		bean.setId(tmp[tmp.length-1]);

		String result = pannerService.loginstart(bean);
		if(StringUtils.equals(result, "2")){
			model.put("userId", bean.getId());
		}else{
			 response.sendRedirect("/main");
		}
		
		return "main";
	}
	
	@RequestMapping("/mains")
	public String mains(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		return "mains";
	}
	
	@RequestMapping("/admain")
	public String admain(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		String logkey = request.getParameter("logkey");
		if(!StringUtils.equals(logkey, "hairgely")){
			response.sendRedirect("/main");
		}
		return "admain";
	}
	
	@RequestMapping("/editpwd")
	public String editpwd(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		String key = request.getParameter("key");
		model.put("tmpKey", key);
		return "editPwd";
	}
}
