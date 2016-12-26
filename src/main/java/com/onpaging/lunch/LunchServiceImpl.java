package com.onpaging.lunch;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onpaging.bean.Lunch;

@Service
public class LunchServiceImpl implements LunchService{

	@Autowired
	private LunchDao lunchDao;

	@Override
	public Lunch getLunch(Lunch bean) {
		return lunchDao.getLunch(bean);
	}
	
	@Override
	public List<Lunch> getLunchs(Lunch bean) {
		return lunchDao.getLunchs(bean);
	}

	@Override
	public Integer insertLunch(Lunch bean) {
		return lunchDao.insertLunch(bean);
	}
	
	@Override
	public Integer updateLunch(Lunch bean) {
		return lunchDao.updateLunch(bean);
	}
	
	@Override
	public Integer deleteLunch(Lunch bean) {
		return lunchDao.deleteLunch(bean);
	}

	@Override
	public List<Lunch> getRecom(Lunch paramBean) {
		List<Lunch> result = getLunchsSys(paramBean);
		if(StringUtils.isEmpty(paramBean.getUnum())){
			paramBean.setUnum("0");
		}
		
		java.util.Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		paramBean.setLdate(formatter.format(date));
		List<Lunch> mylistbase = getLunchsMy(paramBean);
		List<Lunch> recently = getLunchsRecently(paramBean);
		
		
		//List<Lunch> uniqueItemss = new ArrayList<Lunch>(new HashSet<Lunch>(result));
		
		HashSet<String> hs = new HashSet<String>();
		
		List<Lunch> uniqueItems = new ArrayList<Lunch>();
		if (result != null) {
			for (int i = 0; i < result.size(); i++) {
				Lunch map = result.get(i);
				if (!hs.contains(map.getLname())) {
					map.setRtype("1");
					uniqueItems.add(map);
				}
			}

		}
		if (mylistbase != null) {
			for (int i = 0; i < mylistbase.size(); i++) {
				Lunch map = mylistbase.get(i);
				if (!hs.contains(map.getLname())) {
					map.setRtype("2");
					uniqueItems.add(map);
				}
			}
			
		}
		if (recently != null) {
			for (int i = 0; i < recently.size(); i++) {
				Lunch map = recently.get(i);
				if (!hs.contains(map.getLname())) {
					map.setRtype("3");
					uniqueItems.add(map);
				}
			}
			
		}
		
		Collections.shuffle(uniqueItems); 
		
		return uniqueItems;
	}

	private List<Lunch> getLunchsMy(Lunch paramBean) {
		return lunchDao.getLunchsMy(paramBean);
	}

	private List<Lunch> getLunchsRecently(Lunch paramBean) {
		return lunchDao.getLunchsRecently(paramBean);
	}

	private List<Lunch> getLunchsSys(Lunch paramBean) {
		return lunchDao.getLunchsSys(paramBean);
	}

	@Override
	public List<Lunch> recently(Lunch bean) {
		
		List<Lunch> result = getLunchsRecently(bean);
		
		HashSet<String> hs = new HashSet<String>();
		List<Lunch> uniqueItems = new ArrayList<Lunch>();
		if (result != null) {
			for (int i = 0; i < result.size(); i++) {
				Lunch map = result.get(i);
				if (!hs.contains(map.getLname())) {
					map.setRtype("3");
					uniqueItems.add(map);
				}
			}

		}
		
		Collections.shuffle(uniqueItems); 
		
		return uniqueItems;
	}

	

	


}
