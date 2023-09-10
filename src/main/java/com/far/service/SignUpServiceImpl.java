package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.SignUpDAO;
import com.far.dto.MemberDTO;

@Service
public class SignUpServiceImpl implements SignUpService {
	@Autowired
	private SignUpDAO signUpDAO;

	@Override
	public void insertMember(MemberDTO m) {
		signUpDAO.insertMember(m);
		
	}
}
