package com.onpaging.datahot;

import java.util.List;
import java.util.Map;

import com.onpaging.bean.Htext;



public interface HotTextService {

	List<Htext> getText(Map<String, Object> paramMap);

	Integer insertText(Htext bean);

	Integer getTextCnt(Map<String, Object> paramMap);

	Integer editRecom(Htext bean);

	Integer commentSave(Htext bean);

	Integer getCommentCnt(Map<String, Object> paramMap);

	List<Htext> getComment(Map<String, Object> paramMap);

	Htext viewPost(Map<String, Object> paramMap);

	List<Htext> getCommentAll(Map<String, Object> paramMap);

	Integer commentAvg(Map<String, Object> paramMap);

	Htext getCommentOne(Map<String, Object> paramMap);
	



}
