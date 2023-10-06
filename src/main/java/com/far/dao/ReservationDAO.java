package com.far.dao;

import java.util.Map;

import com.far.dto.ResvDTO;

public interface ReservationDAO {

	void reservation(ResvDTO resvDTO);

	void pointEarn(Map<String, Object> pMap);
	
	

}
