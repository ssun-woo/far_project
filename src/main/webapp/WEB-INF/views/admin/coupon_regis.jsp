<%@ page contentType="text/html; charset=UTF-8"%>

<script src="../js/jquery.js"></script>
<script src="../js/admin/ad_coupon_regis.js"></script>

<div class="adminCouponRegistrationForm">
	<h2>쿠폰 등록하기</h2>
	<hr>
	<form action="post" action="coupon_registration" onsubmit="return coupon_regis_write_check();">
		<div class="CouponRegistration">
			<label>쿠폰 이름</label>
			<input type="text" id="couponName" name="couponName">
		</div>
		
		<div class="CouponRegistration">
			<label>할인율</label>
			<input type="text" id="couponDiscount" name="couponDiscount">
		</div>
		
		<div class="CouponRegistration"> 
			<label>쿠폰 발급일</label>
			<input type="text" id="couponStartDate" name="couponStartDate" placeholder="YY/MM/DD">
		</div>
		
		<div class="CouponRegistration">
			<label>쿠폰 만료일</label>
			<input type="text" id="couponEndDate" name="couponEndDate" placeholder="YY/MM/DD">
		</div>
		
		<div class="CouponRegistrationButton">
			<button type="submit" class="CouponRegistrationBtn">등록하기</button>
		</div>
	</form>
</div>