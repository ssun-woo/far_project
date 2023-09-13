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
	 	<h4>분류</h4>
	 		<input type="checkbox" name="all3" onclick="allselect3(this.checked);">
	 		<label>전체</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>오리지널/내한공연</label> 
	 		<br>
	 		<input type="checkbox" name="theme"> <label>라이센스</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>창작뮤지컬</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>넌버벌 퍼포먼스</label>
	 		<br>
	 		<input type="checkbox" name="theme"> <label>아동/가족</label>
	 		<br>
	 		
	 		
	 </div>
	 <br>
	 
	 

	
	</div>
	<div class="list_page">
	<div class="list_top">
	<ul>
		<li><img src="/images/culture/musical.png"><a href="#"></a></li>
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
		
		<a href='rest_completed.jsp'><img src="/images/culture/musical01.png"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3>뮤지컬 〈오페라의 유령〉 - 서울</h3>
			</div>
			
			<p>샤롯데씨어터</p>
			<p>2023.07.21~2023.11.17</p>
			<p>150분 (인터미션 20분 포함)</p>
			<p>초등학생이상 관람가능</p>
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
		
		<a href='rest_completed.jsp'><img src="/images/culture/musical02.png"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3> 뮤지컬 〈레베카〉 10주년 기념공연 </h3>
			</div>
			
			<p>블루스퀘어 신한카드홀</p>
			<p>2023.08.19~2023.11.19</p>
			<p>175분 (인터미션 20분 포함)</p>
			<p>8세 이상 관람가</p>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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
				<h3>뮤지컬 제목</h3>
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