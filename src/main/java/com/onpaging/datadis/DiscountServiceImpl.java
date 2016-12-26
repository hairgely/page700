package com.onpaging.datadis;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onpaging.bean.DisCate;
import com.onpaging.bean.Discount;

@Service
public class DiscountServiceImpl implements DiscountService{

	@Autowired
	private DiscountDao discountDao;

	@Override
	public List<Discount> getDiscountlist(Map<String, Object> paramMap) {
		return discountDao.getDiscountlist(paramMap);
	}

	@Override
	public Integer addDiscount(Discount bean) {
		return discountDao.addDiscount(bean);
	}

	@Override
	public Integer editDiscount(Discount bean) {
		return discountDao.editDiscount(bean);
	}

	@Override
	public Integer delDiscount(Discount bean) {
		return discountDao.delDiscount(bean);
	}

	@Override
	public Discount getDiscountOne(Map<String, Object> paramMap) {
		return discountDao.getDiscountOne(paramMap);
	}

	@Override
	public Integer getDiscountlistCnt(Map<String, Object> paramMap) {
		return discountDao.getDiscountlistCnt(paramMap);
	}

	@Override
	public List<DisCate> getCate(Map<String, Object> paramMap) {
		return discountDao.getCate(paramMap);
	}


}
