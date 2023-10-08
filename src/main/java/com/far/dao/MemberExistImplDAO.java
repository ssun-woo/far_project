package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberExistImplDAO implements MemberExistDAO {
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int isexist_mem_id(String memId) {
		int member_id_exist = sqlsession.selectOne("mem_select_id", memId);
		return member_id_exist;
	}
	
}
