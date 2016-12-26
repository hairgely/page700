package com.onpaging.datadis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onpaging.bean.DisCate;
import com.onpaging.bean.Discount;

@Repository
public class DiscountDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Discount> getDiscountlist(Map<String, Object> paramMap) {
		return sqlSession.selectList("discount.getDiscountlist",paramMap);
	}

	public Integer addDiscount(Discount bean) {
		return sqlSession.insert("discount.addDiscount",bean);
	}

	public Integer editDiscount(Discount bean) {
		return sqlSession.update("discount.editDiscount",bean);
	}

	public Integer delDiscount(Discount bean) {
		return sqlSession.delete("discount.delDiscount",bean);
	}

	public Discount getDiscountOne(Map<String, Object> paramMap) {
		return sqlSession.selectOne("discount.getDiscountOne",paramMap);
	}

	public Integer getDiscountlistCnt(Map<String, Object> paramMap) {
		return sqlSession.selectOne("discount.getDiscountlistCnt",paramMap);
	}

	public List<DisCate> getCate(Map<String, Object> paramMap) {
		return sqlSession.selectList("discount.getCate",paramMap);
	}


}
