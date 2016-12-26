package com.onpaging.datamap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onpaging.bean.Locationinfo;

@Repository
public class MapDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Locationinfo> getLocations(Map<String, Object> paramMap) {
		return sqlSession.selectList("map.getLocations",paramMap);
	}
	
	public Integer insertLoca(Locationinfo bean) {
		return sqlSession.insert("map.insertLoca",bean);
	}


}
