package com.onpaging.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiscountController {
    
/*	@Autowired
	private PannerService pannerService;*/
		
	@RequestMapping("/discount")
    public String discount(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		/*HttpSession session = request.getSession();
		Usert bean = (Usert) session.getAttribute("bean");
			
        if (bean != null && StringUtils.isNotEmpty(bean.getId())) {
            response.sendRedirect("/"+bean.getId());
            
            return "discount";
        }*/
         
    	return "discount";
    }
	
	@RequestMapping("/addiscount")
	public String addiscount(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		String logkey = request.getParameter("logkey");
		if(!StringUtils.equals(logkey, "hairgely")){
			response.sendRedirect("/discount");
		}
		
		return "addiscount";
	}
}
