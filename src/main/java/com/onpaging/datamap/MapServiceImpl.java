package com.onpaging.datamap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onpaging.bean.Locationinfo;

@Service
public class MapServiceImpl implements MapService{

	@Autowired
	private MapDao mapDao;

	@Override
	public List<Locationinfo> getLocations(Map<String, Object> paramMap) {
		return mapDao.getLocations(paramMap);
	}

	@Override
	public Integer insertLoca(Locationinfo bean) {
		return mapDao.insertLoca(bean);
	}


}
