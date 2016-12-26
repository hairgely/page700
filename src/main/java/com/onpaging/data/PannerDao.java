package com.onpaging.data;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onpaging.bean.Cate;
import com.onpaging.bean.Site;
import com.onpaging.bean.Userfa;
import com.onpaging.bean.Usert;

@Repository
public class PannerDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Site> getSite(Site bean) {
		return sqlSession.selectList("planner.getSite",bean);
	}

	public List<Cate> getCate(Cate bean) {
		return sqlSession.selectList("planner.getCate",bean);
	}

	public List<Site> getMySite(Site bean) {
		return sqlSession.selectList("planner.getMySite",bean);
	}
	public List<Userfa> checkMySite(Userfa bean) {
		return sqlSession.selectList("planner.checkMySite",bean);
	}

	public void addfavorite(Userfa bean) {
		sqlSession.insert("planner.addfavorite",bean);
	}

	public void delfavorite(Userfa bean) {
		sqlSession.delete("planner.delfavorite",bean);
		
	}

	public void addcate(String name) {
		sqlSession.insert("planner.addcate",name);
	}

	public void delcate(String num) {
		sqlSession.delete("planner.delcate",num);
	}

	public void addsite(Site bean) {
		sqlSession.insert("planner.addsite",bean);
	}

	public List<Usert> checkJoin(Usert bean) {
		return sqlSession.selectList("planner.checkJoin",bean);
	}

	public void joinStart(Usert bean) {
		sqlSession.delete("planner.joinStart",bean);
	}

	public List<Site> searchSite(Site bean) {
		return sqlSession.selectList("planner.searchSite",bean);
	}

	public List<Userfa> getUserfa(Userfa bean) {
		return sqlSession.selectList("planner.getUserfa",bean);
	}

	public void getUserfaOrdera(Userfa bean) {
		sqlSession.delete("planner.getUserfaOrdera",bean);
		
	}

	public void getUserfaOrderb(Userfa bean) {
		sqlSession.update("planner.getUserfaOrderb",bean);
	}

	public Integer getMaxUserfa(String id) {
		return sqlSession.selectOne("planner.getMaxUserfa",id);
	}

	public List<Cate> searchSite(String id) {
		return sqlSession.selectList("planner.searchSite",id);
	}

	public List<Site> getSiteu(Site bean) {
		return sqlSession.selectList("planner.getSiteu",bean);
	}

	public Integer inputsite2(Site bean) {
		return sqlSession.insert("planner.inputsite2",bean);
	}

	public Integer ucatedel(Cate bean) {
		return sqlSession.delete("planner.ucatedel",bean);
	}

	public Integer ucateeditnameup(Userfa bean) {
		return sqlSession.update("planner.ucateeditnameup",bean);
	}

	public List<Cate> getUcate(String id) {
		return sqlSession.selectList("planner.getUcate",id);
	}

	public Integer ucateadd(Cate bean) {
		return sqlSession.insert("planner.ucateadd",bean);
	}

	public Integer delSiteAd(Site bean) {
		return sqlSession.delete("planner.delSiteAd",bean);
	}

	public Integer inputsite(Site bean) {
		return sqlSession.insert("planner.inputsite",bean);
	}

	public Integer inputsite3(Site bean) {
		return sqlSession.insert("planner.inputsite3",bean);
	}

	public void addfavorite2(Site bean) {
		sqlSession.insert("planner.addfavorite2",bean);
		
	}

	public void delsiteu(Userfa userfa) {
		sqlSession.delete("planner.delsiteu",userfa);
	}

	public Integer joinFacebookLogin(Usert bean) {
		return sqlSession.insert("planner.joinFacebookLogin",bean);
	}

	public List<Usert> checkFacebookJoin(Usert bean) {
		return sqlSession.selectOne("planner.checkFacebookJoin",bean);
	}

	public List<Cate> getUcateOpen(String id) {
		return sqlSession.selectList("planner.getUcateOpen",id);
	}

	public Integer ucateeditOpenYn(Cate bean) {
		return sqlSession.update("planner.ucateeditOpenYn",bean);
	}

	public Integer updateTempKey(Usert bean) {
		return sqlSession.update("planner.updateTempKey",bean);
	}

	public Integer updatePassWord(Usert bean) {
		return sqlSession.update("planner.updatePassWord",bean);
	}

}
