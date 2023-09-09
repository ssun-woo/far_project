package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.AccResvDAO;
import com.far.dto.ResvDTO;

@Service
public class AccResvServiceImpl implements AccResvService{
	
	@Autowired
	private AccResvDAO accResvDao;

	@Override
	public void resvStroe(ResvDTO resv) {
		accResvDao.resvStroe(resv);
	}

}
