<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	 <br>
	
	 

	
	</div>
	<div class="list_page">
	<div class="list_top">
	<ul>
		<li><img src="../images/restaurant/asian_food.png"><a href="#"></a></li>
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
		<div class="list_div">
		
		<a href="/resto/cont?cate=korean&page=3&no=34"><img src="../images/restaurant/asian01.png"></a>
		<div class="list_cont">
			<div class="shop_Name">
				<h3>아시안쿠진 경복궁점</h3>
			</div>
			
			<p>서울 종로구 자하문로1길 7-1</p>
			<br>
			<p>15:00-17:00 브레이크타임</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 592</p>
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
			
		</div>
		
		
		</div>
	
	
	<hr>
	<div class="list_div">
		
		<a href='rest_completed.jsp'><img src="../images/restaurant/asian02.png"></a>
		<div class="list_cont">
			<div class="shop_Name">
				<h3>홈보이서울</h3>
				
			</div>
			<p>서울특별시 종로구 사직로 127-14 1층  홈보이서울</p>
			<br>
			<p>15:00-17:00 브레이크 타임</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>★★★★☆</p>
			<p>리뷰 889</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle2()">
				<img src="../images/acc/NoJJim.png" id="no2">
				<img src="../images/acc/YesJJim.png" id="yes2">
			</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle3()">
				<img src="../images/acc/NoJJim.png" id="no3">
				<img src="../images/acc/YesJJim.png" id="yes3">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
				</button>
			</div>
		</div>
		
		</div>
	<hr>
	<div class="list_div">
		
		<img src="../images/restaurant/R.PNG">
		<div class="list_cont">
			<div class="shop_Name">
				<h3>식당이름</h3>
			</div>
			<p>주소</p>
			<br>
			<p>특이사항</p>
		</div>
		<div class="list_cont2">
			<br>
			<p>별점</p>
			<p>리뷰</p>
			
			<div class="shop_JJim">
				<button type="button" onclick="imgToggle()">
				<img src="../images/acc/NoJJim.png" id="no">
				<img src="../images/acc/YesJJim.png" id="yes">
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