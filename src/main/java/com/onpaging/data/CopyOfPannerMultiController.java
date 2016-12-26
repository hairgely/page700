/*package com.onpaging.data;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.onpaging.bean.Cate;
import com.onpaging.bean.Site;
import com.onpaging.bean.Userfa;
import com.onpaging.bean.Usert;
import com.onpaging.utils.Encrypt;

@Controller
@RequestMapping("/plagiarism")
public class CopyOfPannerMultiController extends MultiActionController{
	
	@Autowired
	private PannerService pannerService;
	
	@RequestMapping("/getCate")
	@ResponseBody
	public Object getCate(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Cate bean2 = new Cate();
		List<Cate> list2 = pannerService.getCate(bean2); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultCate", list2);
		
		return resultMap;
	}
	
	@RequestMapping("/getSite")
	@ResponseBody
	public Object getSite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		String cate = request.getParameter("cate");
		String id = request.getParameter("iid");
		
		Site bean = new Site();
		bean.setKindx(cate);
		
		List<Site> list = new ArrayList<Site>();
		
		if(cate.equals("0")){
			bean.setId(id);
			list = pannerService.getMySite(bean); 
		}else{
			list = pannerService.getSite(bean); 
		}
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		
		return resultMap;
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("/searchSite")
	@ResponseBody
	public Object searchSite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		Util util = new Util();
		
		String word = request.getParameter("word");
		if(word != null){
			word = util.unescape(word); 
		}
		
		Site bean = new Site();
		bean.setName(word);
		
		List<Site> list = new ArrayList<Site>();
		
		list = pannerService.searchSite(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		
		return resultMap;
	}
	
	@RequestMapping("/addfavorite")
	@ResponseBody
	public Object addfavorite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		String num = request.getParameter("num");
		String id = request.getParameter("iid");
		
		Userfa bean = new Userfa();
		bean.setNum(Integer.valueOf(num));
		bean.setId(id);
		
		pannerService.addfavorite(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@RequestMapping("/delfavorite")
	@ResponseBody
	public Object delfavorite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		
		String num = request.getParameter("num");
		String id = request.getParameter("iid");
		
		Userfa bean = new Userfa();
		bean.setNum(Integer.valueOf(num));
		bean.setId(id);
		
		pannerService.delfavorite(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("/addcate")
	@ResponseBody
	public Object addcate(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Util util = new Util();
		String name = request.getParameter("name");
		if(name != null){
			name = util.unescape(name); 
		}
		pannerService.addcate(name); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("/addsite")
	@ResponseBody
	public Object addsite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Util util = new Util();
		String name = request.getParameter("name");
		if(name != null){
			name = util.unescape(name); 
		}
		String kindx = request.getParameter("kindx");
		String addre = request.getParameter("addre");
		
		Site bean = new Site();
		bean.setAddre(addre);
		bean.setKindx(kindx);
		bean.setName(name);
		
		pannerService.addsite(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@RequestMapping("/joinStart")
	@ResponseBody
	public Object joinStart(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		Usert bean = new Usert();
		bean.setId(id);
		bean.setPwd(Encrypt.encryptSha2(pwd));
		
		String result = pannerService.joinStart(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/facebookLogin")
	@ResponseBody
	public Object facebookLogin(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		Usert bean = new Usert();
		bean.setId(id);
		bean.setPwd(pwd);
		bean.setJtype("facebook");
		
		String result = pannerService.facebookLogin(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/kakaoLogin")
	@ResponseBody
	public Object kakaoLogin(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		Usert bean = new Usert();
		bean.setId(id);
		bean.setPwd(pwd);
		bean.setJtype("kakao");
		
		String result = pannerService.kakaoLogin(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/inputsite2")
	@ResponseBody
	public Object inputsite2(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String ucaten = request.getParameter("ucaten");
		
		Site bean = new Site();
		bean.setId(id);
		bean.setName(name);
		bean.setAddre(addr);
		bean.setEtc(id);
		bean.setKindx(ucaten);
		
		Integer result = pannerService.inputsite2(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/inputsite3")
	@ResponseBody
	public Object inputsite3(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String ucaten = request.getParameter("ucaten");
		
		Site bean = new Site();
		bean.setId(id);
		bean.setName(name);
		bean.setAddre(addr);
		bean.setEtc(id);
		bean.setKindx(ucaten);
		
		Integer result = pannerService.inputsite3(bean); 
		pannerService.addfavorite2(bean);
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/inputsite")
	@ResponseBody
	public Object inputsite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String ucaten = request.getParameter("ucaten");
		String kindx = request.getParameter("kindx");
		
		Site bean = new Site();
		bean.setId(id);
		bean.setName(name);
		bean.setAddre(addr);
		bean.setEtc(id);
		bean.setKindx(kindx);
		
		Integer result = pannerService.inputsite(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/loginstart")
	@ResponseBody
	public Object loginstart(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		Usert bean = new Usert();
		bean.setId(id);
		bean.setPwd(Encrypt.encryptSha2(pwd));
		
		String result = pannerService.loginstart(bean); 
		if(StringUtils.equals(result, "0")){
			HttpSession session = request.getSession();
			session.setAttribute("bean", bean);
		}
		
		List<Cate> list = new ArrayList<Cate>();
		
		list = pannerService.getUcate(id); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("bean");
		response.sendRedirect("/");
		return "main";
	}
	
	@RequestMapping("/loginTmpstart")
	@ResponseBody
	public Object loginTmpstart(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String id = request.getParameter("id");
		
		Usert bean = new Usert();
		bean.setId(id);
		
		String result = pannerService.loginstart(bean); 
		
		List<Cate> list = new ArrayList<Cate>();
		
		list = pannerService.getUcate(id); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		resultMap.put("result", result);
		return resultMap;
	}
	
	@RequestMapping("/getSiteu")
	@ResponseBody
	public Object getSiteu(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String cate = request.getParameter("cate");
		String id = request.getParameter("iid");
		
		Site bean = new Site();
		bean.setKindx(cate);
		
		List<Site> list = new ArrayList<Site>();
		
		bean.setId(id);
		bean.setEtc(id);
		list = pannerService.getSiteu(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("resultList", list);
		return resultMap;
	}
	
	@RequestMapping("/delcate")
	@ResponseBody
	public Object delcate(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String num = request.getParameter("num");
		pannerService.delcate(num); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@RequestMapping("/delsiteu")
	@ResponseBody
	public Object delsiteu(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String num = request.getParameter("num");
		String id = request.getParameter("id");
		Userfa userfa = new Userfa();
		userfa.setId(id);
		userfa.setNum(Integer.valueOf(num));
		pannerService.delsiteu(userfa); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@RequestMapping("/ucatedel")
	@ResponseBody
	public Object ucatedel(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String num = request.getParameter("num");
		String id = request.getParameter("id");
		
		Cate cate = new Cate();
		cate.setNum(Integer.valueOf(num));
		cate.setEtc(id);
		Integer result = pannerService.ucatedel(cate);
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	@RequestMapping("/delSiteAd")
	@ResponseBody
	public Object delSiteAd(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String num = request.getParameter("num");
		String id = request.getParameter("id");
		
		Site site = new Site();
		site.setNum(Integer.valueOf(num));
		site.setEtc(id);
		Integer result = pannerService.delSiteAd(site);
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		return resultMap;
	}
	@RequestMapping("/ucateadd")
	@ResponseBody
	public Object ucateadd(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String name = request.getParameter("title");
		String id = request.getParameter("id");
		String ordby = request.getParameter("ordby");
		
		Cate cate = new Cate();
		cate.setName(name);
		cate.setEtc(id);
		cate.setOrdby(ordby);
		Integer result = pannerService.ucateadd(cate);
		
		List<Cate> list = new ArrayList<Cate>();
		
		list = pannerService.getUcate(id); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", result);
		resultMap.put("resultList", list);
		return resultMap;
	}
	
	@RequestMapping("/orderprev")
	@ResponseBody
	public Object orderprev(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String iid = request.getParameter("iid");
		String num = request.getParameter("num");
		String orderb = request.getParameter("orderb");
		String pnum = request.getParameter("pnum");
		String porderb = request.getParameter("porderb");
		
		Userfa bean = new Userfa();
		bean.setId(iid);
		bean.setNum(Integer.valueOf(num));
		bean.setOrderb(Integer.valueOf(orderb));
		bean.setPnum(Integer.valueOf(pnum));
		bean.setPorderb(Integer.valueOf(porderb));
		
		pannerService.orderprev(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
	
	@RequestMapping("/ucateeditnameup")
	@ResponseBody
	public Object ucateeditnameup(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String iid = request.getParameter("iid");
		String num = request.getParameter("num");
		String orderb = request.getParameter("orderb");
		String pnum = request.getParameter("pnum");
		String porderb = request.getParameter("porderb");
		
		Userfa bean = new Userfa();
		bean.setId(iid);
		bean.setNum(Integer.valueOf(num));
		bean.setOrderb(Integer.valueOf(orderb));
		bean.setPnum(Integer.valueOf(pnum));
		bean.setPorderb(Integer.valueOf(porderb));
		
		pannerService.ucateeditnameup(bean); 
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", "0");
		return resultMap;
	}
}
*/