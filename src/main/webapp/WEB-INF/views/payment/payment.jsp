<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../main/new_header2.jsp" />

<div class="payment">
	<div class="title">
		<h3>예약정보</h3>
	</div>
	
	<div class="pay_storeInfo">
		<div class="info">
			<table> 
				<tr>
					<th rowspan="3" width="150px" height="150px">
						<div>
							<img src="/upload/store_menu/${store.cate}${room.roomPhoto}">
						</div>
					</th>
					<td>가게 이름 : ${store.storeName}</td>
				</tr>

				<tr>
					<td>가게 주소 : ${store.storeAddr1} ${store.storeAddr2}</td>
				</tr>

				<tr>
					<td>상세 메뉴 : ${room.roomName}</td>
				</tr>
			</table>
		</div>
	</div>
	   
	<div class="title">
		<h3>할인 및 포인트</h3>
		<button id="getCoupon">20% 할인 쿠폰 발급</button>
	</div>

	<div class="pay_dcInfo">
		<div class="dc_point">
			<div class="info">
				<table class="table1">
					<tr>
						<th style="text-align: left;">쿠폰 할인</th>
						<td style="text-align: right;">
               
							<select id="couponSelect" onchange="handleCouponChange()">
							   <option value="0">사용하실 쿠폰을 선택해주세요</option>
                     
								<c:forEach items="${coupons}" var="coupon">
									<option value="${coupon.couponNum}" data-discount-rate="${coupon.couponDiscountrate}">
										${coupon.couponName} (${coupon.couponStartDate}~${coupon.couponEndDate})
									</option>
								</c:forEach>
							</select>
                  
						</td>
					</tr>
				</table>
      
				<script>
					$(document).ready(function() {
						$("#getCoupon").click(function() {
							//var mem_id = "${mem_id}";
							//var coupon_name = "${coupon_name}";
							var mem_id = "sunwoo";
							var coupon_name = "20% 할인 쿠폰";
                  
							// ajax 요청 보내기
							$.ajax({
								type: "POST",
								url: "/payment/couponIssue",
								data: {"coupon_name" : coupon_name},
								success: function(date) {
							      	// 서버로부터 받은 응답을 처리
							      	console.log(date);
							      	console.log(coupon_name);
							      	console.log("aaa");
							      	if (date === "쿠폰이 발급되었습니다.") {
							      	   alert("쿠폰이 발급되었습니다.");
							      	   console.log("bbb");
							      	} else if (date === "이미 쿠폰을 보유하고 있습니다.") {
							      	   alert("이미 쿠폰을 보유하고 있습니다.");
							      	   console.log("ccc");
							      	}
							   	}/* ,
							   	error: function (error) {
							   	   console.error(error);
							   	} */
							});
						});
					});
				</script>
				
				<script>
					// 세 자리마다 콤마 추가
					function numberWithCommas(x) {
						return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					}
				</script>
         		
				<table class="table2">
				   	<tr>
				      	<th colspan="3" style="text-align: left">포인트 할인</th>
					</tr>
				
					<tr>
				   		<td rowspan="2"></td>
				   		<td width="125px" style="text-align: right;">보유 중인 포인트</td>
						<td style="text-align: right;">
							<fmt:formatNumber value="${member.point}" pattern="#,###" />
						</td>
					</tr>
				
					<tr>
				   		<td width="125px" style="text-align: right;">사용할 포인트</td>
						<td style="text-align: right;">
				         	<input type="number" id="pointInput" onchange="updatePointDiscount()" placeholder="사용할 포인트 입력">
				     	</td>
				      	<td width="125px">
				         	<button id="applyPoint">최대 사용</button>
				      	</td>
				   	</tr>
				</table>
			</div>
		</div>

		<script>
			function updatePointDiscount() {
				// 포인트 입력 값 가져오기
				var pointInput = document.getElementById("pointInput");
				var pointValue = parseFloat(pointInput.value);
				var pointDiscount = document.getElementById("pointDiscount");
				
				// e, +, - 입력 불가하도록 처리
		     	pointInput.onkeydown = function(e) {
		     		if(!((e.keyCode > 95 && e.keyCode < 106) || (e.keyCode > 47 && e.keyCode < 58) || e.keyCode == 8)) {
	   			        return false;
	   			    }
		     	}
			 
				// 입력 값이 NaN이면 0으로 초기화
				if (isNaN(pointValue)) {
				    pointValue = 0;
				}
			
				var max_value = Math.min(${member.point}, ${room.roomPrice});	
				
				// 쿠폰 할인을 고려하여 max_value 설정
				if (parseFloat(document.getElementById("couponDiscount").textContent) > 0) {
				    // 쿠폰 할인이 적용된 경우
				    max_value = Math.min(maxDiscountAmount, max_value);
				} else {
				    // 쿠폰 할인이 적용되지 않은 경우
				    max_value = Math.min(${room.roomPrice}, ${member.point});
				}
	
				// 최대값 설정
				pointInput.max = max_value;
				
				// 포인트 할인 금액 계산
				pointDiscount = Math.min(pointValue, maxDiscountAmount);
				pointValue = pointDiscount;
				
				// 최종 결제 금액 계산 (상품금액 - 쿠폰 할인 - 포인트 할인)
				var totalPrice = originPrice - parseFloat(document.getElementById("couponDiscount").textContent)*1000 - pointDiscount;
				console.log(parseFloat(document.getElementById("couponDiscount").textContent));
				
				// 결제 금액이 음수인 경우 0으로 설정
				if (totalPrice < 0) {
				    pointDiscount += totalPrice; // 음수 값만큼 포인트 할인에서 더해주기
				    pointInput.value = pointValue + totalPrice; // 포인트 입력 값도 조정
				    totalPrice = 0;
				}
	
				// 포인트 할인 값을 업데이트, 콤마
				document.getElementById("pointDiscount").textContent = numberWithCommas(pointDiscount) + "원";
				pointDiscount.value = pointDiscount;
				
				// 최종 결제 금액을 업데이트, 콤마
				document.getElementById("totalPrice").textContent = numberWithCommas(totalPrice) + "원";
			}
	   
			var memberPoint = ${member.point};
			var pointInput = document.getElementById("pointInput"); // 포인트 입력 필드
	
			// 포인트 입력 필드 값이 변경될 때 이벤트 처리
			pointInput.addEventListener("input", function () {
				var pointValue = parseFloat(this.value);
				var max_value = parseFloat(this.max);
				
				// 입력 값이 최대값(max_value)보다 크면 최대값으로 설정
				if (pointValue > max_value) {
					this.value = max_value;
		      	}
	
	         	// 포인트 할인 및 결제 금액 업데이트
	         	updatePointDiscount();
	   		});
	   
	     	// 포인트 전액 사용 버튼 클릭 시
	   		document.getElementById("applyPoint").addEventListener("click", function () {
	          	/* pointInput.value = memberPoint; // 포인트 입력 필드에 전체 포인트 값 할당
	         	updatePointDiscount(); // 포인트 할인 및 결제 금액 업데이트 */
	   			var couponDiscount = parseFloat(document.getElementById("couponDiscount").textContent.replace(/[^\d.]/g, '')); // 쿠폰 할인 금액 추출
	   		    var remainingPoint = parseFloat("${member.point}"); // 보유 중인 포인트
	   		    var productPrice = parseFloat("${room.roomPrice != null ? room.roomPrice : 0}"); // 상품 가격

	   		    var adjustedPoint = 0; // pointInput에 설정할 값 초기화

	   		    if (couponDiscount > 0) {
	   		        // 쿠폰을 적용한 경우
	   		        adjustedPoint = Math.min(remainingPoint, productPrice - couponDiscount);
	   		    } else {
	   		        // 쿠폰을 적용하지 않은 경우
	   		        adjustedPoint = Math.min(remainingPoint, productPrice);
	   		    }

	   		    // pointInput 값 설정
	   		    pointInput.value = adjustedPoint;

	   		    // 포인트 할인 및 결제 금액 업데이트
	   		    updatePointDiscount();
	     	});
	  
	     	// 초기 실행
	     	updatePointDiscount();
		</script>
	  
		<div class="pay_total">
			<div class="title">
				<h4>결제상세</h4>
      		</div>
      
      		<script>
	         	// 초기 상품 금액 설정
	         	var originPrice = ${room.roomPrice != null ? room.roomPrice : 0};
         
         		// 최대 할인 가능한 금액 초기화
         		var maxDiscountAmount = originPrice;
         
         		function handleCouponChange() {
            		var selectedOption = document.getElementById("couponSelect");
             		var selectedIndex = selectedOption.selectedIndex;
             		var selectedDiscountRate = parseFloat(selectedOption.options[selectedIndex].getAttribute("data-discount-rate"));
             		var couponDiscountElement = document.getElementById("couponDiscount");

             		// 쿠폰 할인 계산
             		var couponDiscount = 0;
             
              	 	//console.log("원래가격" + originPrice);
             		//console.log(selectedDiscountRate);
             

             		if (selectedDiscountRate < 1 && selectedDiscountRate != 0) {
                		couponDiscount = originPrice * selectedDiscountRate;
             		} else {
             			couponDiscount = selectedDiscountRate;
             		}
         
             		// 쿠폰 할인 금액 업데이트, 콤마
             		if (couponDiscount >= 0) {
               			couponDiscountElement.textContent = numberWithCommas(couponDiscount) + "원";
           			}
             		
             		// 포인트 할인을 다시 계산
             		updatePointDiscount();
         		}
   			</script>
      
      		<div class="info2">
         		<table>
            		<tr>
               			<td>상품금액</td>
               			<td id="productPrice" style="text-align: right;">
                  			<span id="originPrice" style="color: black;">
                  				<script>
                  					var menuPrice = ${room.roomPrice != null ? room.roomPrice : 0};
                  					var formattedPrice = numberWithCommas(menuPrice);
                  					document.write(formattedPrice);
                  				</script>원
                  			</span>
               			</td>
            		</tr>
            		<tr>
               			<td>쿠폰할인</td>
               			<td id="couponDiscount" style="text-align: right;">0원</td>
            		</tr>

            		<tr>
               			<td>포인트할인</td>
               			<td id="pointDiscount" style="text-align: right;">0원</td>
            		</tr>
            
					<tr>
					   	<td colspan="2"><hr></td>
					</tr>
					
					<tr>
					   	<th style="text-align: left;">(결제수단)</th>
					  	<th id="totalAmount" style="text-align: right;">
					  		<span id="totalPrice" style="color: black;">
					  			<script>
						  			var menuPrice = ${room.roomPrice};
						  			var formattedPrice = numberWithCommas(menuPrice);
						  			document.write(formattedPrice);
						  		</script>원
					  		</span>
					  	</th>
					</tr>
         		</table>
      		</div>
   		</div>
	</div>
	
	<div class="title">
		<h3>결제수단</h3>
	</div>

	<div class="pay_means">
		<div class="info">
			대충 결제수단 들어갈 자리
		</div>
	</div>

	<div class="pay_payment">
		<input type="button" value="결제하기" class="payment_button" onclick="location='payment/end';"> 
		<input type="button" value="취소" class="cancle_button">
	</div>
</div>

<jsp:include page="../main/footer.jsp" />