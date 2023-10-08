package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.MemberExistDAO;

@Service
public class MemberExistServiceImpl implements MemberExistService{
	
	@Autowired
	MemberExistDAO memexDAO;
	
	@Override
	public int isexist_mem_id(String memId) {
		return memexDAO.isexist_mem_id(memId);
	}
	
}
