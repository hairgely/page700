package com.onpaging.lunch;

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

import com.onpaging.bean.Lunch;

@Controller
@RequestMapping("/lunch")
public class LunchController extends MultiActionController{
	
	@Autowired
	private LunchService lunchService;
	
	@RequestMapping("/getLunch")
	@ResponseBody
	public Object getLunch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setUnum(request.getParameter("unum"));
		
		Lunch lunch = lunchService.getLunch(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", lunch);
		
		return resultMap;
	}
	
	@RequestMapping("/getLunchs")
	@ResponseBody
	public Object getLunchs(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setLnum(request.getParameter("lnum"));
		
		List<Lunch> list = lunchService.getLunchs(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		
		return resultMap;
	}
	
	@RequestMapping("/insertLunch")
	@ResponseBody
	public Object insertLunch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setLname(request.getParameter("lname"));
		bean.setLdate(request.getParameter("ldate"));
		bean.setLpay(request.getParameter("lpay"));
		bean.setLtype(request.getParameter("ltype"));
		bean.setLplace(request.getParameter("lplace"));
		bean.setLat(request.getParameter("lat"));
		bean.setLon(request.getParameter("lon"));
		bean.setLmemo(request.getParameter("lmemo"));
		bean.setLrate(request.getParameter("lrate"));
		
		Integer result = lunchService.insertLunch(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/updateLunch")
	@ResponseBody
	public Object updateLunch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setLnum(request.getParameter("lnum"));
		bean.setLname(request.getParameter("lname"));
		bean.setLdate(request.getParameter("ldate"));
		bean.setLpay(request.getParameter("lpay"));
		bean.setLtype(request.getParameter("ltype"));
		bean.setLplace(request.getParameter("lplace"));
		bean.setLat(request.getParameter("lat"));
		bean.setLon(request.getParameter("lon"));
		bean.setLmemo(request.getParameter("lmemo"));
		bean.setLrate(request.getParameter("lrate"));
		
		Integer result = lunchService.updateLunch(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/deleteLunch")
	@ResponseBody
	public Object deleteLunch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setLnum(request.getParameter("lnum"));
		
		Integer result = lunchService.deleteLunch(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/recom")
	@ResponseBody
	public Object recom(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setUnum(request.getParameter("unum"));
		
		List<Lunch> recom = lunchService.getRecom(bean);
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", recom);
		
		return resultMap;
	}
	
	@RequestMapping("/recently")
	@ResponseBody
	public Object recently(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Lunch bean = new Lunch();
		bean.setUnum(request.getParameter("unum"));
		
		List<Lunch> recom = lunchService.recently(bean);
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", recom);
		
		return resultMap;
	}
}