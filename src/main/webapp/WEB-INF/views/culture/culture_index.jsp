<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp" />


<div class="culture_list">
	
	<div class="culture_list01">
		<a href="all_list/consert">
			<img src="../images/culture/concert.png" alt="콘서트" width="70px" height="60px">
			<p>콘서트</p>
		</a>
	</div>
	<div class="culture_list02">
		<a href="all_list/play">
			<img src="../images/culture/play.png" alt="연극" width="70px" height="60px">
			<p>연극</p>
		</a>
	</div>
	<div class="culture_list03">
		<a href="all_list/musical">
			<img src="../images/culture/musical.png" alt="뮤지컬" width="70px" height="60px">
			<p>뮤지컬</p>
		</a>
	</div>
	<div class="culture_list04">
		<a href="all_list/exhibition">
			<img src="../images/culture/exhibition.png" alt="전시회" width="70px" height="60px">
			<p>전시회</p>
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