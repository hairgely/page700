package com.onpaging.datamap;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.onpaging.bean.Locationinfo;

@Controller
@RequestMapping("/map")
public class MapMultiController extends MultiActionController{
	
	@Autowired
	private MapService mapService;
	
	// TODO 시간 조건 SQL 추가
	@RequestMapping("/getLocations")
	@ResponseBody
	public Object getLocations(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Map<String,Object> paramMap = new HashMap<String,Object>();
		
		List<Locationinfo> list = mapService.getLocations(paramMap); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		
		return resultMap;
	}
	
	@RequestMapping("/insertLoca")
	@ResponseBody
	public Object insertLoca(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Locationinfo bean = new Locationinfo();
		bean.setLat(request.getParameter("lat"));
		bean.setLon(request.getParameter("lon"));
		
		Integer result = mapService.insertLoca(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
}