package com.onpaging.data;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.onpaging.bean.Cate;
import com.onpaging.bean.Site;
import com.onpaging.bean.Userfa;
import com.onpaging.bean.Usert;

@Service
public class PannerServiceImpl implements PannerService{

	@Autowired
	private PannerDao pannerDao;

	public List<Site> getSite(Site bean) {
		return pannerDao.getSite(bean);
	}

	public List<Cate> getCate(Cate bean) {
		return pannerDao.getCate(bean);
	}

	public List<Site> getMySite(Site bean) {
		return pannerDao.getMySite(bean);
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void addfavorite(Userfa bean) {
		
		List<Userfa> list = pannerDao.checkMySite(bean);
		Iterator<Userfa> iter = list.iterator();
		if(iter.hasNext()){
			
		}else{
			Integer orb = pannerDao.getMaxUserfa(bean.getId());
			bean.setOrderb(orb);
			pannerDao.addfavorite(bean);
		}
		
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void delfavorite(Userfa bean) {
		pannerDao.delfavorite(bean);
		
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void addcate(String name) {
		pannerDao.addcate(name);
		
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void delcate(String num) {
		pannerDao.delcate(num);
		
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void addsite(Site bean) {
		pannerDao.addsite(bean);
		
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public String joinStart(Usert bean) {
		
		String result = "0";
		
		List<Usert> list = pannerDao.checkJoin(bean);
		Iterator<Usert> iter = list.iterator();
		if(iter.hasNext()){
			result = "1";
		}else{
			pannerDao.joinStart(bean);
		}
		
		
		return result;
	}

	@Override
	public String loginstart(Usert bean) {
		String result = "1";
		
		List<Usert> list = pannerDao.checkJoin(bean);
		Iterator<Usert> iter = list.iterator();
		if(iter.hasNext()){
			Usert ubean = iter.next();
			if(ubean.getPwd().equals(bean.getPwd())){
				 result = "0";
			}else{
				 result = "2";
			}
		}else{
			 result = "1";
		}
		
		return result;
	}

	@Override
	public List<Site> searchSite(Site bean) {
		return pannerDao.searchSite(bean);
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void orderprev(Userfa bean) {
//		List<Userfa> list = pannerDao.getUserfa(bean);
//		Iterator<Userfa> iter = list.iterator();
//		if(iter.hasNext()){
//			Userfa ubean = iter.next();
//		}
		 pannerDao.getUserfaOrdera(bean);
		 pannerDao.getUserfaOrderb(bean);
	}

	@Override
	public List<Cate> getUcate(String id) {
		return pannerDao.getUcate(id);
	}

	@Override
	public List<Site> getSiteu(Site bean) {
		return pannerDao.getSiteu(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer inputsite2(Site bean) {
		return pannerDao.inputsite2(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer ucatedel(Cate cate) {
		return pannerDao.ucatedel(cate);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void ucateeditnameup(Userfa bean) {
		pannerDao.ucateeditnameup(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer ucateadd(Cate bean) {
		return pannerDao.ucateadd(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer delSiteAd(Site bean) {
		return pannerDao.delSiteAd(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer inputsite(Site bean) {
		return pannerDao.inputsite(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer inputsite3(Site bean) {
		return pannerDao.inputsite3(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void addfavorite2(Site bean) {
		pannerDao.addfavorite2(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void delsiteu(Userfa userfa) {
		pannerDao.delsiteu(userfa);
	}

	@Override
	public String facebookLogin(Usert bean) {
		String result = "1";
		
		List<Usert> list = pannerDao.checkFacebookJoin(bean);
		Iterator<Usert> iter = list.iterator();
		if(iter.hasNext()){
			result = "0";
		}else{
			Integer re = pannerDao.joinFacebookLogin(bean);
			if(re != null && re == 1){
				result = "0";
			}else{
				result = "1";
			}
		}
		
		return result;
	}

	@Override
	public String kakaoLogin(Usert bean) {
		String result = "1";
		
		List<Usert> list = pannerDao.checkFacebookJoin(bean);
		Iterator<Usert> iter = list.iterator();
		if(iter.hasNext()){
			result = "0";
		}else{
			Integer re = pannerDao.joinFacebookLogin(bean);
			if(re != null && re == 1){
				result = "0";
			}else{
				result = "1";
			}
		}
		
		return result;
	}

	@Override
	public List<Cate> getUcateOpen(String id) {
		return pannerDao.getUcateOpen(id);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer ucateeditOpenYn(Cate bean) {
		return pannerDao.ucateeditOpenYn(bean);
	}

	@Override
	public List<Usert> checkJoin(Usert bean) {
		return pannerDao.checkJoin(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer updateTempKey(Usert bean) {
		return pannerDao.updateTempKey(bean);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Integer updatePassWord(Usert bean) {
		return pannerDao.updatePassWord(bean);
	}

}
