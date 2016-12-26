package com.onpaging.datamap;

import java.util.List;
import java.util.Map;

import com.onpaging.bean.Locationinfo;



public interface MapService {

	List<Locationinfo> getLocations(Map<String, Object> paramMap);

	Integer insertLoca(Locationinfo bean);
	



}
