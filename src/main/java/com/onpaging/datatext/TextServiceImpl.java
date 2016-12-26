package com.onpaging.datatext;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onpaging.bean.Mtext;

@Service
public class TextServiceImpl implements TextService{

	@Autowired
	private TextDao textDao;

	@Override
	public List<Mtext> getText(Map<String, Object> paramMap) {
		return textDao.getText(paramMap);
	}

	@Override
	public Integer insertText(Mtext bean) {
		return textDao.insertText(bean);
	}

	@Override
	public Integer getTextCnt(Map<String, Object> paramMap) {
		return textDao.getTextCnt(paramMap);
	}

	@Override
	public Integer editRecom(Mtext bean) {
		return textDao.editRecom(bean);
	}

	@Override
	public Integer commentSave(Mtext bean) {
		return textDao.commentSave(bean);
	}

	@Override
	public Integer getCommentCnt(Map<String, Object> paramMap) {
		return textDao.getCommentCnt(paramMap);
	}

	@Override
	public List<Mtext> getComment(Map<String, Object> paramMap) {
		return textDao.getComment(paramMap);
	}


}
