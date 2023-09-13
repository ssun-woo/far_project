package com.far.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReviewDTO> getReview(int store_num) {
		return sqlSession.selectList("get_review", store_num);
	}

	@Override
	public int enrollReview(ReviewDTO dto) {
		return 0;
	}
	
	
	
}
