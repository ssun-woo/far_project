/**
 * ad_coupon_regis.js
 */

function coupon_regis_write_check() {
	if($.trim($("#couponName").val())== ""){
		alert("쿠폰 이름을 입력하세요.");
		$("#couponName").val("").focus();
		return false;
	}
	
	if($.trim($("#couponDiscountrate").val())== ""){
		alert("쿠폰 할인율을 입력하세요.");
		$("#couponDiscountrate").val("").focus();
		return false;
	}
	
	if($.trim($("#couponStartDate").val())== ""){
		alert("쿠폰 발급일을 입력하세요.");
		$("#couponStartDate").val("").focus();
		return false;
	}
	
	if($.trim($("#couponEndDate").val())== ""){
		alert("쿠폰 만료일을 입력하세요.");
		$("#couponEndDate").val("").focus();
		return false;
	}
}