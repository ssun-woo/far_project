package com.far.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.far.dao.ReservationDAO;
import com.far.dto.ResvDTO;

@Service
public class ReservationService {

	@Autowired
	private ReservationDAO resvDao;

	@Transactional
	public void reservation(ResvDTO resvDTO, Map<String, Object> pMap) {
		resvDao.reservation(resvDTO);
		resvDao.pointEarn(pMap);
	}


}
