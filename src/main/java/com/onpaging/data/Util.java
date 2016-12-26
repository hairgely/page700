package com.onpaging.data;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import com.onpaging.bean.Usert;

public class Util {
	 public static String unescape(String inp) {
	       String rtnStr = new String();
	       char [] arrInp = inp.toCharArray();
	       int i;
	       for(i=0;i<arrInp.length;i++) {
	           if(arrInp[i] == '%') {
	               String hex;
	               if(arrInp[i+1] == 'u') {    //?�니코드.
	                   hex = inp.substring(i+2, i+6);
	                    i += 5;
	                } else {    //ascii
	                    hex = inp.substring(i+1, i+3);
	                    i += 2;
	                }
	                try{
	                    rtnStr += new String(Character.toChars(Integer.parseInt(hex, 16)));
	                } catch(NumberFormatException e) {
	                    rtnStr += "%";
	                    i -= (hex.length()>2 ? 5 : 2);
	                }
	            } else {
	                rtnStr += arrInp[i];
	            }
	        }
	        return rtnStr;
	    }
	 
	 public static boolean checkSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Usert bean = (Usert) session.getAttribute("bean");
			
        if (bean != null && StringUtils.isNotEmpty(bean.getId())) {
            return true;
        }else{
        	return false;
        }
	 }
	 
	 public static String getNanoTime() {
		return System.nanoTime()+"";
	}
	 
	 public Map<String,Object> getPageInfo(HttpServletRequest request, String defaultOrderID, String defaultOrderStr){
		
		Map<String,Object> paramMap = new HashMap<String,Object>();
		
		Integer pageNowIndex = 1;
		Integer pageViewRow = 10;

		String pageNowIndexP = request.getParameter("pageNowIndex");
		String pageViewRowP = request.getParameter("pageViewRow");

		if(StringUtils.isNotEmpty(pageNowIndexP)){
			pageNowIndex = Integer.valueOf(pageNowIndexP);
		}

		if(StringUtils.isNotEmpty(pageViewRowP)){
			pageViewRow = Integer.valueOf(pageViewRowP);
		}

		String searchWord = request.getParameter("searchWord");
		String searchType = request.getParameter("searchType");

		paramMap.put("pageNowIndex", pageNowIndex);
		paramMap.put("pageViewRow", pageViewRow);
		paramMap.put("stlimit", (pageNowIndex-1) * pageViewRow);
		paramMap.put("enlimit", pageViewRow);
		
		paramMap.put("searchWord", searchWord != null ? searchWord : "");
		paramMap.put("searchType", searchType != null ? searchType : "");
		
		String sortOptNo1 = request.getParameter("sortOptNo1");
		String sortOptNo2 = request.getParameter("sortOptNo2");

		paramMap.put("sortOptNo1", sortOptNo1 == null ? "" : sortOptNo1);
		paramMap.put("sortOptNo2", sortOptNo2 == null ? "" : sortOptNo2);
		
		if(StringUtils.isNotEmpty(sortOptNo1) && !StringUtils.equals(defaultOrderID, sortOptNo1)){
			paramMap.put("sortOptNo0", ", "+defaultOrderStr);
		}else{
			paramMap.put("sortOptNo0", defaultOrderStr);
		}
		
		return paramMap;
	}
	 
	 
}
