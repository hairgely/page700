package com.onpaging.datatext;

import java.io.IOException;
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

import com.onpaging.bean.Mtext;
import com.onpaging.utils.CommonUtils;

@Controller
@RequestMapping("/text")
public class TextMultiController extends MultiActionController{
	
	@Autowired
	private TextService textService;
	
	@Autowired
	private CommonUtils commonUtils;
		
	@RequestMapping("/getText")
	@ResponseBody
	public Object getText(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map<String,Object> paramMap = commonUtils.getPageInfo(request, "ltime", "ltime DESC");
		
		Integer totalCnt = textService.getTextCnt(paramMap);

		List<Mtext> list = textService.getText(paramMap); 

		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", list);
		resultMap.put("totalCnt", totalCnt);

		
		return resultMap;
	}
	
	@RequestMapping("/insertText")
	public String insertText(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Mtext bean = new Mtext();
		bean.setContents(request.getParameter("contents"));
		bean.setMcontents(request.getParameter("mcontents"));
		bean.setMcontents1(request.getParameter("mcontents1"));
		bean.setMcontents2(request.getParameter("mcontents2"));
		bean.setTitle(request.getParameter("title"));
		
		
		try {
			Map<String,Object> resultMap = commonUtils.saveImage(request, response);
			bean.setLinkUrl((String)resultMap.get("fileUrlReturn"));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Integer result = textService.insertText(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return "/adtext";
	}
	
	@RequestMapping("/editRecom")
	@ResponseBody
	public Object editRecom(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Mtext bean = new Mtext();
		bean.setNum(Integer.valueOf(request.getParameter("num")));
		
		Integer result = textService.editRecom(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/commentSave")
	@ResponseBody
	public Object commentSave(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Mtext bean = new Mtext();
		bean.setNum(Integer.valueOf(request.getParameter("num")));
		bean.setContents(request.getParameter("contents"));
		
		Integer result = textService.commentSave(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/getComment")
	@ResponseBody
	public Object getComment(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map<String,Object> paramMap = commonUtils.getPageInfo(request, "ltime", "ltime DESC");
		paramMap.put("num", request.getParameter("num"));
		Integer totalCnt = textService.getCommentCnt(paramMap);

		List<Mtext> list = textService.getComment(paramMap); 

		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", list);
		resultMap.put("totalCnt", totalCnt);

		
		return resultMap;
	}
}