<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../main/new_header2.jsp"/>

<div class="shop_List">
	<div class="filter">
	 <div class="filter_top">
		<h3>필터</h3>
		<button type="reset" Id="reset">
		필터 초기화
		</button>
	 </div>
	 <hr>
	 
	 <div class="price_range">
	 <h4>가격대</h4>
	 <div class="middle">
		<div class = "multi-range-slider">
			<input type="range" id="input-left" min="0" max="100" value="25">
			<input type="range" id="input-right" min="0" max="100" value="75">
		
			<div class="slider">
				<div class="track"></div>
				<div class="range"></div>
				<div class="thumb left"></div>
				<div class="thumb right"></div>
			</div>
		</div>
			<script src="../js/price_range.js"></script>
	</div>
	 	
	 	
	 </div>
	 
	 <div class="price_input">
	 		<input type="text" name="min_price" class="text_box" value="10000">
	 		~
	 		<input type="text" name="max_price" class="text_box" value="16000000">
	 	</div> 
	 <hr>
	
	
	
	 <div class="theme">
	 	<h4>테마</h4>
	 		<input type="checkbox" name="all3" onclick="allselect3(this.checked);">
	 		<label>전체</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>반려동물</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>커플</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>가족</label>
	 		
	 </div>
	 <hr>
	 
	 <div class="grade">
	 	<h4>평점</h4>
	 		<input type="checkbox"> 전체
	 		<br>
	 		<input type="checkbox"> 9점이상
	 		<br>
	 		<input type="checkbox"> 8점
	 		<br>
	 		<input type="checkbox"> 7점
	 		<br>
	 		<input type="checkbox"> 6점
	 		<br>
	 		<input type="checkbox"> 5점
	 		
	 </div>
	 <hr>
	 
	 <div class="additional_facilities">
	 	<h4>부대시설</h4>
	 		<input type="checkbox"> 전체
	 		<br>
	 		<input type="checkbox"> 수영장
	 		<br>
	 		<input type="checkbox"> 사우나
	 		<br>
	 		<input type="checkbox"> 스파
	 		<br>
	 		<input type="checkbox"> 키즈라운지
	 		<br>
	 		
	 		
	 </div>
	 

	
	</div>
	<div class="list_page">
	<div class="list_top">
	<ul>
		<li>
			<c:if test="${param.cate == 'motel'}">
				<img src="../images/acc/motel.png">
			</c:if>
			<c:if test="${param.cate == 'hotel'}">
				<img src="../images/acc/hotel.png">
			</c:if>
			<c:if test="${param.cate == 'pension'}">
				<img src="../images/acc/poolhouse.png">
			</c:if>
			<c:if test="${param.cate == 'camping'}">
				<img src="../images/acc/camping.png">
			</c:if>
		
		</li>
		<li class="region_name">
			<c:if test="${param.cate == 'motel'}">
				'모텔' 검색결과
			</c:if>
			<c:if test="${param.cate == 'hotel'}">
				'호텔' 검색결과
			</c:if>
			<c:if test="${param.cate == 'pension'}">
				'펜션/풀빌라' 검색결과
			</c:if>
			<c:if test="${param.cate == 'camping'}">
				'캠핑/글램핑' 검색결과
			</c:if>
		</li>
		<li >&nbsp;&nbsp;[검색결과수]</li>
		<li class="space"></li>
		<li class="sort">인기순</li>
		<li class="separator">|</li>
        <li class="sort">평점높은순</li>
        <li class="separator">|</li>
        <li class="sort">낮은요금순</li>
	</ul>
	</div>
	<div class="list_main">
	
		<hr>
		<div class="list_div">
		
		<a href='/acc/cont?cate=${cate}&store_num=10'><img src="../images/acc/motel1-2.jpg"></a>
		<%-- 여기 10의 값은 임의의 값 --%>
		<div class="list_cont">
			<div class="shop_Name">
				<h3>명동 밀리오레 호텔</h3>
			</div>
			
			<p>등급미정</p>
			<p>서울특별시 중구 퇴계로 115</p>
			<br>
			<p>자가 무료주차 가능</p>
		</div>
		<div class="list_cont2">
			<h2>75,000원</h2>
			<p>★★★★☆</p>
			<p>리뷰 196</p>
			<div class="shop_JJim">
				<div class="jjim_btn">
				<input type="radio" name="jjim_btn" value="no" id="no_jjim"<c:if test="${review_rating==5.0}">checked</c:if>>
				<label for="no_jjim"><img src="../images/acc/NoJJim.png"></label>
				</div>
				
				<div class="jjim_btn">
					<input type="radio" name="jjim_btn" value="yes" id="yes_jjim" <c:if test="${review_rating==5.0}">checked</c:if>>
					<label for="yes_jjim"><img src="../images/acc/YesJJim.png"></label>
					
					
				
				</div>
				
		
			</div>
			
		</div>
		
		
		</div>
	
	
	<hr>
	<div class="list_div">
		
		<a href='acc_cont.jsp'><img src="../images/acc/motel1-3.jpg"></a>
		<div class="list_cont">
			<div class="shop_Name">
				<h3>종로 호텔 앳 홈</h3>
				
			</div>
			<p>등급미정</p>
			<p>서울특별시 종로구 종로31길 40(연지동) </p>
			<br>
			<p>넷플릭스 디즈니+ 개인계정으로 사용가능합니다</p>
		</div>
		<div class="list_cont2">
			<h2>60,000원</h2>
			<p>★★★★☆</p>
			<p>리뷰 1</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle2()">
				<img src="../images/acc/NoJJim.png" id="no2">
				<img src="../images/acc/YesJJim.png" id="yes2">
			</button>
			</div>
		</div>
		
	</div>
	
	<p class="page_number"> 1 | 2 | 3 | 4 | 5 </p>
	
	</div>
	
	
	</div>
</div>
	
<jsp:include page="../main/footer.jsp"/>