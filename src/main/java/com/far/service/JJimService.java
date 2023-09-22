package com.far.service;

import org.springframework.stereotype.Service;

import com.far.dto.JJimDTO;

public interface JJimService {

	public void setJJim(JJimDTO jdto);

	public int getCount(JJimDTO jdto);

	public void delJJim(JJimDTO jdto);


	

}
