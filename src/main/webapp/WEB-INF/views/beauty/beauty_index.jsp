<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header.jsp" />

<div class="beauty_list">
	
	<div class="beauty_list01">
		<a href="#">
			<img src="../images/beauty/hairshop2.png" alt="미용실" width="70px" height="60px">
			<p>헤어샵</p>
		</a>
	</div>
	<div class="beauty_list02">
		<a href="#">
			<img src="../images/beauty/nail.png" alt="네일" width="70px" height="60px">
			<p>네일</p>
		</a>
	</div>
	<div class="beauty_list03">
		<a href="#">
			<img src="../images/beauty/eyebrow.png" alt="눈썹" width="70px" height="60px">
			<p>눈썹</p>
		</a>
	</div>
	<div class="beauty_list04">
		<a href="#">
			<img src="../images/beauty/body_care.png" alt="바디" width="70px" height="60px">
			<p>바디</p>
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