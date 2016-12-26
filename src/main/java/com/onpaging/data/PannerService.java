package com.onpaging.data;

import java.util.List;

import com.onpaging.bean.Cate;
import com.onpaging.bean.Site;
import com.onpaging.bean.Userfa;
import com.onpaging.bean.Usert;


public interface PannerService {

	List<Site> getSite(Site bean);

	List<Cate> getCate(Cate bean);

	List<Site> getMySite(Site bean);

	void addfavorite(Userfa bean);

	void delfavorite(Userfa bean);

	void addcate(String name);

	void delcate(String num);

	void addsite(Site bean);

	String joinStart(Usert bean);

	String loginstart(Usert bean);

	List<Site> searchSite(Site bean);

	void orderprev(Userfa bean);

	List<Cate> getUcate(String id);
	
	List<Cate> getUcateOpen(String id);

	List<Site> getSiteu(Site bean);

	Integer inputsite2(Site bean);

	Integer ucatedel(Cate cate);

	void ucateeditnameup(Userfa bean);
	
	Integer ucateeditOpenYn(Cate cate);

	Integer ucateadd(Cate cate);

	Integer delSiteAd(Site site);

	Integer inputsite(Site bean);

	Integer inputsite3(Site bean);

	void addfavorite2(Site bean);

	void delsiteu(Userfa userfa);

	String facebookLogin(Usert bean);

	String kakaoLogin(Usert bean);

	List<Usert> checkJoin(Usert bean);

	Integer updateTempKey(Usert bean);

	Integer updatePassWord(Usert bean);


}
