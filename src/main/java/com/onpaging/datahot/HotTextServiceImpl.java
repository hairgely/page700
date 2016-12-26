package com.onpaging.datahot;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onpaging.bean.Htext;

@Service
public class HotTextServiceImpl implements HotTextService{

	@Autowired
	private HotTextDao hotTextDao;

	@Override
	public List<Htext> getText(Map<String, Object> paramMap) {
		return hotTextDao.getText(paramMap);
	}

	@Override
	public Integer insertText(Htext bean) {
		return hotTextDao.insertText(bean);
	}

	@Override
	public Integer getTextCnt(Map<String, Object> paramMap) {
		return hotTextDao.getTextCnt(paramMap);
	}

	@Override
	public Integer editRecom(Htext bean) {
		return hotTextDao.editRecom(bean);
	}

	@Override
	public Integer commentSave(Htext bean) {
		return hotTextDao.commentSave(bean);
	}

	@Override
	public Integer getCommentCnt(Map<String, Object> paramMap) {
		return hotTextDao.getCommentCnt(paramMap);
	}

	@Override
	public List<Htext> getComment(Map<String, Object> paramMap) {
		return hotTextDao.getComment(paramMap);
	}

	@Override
	public Htext viewPost(Map<String, Object> paramMap) {
		return hotTextDao.viewPost(paramMap);
	}

	@Override
	public List<Htext> getCommentAll(Map<String, Object> paramMap) {
		return hotTextDao.getCommentAll(paramMap);
	}

	@Override
	public Integer commentAvg(Map<String, Object> paramMap) {
		return hotTextDao.commentAvg(paramMap);
	}

	@Override
	public Htext getCommentOne(Map<String, Object> paramMap) {
		return hotTextDao.getCommentOne(paramMap);
	}


}
