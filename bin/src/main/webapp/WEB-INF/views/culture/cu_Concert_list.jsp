<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../main/header2.jsp"/>
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
			<script src="/js/price_range.js"></script>
	</div>
	 	
	 	
	 	
	 	 
	 	
	 </div>
	 
	 <div class="price_input">
	 		<input type="text" name="min_price" class="text_box" value="10000">
	 		~
	 		<input type="text" name="max_price" class="text_box" value="16000000">
	 	</div> 
	 <hr>
	 
	 <div class="grade option">
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
	  <div class="theme option">
	 	<h4>장르</h4>
	 		<input type="checkbox" name="all3" onclick="allselect3(this.checked);">
	 		<label>전체</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>발라드</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>락/메탈</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>랩/힙합</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>재즈/소울</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>포크/트로트</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>내한공연</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>페스티벌</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>팬클럽</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>인디</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>토크/강연</label>
	 		
	 </div>
	 <br>
	 
	 

	
	</div>
	<div class="list_page">
	<div class="list_top">
	<ul>
		<li><img src="/images/culture/concert.png"><a href="#"></a></li>
		<li class="region_name"> 서울 (전체)</li>
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
		<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/concert01.png"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>2023 PALMTREEISLAND 2nd GALA CONCERT</h3>
			</div>
			
			<p>세종문화회관 대극장</p>
			<p>2023.09.22~2023.09.24</p>
			<p>150분</p>
			<p>8세이상 관람가능</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/concert02.png"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>〈미스터트롯2〉 전국투어 콘서트 - 앵콜</h3>
			</div>
			
			<p>경희대학교 평화의 전당</p>
			<p>2023.10.07~2023.10.08</p>
			<p>150분</p>
			<p>미취학아동입장불가</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<div class="culture_div">
		
		<a href='rest_completed.jsp'><img src="/images/culture/C.PNG"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>콘서트 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
			<p>공연시간</p>
			<p>기타</p>
		</div>
		<div class="culture_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 843</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="/images/acc/NoJJim.png" id="no">
				<img src="/images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	<hr>
	<p class="page_number"> 1 | 2 | 3 | 4 | 5 </p>
	
	</div>
	
	
	</div>
</div>
	
<jsp:include page="../main/footer.jsp"/>