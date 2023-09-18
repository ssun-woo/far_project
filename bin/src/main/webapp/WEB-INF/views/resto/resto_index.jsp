<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp"/>

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
<div class="main">
 <section class="eventMs">
		<div>
			<img src="../images/ev_images/sup01.jpg" alt="">
		</div>
		<div>
			<img src="../images/ev_images/sup02.jpg" alt="">
		</div>
		<div>
			<img src="../images/ev_images/sup03.jpg" alt="">
		</div>
		<div>
			<img src="../images/ev_images/sup04.jpg" alt="">
		</div>
		<div>
			<img src="../images/ev_images/sup05.jpg" alt="">
		</div>
	</section>

	<script type="text/javascript">
		$('.eventMs').slick({
			slidesToShow : 1,
			slidesToScroll : 1,
			autoplay : true,
			autoplaySpeed : 12000,
		});
	</script>
</div>
<jsp:include page="../main/footer.jsp"/>