package com.onpaging.datatext;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onpaging.bean.Mtext;

@Repository
public class TextDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Mtext> getText(Map<String, Object> paramMap) {
		return sqlSession.selectList("text.getText",paramMap);
	}

	public Integer insertText(Mtext bean) {
		return sqlSession.insert("text.insertText",bean);
	}

	public Integer getTextCnt(Map<String, Object> paramMap) {
		return sqlSession.selectOne("text.getTextCnt",paramMap);
	}

	public Integer editRecom(Mtext bean) {
		return sqlSession.update("text.editRecom",bean);
	}

	public Integer commentSave(Mtext bean) {
		return sqlSession.insert("text.commentSave",bean);
	}

	public Integer getCommentCnt(Map<String, Object> paramMap) {
		return sqlSession.selectOne("text.getCommentCnt",paramMap);
	}

	public List<Mtext> getComment(Map<String, Object> paramMap) {
		return sqlSession.selectList("text.getComment",paramMap);
	}

}
