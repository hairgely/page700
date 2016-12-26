package com.onpaging.datahot;

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

import com.onpaging.bean.Htext;
import com.onpaging.utils.CommonUtils;

@Controller
@RequestMapping("/hottext")
public class HotTextMultiController extends MultiActionController{
	
	@Autowired
	private HotTextService hotTextService;
	
	@Autowired
	private CommonUtils commonUtils;
	
	@RequestMapping("/viewPost")
	public String viewPost(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		Map<String,Object> paramMap = new HashMap<String, Object>();
		paramMap.put("num", request.getParameter("num"));
		Htext cData = hotTextService.viewPost(paramMap);
		model.put("cData", cData);
		List<Htext> commentList = hotTextService.getCommentAll(paramMap); 
		model.put("commentList", commentList);
		Integer commentAvg = hotTextService.commentAvg(paramMap);
		model.put("commentAvg", commentAvg);
		return "viewPost";
	}
		
	@RequestMapping("/getText")
	@ResponseBody
	public Object getText(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map<String,Object> paramMap = commonUtils.getPageInfo(request, "ltime", "ltime DESC");
		
		Integer totalCnt = hotTextService.getTextCnt(paramMap);

		List<Htext> list = hotTextService.getText(paramMap); 

		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", list);
		resultMap.put("totalCnt", totalCnt);

		
		return resultMap;
	}
	
	@RequestMapping("/insertText")
	public String insertText(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Htext bean = new Htext();
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
		
		Integer result = hotTextService.insertText(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return "/adhottext";
	}
	
	@RequestMapping("/editRecom")
	@ResponseBody
	public Object editRecom(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Htext bean = new Htext();
		bean.setNum(Integer.valueOf(request.getParameter("num")));
		
		Integer result = hotTextService.editRecom(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/commentSave")
	@ResponseBody
	public Object commentSave(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Htext bean = new Htext();
		bean.setNum(Integer.valueOf(request.getParameter("num")));
		bean.setContents(request.getParameter("contents"));
		bean.setTitle(request.getParameter("title"));
		bean.setPscore(request.getParameter("score"));
		
		Integer result = hotTextService.commentSave(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("num", bean.getComNum());
		Htext resultCom = hotTextService.getCommentOne(paramMap);
		resultMap.put("resultCom", resultCom);
		return resultMap;
	}
	
	@RequestMapping("/getComment")
	@ResponseBody
	public Object getComment(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map<String,Object> paramMap = commonUtils.getPageInfo(request, "ltime", "ltime DESC");
		paramMap.put("num", request.getParameter("num"));
		Integer totalCnt = hotTextService.getCommentCnt(paramMap);

		List<Htext> list = hotTextService.getComment(paramMap); 

		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", list);
		resultMap.put("totalCnt", totalCnt);

		
		return resultMap;
	}
}