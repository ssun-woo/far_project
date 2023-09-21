<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp"/>

<div class="payment_msg">
		<h1>예약이 완료됐습니다</h1>
	</div>
<div class="payment_end">
	
	
	<div class="payment_product">
		<table width="100%">
			<tr>
				<th>
					<div class="product_img">
						<img src="../images/cute.png">
					</div>
				</th>
			</tr>
			<tr>
				<td>예약기간(일)</td>
			</tr>
			
			<tr>
				<td>가게 및 상품</td>
			</tr>
			
			<tr>
				<td>결제 금액</td>
			</tr>
			
			<tr style="height: 60px;">
				<th colspan="2">
					<input type="button" value="최근 예약 내역" class="reservation_list">
					<input type="button" value="결제 상세 정보" class="pay_details">
				</th>
			</tr>
		</table>
	</div>

</div>

<jsp:include page="../main/footer.jsp"/>
