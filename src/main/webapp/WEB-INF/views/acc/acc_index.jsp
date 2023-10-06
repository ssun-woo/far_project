<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header.jsp" />

<div class="acc_list">

	<div class="acc_list01">
		<a href="/acc/list?detail_cate=hotel"> <img
			src="../images/acc/hotel.png" alt="호텔" width="70px" height="60px">
			<p>호텔</p>
		</a>
	</div>
	<div class="acc_list02">
		<a href="/acc/list?detail_cate=motel"> <img
			src="../images/acc/motel.png" alt="모텔" width="70px" height="60px">
			<p>모텔</p>
		</a>
	</div>
	<div class="acc_list03">
		<a href="/acc/list?detail_cate=pension"> <img
			src="../images/acc/pool_house.png" alt="펜션/풀빌라" width="70px"
			height="60px">
			<p>펜션/풀빌라</p>
		</a>
	</div>
	<div class="acc_list04">
		<a href="/acc/list?detail_cate=camping"> <img
			src="../images/acc/camping.png" alt="글램핑/캠핑" width="70px"
			height="60px">
			<p>글램핑/캠핑</p>
		</a>
	</div>
</div>


<main class="mainEv">

	<section class="evMain">
		<div class="eventMsBox">
			<ul class="eventMs">
				<li><a href=""> <img src="/images/ev_images/intev1.avif"
						alt="">
				</a></li>
				<li><a href=""> <img src="/images/ev_images/intev2.avif"
						alt="">
				</a></li>
				<li><a href=""> <img src="/images/ev_images/intev3.avif"
						alt="">
				</a></li>
				<li><a href=""> <img src="/images/ev_images/intev4.avif"
						alt="">
				</a></li>
				<li><a href=""> <img src="/images/ev_images/intev5.avif"
						alt="">
				</a></li>
				<li><a href=""> <img src="/images/ev_images/intev6.avif"
						alt="">
				</a></li>
			</ul>
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
	<jsp:include page="../main/footer.jsp" />
</main>



