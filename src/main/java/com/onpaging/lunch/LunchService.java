package com.onpaging.lunch;

import java.util.List;
import java.util.Map;

import com.onpaging.bean.Lunch;



public interface LunchService {

	Lunch getLunch(Lunch bean);
	
	List<Lunch> getLunchs(Lunch bean);

	Integer insertLunch(Lunch bean);

	List<Lunch> getRecom(Lunch paramMap);

	Integer updateLunch(Lunch bean);

	Integer deleteLunch(Lunch bean);

	List<Lunch> recently(Lunch bean);
	



}
