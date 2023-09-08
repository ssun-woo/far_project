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
	  
	 <br>
	 
	 

	
	</div>
	<div class="list_page">
	<div class="list_top">
	<ul>
		<li><img src="/images/culture/play.png"><a href="#"></a></li>
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
		
		<a href='rest_completed.jsp'><img src="/images/culture/exhibition01.png"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3> 거장의 시선, 사람을 향하다 - 영국 내셔널갤러리 명화전 </h3>
			</div>
			
			<p>국립중앙박물관 기획전시실</p>
			<p>2023.06.02~2023.10.09</p>
			<p>전체관람가</p>
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
		
		<a href='rest_completed.jsp'><img src="/images/culture/exhibition02.png"></a>
		<div class="culture_cont">
			<div class="culture_Name">
				<h3> 더현대서울 프랑스국립현대미술관전 : 라울 뒤피 </h3>
			</div>
			
			<p>더현대서울 6층 ALT.1</p>
			<p>2023.05.17~2023.09.06</p>
			<p>전체관람가</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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
				<h3>전시 제목</h3>
			</div>
			
			<p>장소</p>
			<p>기간</p>
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