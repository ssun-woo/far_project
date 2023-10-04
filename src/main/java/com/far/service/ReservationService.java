package com.far.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dto.ResvDTO;

@Service
public class ReservationService {
	@Autowired
	SqlSession sqlsession;
	
	public void reservation(ResvDTO resvDTO) {
		sqlsession.insert("reservation", resvDTO);
	}
}
