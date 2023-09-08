package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewDTO {

	private int review_level;
	
	public int getReview_level() {
		return review_level;
	}
	
	public void setReview_level(int review_level) {
		this.review_level = review_level;
	}
}
