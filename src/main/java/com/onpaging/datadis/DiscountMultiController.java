package com.onpaging.datadis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.onpaging.bean.DisCate;
import com.onpaging.bean.Discount;
import com.onpaging.data.Util;

@Controller
@RequestMapping("/discount")
public class DiscountMultiController extends MultiActionController{
	
	@Autowired
	private DiscountService discountService;
	
	@RequestMapping("/getDiscountlist")
	@ResponseBody
	public Object getDiscountlist(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Util util = new Util();
		Map<String,Object> paramMap = util.getPageInfo(request, "num", "num DESC");
		
		String kinds = request.getParameter("kinds");
		if(StringUtils.isNotEmpty(kinds)){
			String[] temp = StringUtils.split(kinds,",");
			List<String> list = new ArrayList<String>();
			for (int i = 0; i < temp.length; i++) {
				list.add(temp[i]);
			}
			paramMap.put("kinds", list);
		}
		
		Integer totalCnt = discountService.getDiscountlistCnt(paramMap);
		
		List<Discount> list = discountService.getDiscountlist(paramMap); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		resultMap.put("totalCnt", totalCnt);
		
		return resultMap;
	}
	
	@RequestMapping("/getDiscountOne")
	@ResponseBody
	public Object getDiscountOne(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		String num = request.getParameter("num");
		
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("num", num);
		
		Discount list = discountService.getDiscountOne(paramMap); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		
		return resultMap;
	}
	
	@RequestMapping("/addDiscount")
	@ResponseBody
	public Object addDiscount(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String mcontents = request.getParameter("mcontents");
		String type1 = request.getParameter("type1");
		String type2 = request.getParameter("type2");
		String type3 = request.getParameter("type3");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String imgurl = request.getParameter("imgurl");
		String xx = request.getParameter("xx");
		String yy = request.getParameter("yy");
		
		Discount bean = new Discount();
		bean.setTitle(title);
		bean.setContents(contents);
		bean.setMcontents(mcontents);
		bean.setType1(type1);
		bean.setType2(type2);
		bean.setType3(type3);
		bean.setStart(StringUtils.replace(start, ".", ""));
		bean.setEnd(StringUtils.replace(end, ".", ""));
		bean.setImgurl(imgurl);
		bean.setXx(xx);
		bean.setYy(yy);
		
		Integer result = discountService.addDiscount(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/editDiscount")
	@ResponseBody
	public Object editDiscount(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String type1 = request.getParameter("type1");
		String type2 = request.getParameter("type2");
		String type3 = request.getParameter("type3");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String imgurl = request.getParameter("imgurl");
		String xx = request.getParameter("xx");
		String yy = request.getParameter("yy");
		
		String num = request.getParameter("num");
		
		Discount bean = new Discount();
		bean.setTitle(title);
		bean.setContents(contents);
		bean.setType1(type1);
		bean.setType2(type2);
		bean.setType3(type3);
		bean.setStart(StringUtils.replace(start, ".", ""));
		bean.setEnd(StringUtils.replace(end, ".", ""));
		bean.setImgurl(imgurl);
		bean.setXx(xx);
		bean.setYy(yy);
		bean.setNum(Integer.valueOf(num));
		
		Integer result = discountService.editDiscount(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/delDiscount")
	@ResponseBody
	public Object delDiscount(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String num = request.getParameter("num");
		
		Discount bean = new Discount();
		bean.setNum(Integer.valueOf(num));
		
		Integer result = discountService.delDiscount(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/getCate")
	@ResponseBody
	public Object getCate(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		Map<String,Object> paramMap = new HashMap<String,Object>();
		
		List<DisCate> list = discountService.getCate(paramMap); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		
		return resultMap;
	}
}