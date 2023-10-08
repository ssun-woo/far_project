<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:include page="../main/header.jsp" />

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

		<div class="storeRegistrationForm">
			<h2>업체 등록하기</h2>
			<hr>
			<form method="post" action="store_registration_ok" onsubmit="return store_regis_write_check();">
				<div class="storeRegistration">
					<label>업소 선택</label> <select id="typeSelect1" name="cate"
						onchange="onchange_select()">
						<option value="none">선택하세요</option>
						<option value="acc">숙소</option>
						<option value="resto">식당</option>
						<option value="culture">문화</option>
						<option value="beauty">뷰티</option>
					</select> <label>세부 선택</label> <select id="typeSelect2" name="detail_cate"
						disabled="disabled">
						<option value="none">업소를 먼저 선택해 주세요</option>
					</select>
				</div>

				<div class="storeRegistration">
					<label>업체 이름</label> <input type="text" id="storeName"
						name="store_name" placeholder="가게 이름을 입력해주세요.">
				</div>

				<div class="storeRegistration">
					<label>업체 소개글</label>
					<textarea id="storeIntro" name="store_intro" rows="3"
						placeholder="가게를 소개하는 글을 입력해주세요."></textarea>
				</div>
				

				<div class="form-group storeRegistration">
					<label for="typeSelect2">세부 선택</label> <select class="form-control"
						id="typeSelect2" name="detail_cate" disabled="disabled">
						<option value="none">업소를 먼저 선택해 주세요</option>
					</select>
				</div>

				<div class="form-group storeRegistration">
					<label for="storeName">업체 이름</label> <input type="text"
						class="form-control" id="storeName" name="store_name"
						placeholder="가게 이름을 입력해주세요.">
				</div>

				<div class="form-group storeRegistration">
					<label for="storeIntro">업체 소개글</label>
					<textarea class="form-control" id="storeIntro" name="store_intro"
						rows="3" placeholder="가게를 소개하는 글을 입력해주세요."></textarea>
				</div>

				<div class="form-group storeRegistration">
					<label>업체 주소</label>
					<div class="storeAddressArea">
						<div class="storeAddressF">
							<input type="text" class="form-control" id="storeAddressFirst"
								name="store_addr1" placeholder="주소 검색">
							<!-- <button id="storeAddressSearchBtn">주소 검색</button> -->
						</div>
					</div>
					<div class="storeAddressS">
						<input type="text" class="form-control" id="storeAddressSecond"
							name="store_addr2" placeholder="상세주소">
					</div>
				</div>

				<div class="form-group storeRegistration">
					<label for="businessRegistrationNumber">사업자등록번호</label> <input
						type="text" class="form-control" id="businessRegistrationNumber"
						name="reg_num" placeholder="사업자등록번호를 입력해주세요.">
				</div>

				<div class="form-group storeRegistration">
					<label for="logoImage">로고 이미지 첨부</label> <input type="file"
						class="form-control-file" id="logoImage" name="logo_image">
				</div>

				<div class="form-group storeRegistrationButton">
					<button type="submit" class="btn btn-primary storeRegistrationBtn">등록하기</button>
				</div>
			</form>
		</div>


<jsp:include page="../main/footer.jsp" />
