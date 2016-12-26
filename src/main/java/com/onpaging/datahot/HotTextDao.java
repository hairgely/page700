package com.onpaging.datahot;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onpaging.bean.Htext;

@Repository
public class HotTextDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Htext> getText(Map<String, Object> paramMap) {
		return sqlSession.selectList("hottext.getText",paramMap);
	}

	public Integer insertText(Htext bean) {
		return sqlSession.insert("hottext.insertText",bean);
	}

	public Integer getTextCnt(Map<String, Object> paramMap) {
		return sqlSession.selectOne("hottext.getTextCnt",paramMap);
	}

	public Integer editRecom(Htext bean) {
		return sqlSession.update("hottext.editRecom",bean);
	}

	public Integer commentSave(Htext bean) {
		return sqlSession.insert("hottext.commentSave",bean);
	}

	public Integer getCommentCnt(Map<String, Object> paramMap) {
		return sqlSession.selectOne("hottext.getCommentCnt",paramMap);
	}

	public List<Htext> getComment(Map<String, Object> paramMap) {
		return sqlSession.selectList("hottext.getComment",paramMap);
	}

	public Htext viewPost(Map<String, Object> paramMap) {
		return sqlSession.selectOne("hottext.viewPost",paramMap);
	}

	public List<Htext> getCommentAll(Map<String, Object> paramMap) {
		return sqlSession.selectList("hottext.getCommentAll",paramMap);
	}

	public Integer commentAvg(Map<String, Object> paramMap) {
		return sqlSession.selectOne("hottext.commentAvg",paramMap);
	}

	public Htext getCommentOne(Map<String, Object> paramMap) {
		return sqlSession.selectOne("hottext.getCommentOne",paramMap);
	}

}
