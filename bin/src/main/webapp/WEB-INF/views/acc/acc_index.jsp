<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp"/>

<div class="acc_list">
	
	<div class="acc_list01">
		<a href="/acc/list?cate=hotel">
			<img src="../images/acc/hotel.png" alt="호텔" width="70px" height="60px">
			<p>호텔</p>
		</a>
	</div>
	<div class="acc_list02">
		<a href="/acc/list?cate=motel">
			<img src="../images/acc/motel.png" alt="모텔" width="70px" height="60px">
			<p>모텔</p>
		</a>
	</div>
	<div class="acc_list03">
		<a href="/acc/list?cate=pension">
			<img src="../images/acc/pool_house.png" alt="펜션/풀빌라" width="70px" height="60px">
			<p>펜션/풀빌라</p>
		</a>
	</div>
	<div class="acc_list04">
		<a href="/acc/list?cate=camping">
			<img src="../images/acc/camping.png" alt="글램핑/캠핑" width="70px" height="60px">
			<p>글램핑/캠핑</p>
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