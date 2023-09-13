package com.far.mapper;

import com.far.dto.ReviewDTO;

public interface ReviewMapper {

	/*댓글 등록*/
	public int enrollReview(ReviewDTO dto);
}
