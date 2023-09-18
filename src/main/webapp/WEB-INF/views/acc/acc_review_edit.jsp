<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../main/new_header2.jsp" />
<body>
	<h3>수정폼</h3>
	<form action="/acc/cont?cate=${cate}&store_num=${store_num}" method="post" id="reviewEditForm">
					<table class="review_write">
					<tr>
						<th colspan="2"><h3>후기 작성</h3></th>
					</tr>
					<tr>
							
								<td colspan="2"><div class="mb-3" id="review_rating_edit"><fieldset>
								<span>별점을 선택해주세요</span>
		<input type="radio" name="review_rating" value="5" id="rate1">
		<label for="rate1">★</label>
		<input type="radio" name="review_rating" value="4" id="rate2">
		<label for="rate2">★</label>
		<input type="radio" name="review_rating" value="3" id="rate3">
		<label for="rate3">★</label>
		<input type="radio" name="review_rating" value="2" id="rate4">
		<label for="rate4">★</label>
		<input type="radio" name="review_rating" value="1" id="rate5">
		<label for="rate5">★</label>
	</fieldset></div></td>
	
							
						</tr>
						
						<tr>
							<th colspan="2"><textarea rows="10" cols="30"
									id="review_cont" name="review_cont" placeholder="${review.review_cont}"></textarea></th>
									
						</tr>
						<tr>
						<td><input type="submit" value="등록"
								onclick="submit_check();" class="ReviewWriteBtn"></td>
						<td class="text_length">글자수</td>
						</tr>
						
					</table>
				</form>
<jsp:include page="../main/footer.jsp" />