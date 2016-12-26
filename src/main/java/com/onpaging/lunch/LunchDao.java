package com.onpaging.lunch;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onpaging.bean.Lunch;

@Repository
public class LunchDao {
	
	@Autowired
	private SqlSession sqlSession;

	public Lunch getLunch(Lunch bean) {
		return sqlSession.selectOne("lunch.getLunch",bean);
	}
	 
	public List<Lunch> getLunchs(Lunch bean) {
		return sqlSession.selectList("lunch.getLunchs",bean);
	}
	
	public Integer insertLunch(Lunch bean) {
		return sqlSession.insert("lunch.insertLunch",bean);
	}

	public List<Lunch> getLunchsMy(Lunch paramBean) {
		return sqlSession.selectList("lunch.getLunchsMy",paramBean);
	}

	public List<Lunch> getLunchsRecently(Lunch paramBean) {
		return sqlSession.selectList("lunch.getLunchsRecently",paramBean);
	}

	public List<Lunch> getLunchsSys(Lunch paramBean) {
		return sqlSession.selectList("lunch.getLunchsSys",paramBean);
	}

	public Integer updateLunch(Lunch bean) {
		return sqlSession.update("lunch.updateLunch",bean);
	}

	public Integer deleteLunch(Lunch bean) {
		return sqlSession.update("lunch.deleteLunch",bean);
	}


}
