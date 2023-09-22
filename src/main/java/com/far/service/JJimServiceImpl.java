package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.JJimDAO;
import com.far.dto.JJimDTO;

@Service
public class JJimServiceImpl implements JJimService {

	@Autowired
	private JJimDAO JJimDao;
	
	@Override
	public void setJJim(JJimDTO jdto) {
		JJimDao.setJJim(jdto);
		
	}

	@Override
	public int getCount(JJimDTO jdto) {
		return JJimDao.getCount(jdto);
		
	}

	@Override
	public void delJJim(JJimDTO jdto) {
		JJimDao.delJJim(jdto);
		
	}

}
