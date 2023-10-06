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
	public List<ReviewDTO> getReview(int storeNum) {
		return sqlSession.selectList("get_review", storeNum);
	}

	@Override
	public void setReview(ReviewDTO rdto) {
		sqlSession.insert("set_review", rdto);
	}

	@Override
	public void delReview(int reviewNum) {

		sqlSession.delete("del_review", reviewNum);		
	}

	@Override
	public void editReview(ReviewDTO dto) {
		sqlSession.update("edit_review",dto);
		
	}

	@Override
	public ReviewDTO getUpdateReview(int reviewNum) {
		return sqlSession.selectOne("get_update_review",reviewNum);
	}

	@Override
	public int getReivewCount(ReviewDTO rdto) {
		return sqlSession.selectOne("review_count",rdto);
	}

	@Override
	public void setRecommend(ReviewDTO rdto) {
		sqlSession.update("recommend_up",rdto);
		
	}




	
	
	
}
