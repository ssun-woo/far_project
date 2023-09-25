<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:include page="admin_header.jsp"/>

<section id="adCouponSection">
	<h3 id="adCouponTitle">[쿠폰 등록]</h3>
	<div class="adminCouponRegistrationForm">
		<form action="adminCouponRegisOk" onsubmit="return coupon_regis_write_check();" method="post">
			<div class="CouponRegistration">
				<label>쿠폰 이름</label>
				<input type="text" id="couponName" name="couponName">
			</div>
			
			<div class="CouponRegistration">
				<label>할인율 <span style="font-size: 13px;">(할인금액 또는 백분율 입력)</span></label>
				<input type="text" id="couponDiscountrate" name="couponDiscountrate">
			</div>
			
			<div class="CouponRegistration">
				<label>쿠폰 발급일 <span style="font-size: 13px;">(YYYY-MM-DD)</span></label>
				<input type="text" id="couponStartDate" name="couponStartDate">
			</div>
			
			<div class="CouponRegistration">
				<label>쿠폰 만료일 <span style="font-size: 13px;">(YYYY-MM-DD)</span></label>
				<input type="text" id="couponEndDate" name="couponEndDate">
			</div>
			
			<div class="CouponRegistrationButton">
				<button type="submit" class="CouponRegistrationBtn">등록하기</button>
			</div>
		</form>
	</div>
</section>


<jsp:include page="admin_footer.jsp"/>