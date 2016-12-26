package com.onpaging.datatext;

import java.util.List;
import java.util.Map;

import com.onpaging.bean.Mtext;



public interface TextService {

	List<Mtext> getText(Map<String, Object> paramMap);

	Integer insertText(Mtext bean);

	Integer getTextCnt(Map<String, Object> paramMap);

	Integer editRecom(Mtext bean);

	Integer commentSave(Mtext bean);

	Integer getCommentCnt(Map<String, Object> paramMap);

	List<Mtext> getComment(Map<String, Object> paramMap);
	



}
