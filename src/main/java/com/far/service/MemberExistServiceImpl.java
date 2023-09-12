package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.MemberExistDAO;
import com.far.dto.MemberDTO;

@Service
public class MemberExistServiceImpl implements MemberExistService{
	
	@Autowired
	MemberExistDAO memexDAO;
	
	@Override
	public int isexist_mem_id(String mem_id) {
		return memexDAO.isexist_mem_id(mem_id);
	}
	
}
