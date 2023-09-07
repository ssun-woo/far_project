package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.AccResvDAO;

@Service
public class AccResvServiceimpl implements AccResvService{
	
	@Autowired
	private AccResvDAO accResvDao;
	
}
