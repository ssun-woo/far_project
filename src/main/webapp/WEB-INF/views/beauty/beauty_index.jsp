<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp" />

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