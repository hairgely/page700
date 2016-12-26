package com.onpaging.datadis;

import java.util.List;
import java.util.Map;

import com.onpaging.bean.DisCate;
import com.onpaging.bean.Discount;



public interface DiscountService {

	List<Discount> getDiscountlist(Map<String, Object> paramMap);

	Integer addDiscount(Discount bean);

	Integer editDiscount(Discount bean);

	Integer delDiscount(Discount bean);

	Discount getDiscountOne(Map<String, Object> paramMap);

	Integer getDiscountlistCnt(Map<String, Object> paramMap);

	List<DisCate> getCate(Map<String, Object> paramMap);



}
