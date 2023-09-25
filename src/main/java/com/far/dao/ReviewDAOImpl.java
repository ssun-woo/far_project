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
		sqlSession.insert("setReview", rdto);
	}

	@Override
	public void delReview(int reviewNum) {
		sqlSession.delete("delReview", reviewNum);		
	}

	@Override
	public void editReview(ReviewDTO dto) {
		sqlSession.update("editReview",dto);
		
	}

	@Override
	public ReviewDTO getUpdateReview(int review_num) {
		return sqlSession.selectOne("get_update_review",review_num);
	}

//	@Override
//	public void editReview(int review_num) {
//		sqlSession.update("edit_review", review_num);
//	}



	





	



	
	
	
}
