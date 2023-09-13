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
		<li><img src="../images/acc/motel.png"></li>
		<li class="region_name">
			<c:if test="${param.detail_cate == 'motel'}">
				'모텔' 검색결과
			</c:if>
			<c:if test="${param.detail_cate == 'hotel'}">
				'호텔' 검색결과
			</c:if>
			<c:if test="${param.detail_cate == 'pension'}">
				'펜션/풀빌라' 검색결과
			</c:if>
			<c:if test="${param.detail_cate == 'camping'}">
				'캠핑/글램핑' 검색결과
			</c:if>
		</li>
		<li >&nbsp;&nbsp;['${totalCount }'개의 검색 결과]</li>
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
		<%-- 여기부분이 list 돌아가는 for문 --%>
		<c:forEach var="store" items="${slist}">
			<div class="list_div">
			<a href='/acc/cont?detail_cate=${detail_cate}&store_num=${store.store_num}'>
			<img src="/upload/store_logo${store.store_logo}"></a>
			<%-- 여기 10의 값은 임의의 값 --%>
			<div class="list_cont">
				<div class="shop_Name">
					<h3>${store.store_name }</h3>
				</div>
				
				<p>등급미정</p>
				<p>${store.store_addr1} ${store.store_addr2}</p>
				<br>
				<p>자가 무료주차 가능</p>
			</div>
			<div class="list_cont2">
				<h2>75,000원</h2>
				<p>★★★★☆</p>
				<p>리뷰 196</p>
				<div class="shop_JJim">
					<button type="button" onclick="imgToggle()">
					<img src="../images/acc/NoJJim.png" id="no">
					<img src="../images/acc/YesJJim.png" id="yes">
					</button>
				</div>
				
			</div>
			
			
			</div>
			<hr>
		</c:forEach>
	
	
	
	<p class="page_number"> 1 | 2 | 3 | 4 | 5 </p>
	
	</div>
	
	
	</div>
</div>
	
<jsp:include page="../main/footer.jsp"/>