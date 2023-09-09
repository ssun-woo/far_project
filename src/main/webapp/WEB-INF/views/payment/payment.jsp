<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							<img src="../images/cute.png">
						</div>
					</th>
					<td>가게 이름</td>
				</tr>

				<tr>
					<td>가게 주소</td>
				</tr>

				<tr>
					<td>상세 메뉴</td>
				</tr>

			</table>
		</div>
	</div>
		
	<div class="title">
				<h3>할인 및 포인트</h3>
			</div>
	<div class="pay_dcInfo">
	
		<div class="dc_point">
			
			<div class="info">
				<table class="table1">
					<tr>
						<th style="text-align: left;">쿠폰 할인</th>
						<td style="text-align: right;">
						<select>
								<option>사용하실 쿠폰을 선택해주세요</option>
								<option>쿠폰1</option>
								<option>쿠폰2</option>
								<option>쿠폰3</option>
								<option>쿠폰4</option>
								<option>쿠폰5</option>
						</select>
						</td>

					</tr>
				</table>

				<table class="table2">
					<tr>
						<th colspan="3" style="text-align: left">포인트 할인</th>
					</tr>

					<tr>
						<td rowspan="2"></td>
						<td width="10%" style="text-align: right;">보유</td>
						<td style="text-align: right;">(갖고있는 포인트)</td>
					</tr>

					<tr>
						<td width="10%" style="text-align: right;">사용</td>
						<td style="text-align: right;">(사용할 포인트)</td>
						<td width="90px">
							<input type="button" value="전액 사용">
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div class="pay_total">
			<div class="title">
				<h4>결제상세</h4>
			</div>

			<div class="info2">
				<table>
					<tr>
						<th style="text-align: left;">주문금액</th>
						<th style="text-align: right;">(정가)원</th>
					</tr>

					<tr>
						<td>상품금액</td>
						<td style="text-align: right;">(원래가격)원</td>
					</tr>

					<tr>
						<td>쿠폰할인</td>
						<td style="text-align: right;">(쿠폰할인금액)원</td>
					</tr>

					<tr>
						<td>포인트할인</td>
						<td style="text-align: right;">(포인트할인금액)원</td>
					</tr>
					
					<tr>
						<td colspan="2"><hr></td>
					</tr>
					
					<tr>
						<th style="text-align: left;">(결제수단)</th>
						<th style="text-align: right;">(총금액)원</th>
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
		<input type="button" value="결제하기" class="payment_button" onclick="location='/acc/payment_end?cate=${cate}&store_num=${store_num}';"> 
		<input type="button" value="취소" class="cancle_button">
	</div>

</div>

<jsp:include page="../main/footer.jsp" />