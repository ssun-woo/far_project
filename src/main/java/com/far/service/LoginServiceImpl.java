package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.LoginDAO;
import com.far.dto.MemberDTO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginDAO loginDAO;
	
	@Override
	public int isexist_mem(MemberDTO memberDTO) {
		int member = loginDAO.isexist_mem(memberDTO);
		return member;
		
	}

}
