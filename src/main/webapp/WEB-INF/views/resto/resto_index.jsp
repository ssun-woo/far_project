<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header.jsp"/>

<div class="rest_list">
	<div class="rest_list01">
		<a href="/resto/list?cate=korean">
			<img src="../images/restaurant/korean_food.png" alt="한식" width="70px" height="60px">
			<p>한식</p>
		</a>
	</div>
	<div class="rest_list02">
		<a href="/resto/list?cate=western">
			<img src="../images/restaurant/western_food.png" alt="양식" width="70px" height="60px">
			<p>양식</p>
		</a>
	</div>
	<div class="rest_list03">
		<a href="/resto/list?cate=japanese">
			<img src="../images/restaurant/japanese_food.png" alt="일식" width="70px" height="60px">
			<p>일식</p>
		</a>
	</div>
	<div class="rest_list04">
		<a href="/resto/list?cate=chinese">
			<img src="../images/restaurant/chinese_food.png" alt="중식" width="70px" height="60px">
			<p>중식</p>
		</a>
	</div>
	<div class="rest_list05">
		<a href="/resto/list?cate=asian">
			<img src="../images/restaurant/asian_food.png" alt="아시안" width="70px" height="60px">
			<p>아시안</p>
		</a>
	</div>
	
	<div class="rest_list06">
		<a href="/resto/list?cate=mexican">
			<img src="../images/restaurant/mexican_food.png" alt="멕시칸" width="70px" height="60px">
			<p>멕시칸</p>
		</a>
	</div>
</div>
<main class="mainEv">
 	<section class="eventMs">
		<div>
			<a href="https://google.com"> <img
				src="/images/ev_images/intev1.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.naver.com"> <img
				src="/images/ev_images/intev2.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.yanolja.com"> <img
				src="/images/ev_images/intev3.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.goodchoice.kr"> <img
				src="/images/ev_images/intev4.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.airbnb.co.kr"> <img
				src="/images/ev_images/intev5.avif" alt="">
			</a>
		</div>
		<div>
			<a href="https://www.airbnb.co.kr"> <img
				src="/images/ev_images/intev6.avif" alt="">
			</a>
		</div>
	</section>

	<script type="text/javascript">
		$('.eventMs').slick({
			slidesToShow : 2,
			slidesToScroll : 1,
			autoplay : true,
			autoplaySpeed : 12000,
		});
	</script>
	
	
<jsp:include page="../main/footer.jsp"/>
</main>