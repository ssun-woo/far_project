<%@ page contentType="text/html; charset=UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<script src="../js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="../css/store_registration.css">

	<div class="storeRegistrationForm">
		<h2>업체 등록하기</h2>
		<hr>
		<form method="post" onsubmit="return store_regis_write_check();">
			<div class="storeRegistration">
				<label>업소 선택</label>
				<select id="typeSelect1" onchange="onchange_select();">
					<option value="none">선택하세요</option>
					<option value="A">숙소</option>
					<option value="B">식당</option>
					<option value="C">문화</option>
					<option value="D">뷰티</option>
				</select>
				
				<label>세부 선택</label>
				<select id="typeSelect2" disabled="disabled">
					<option value="none">업소를 먼저 선택해 주세요</option>
				</select>
			</div>
			
			<div class="storeRegistration">
				<label>업체 이름</label>
				<input type="text" id="storeName" name="storeName"
					placeholder="가게 이름을 입력해주세요.">
			</div>
			
			<div class="storeRegistration">
				<label>업체 소개글</label>
				<textarea id="storeIntro" name="storeIntro" rows="3"
					placeholder="가게를 소개하는 글을 입력해주세요."></textarea>
			</div>

			<div class="storeRegistration">
				<label>업체 주소</label>
				<div class="storeAddressArea">
					<div class="storeAddressF">
						<input type="text" id="storeAddressFirst"
							placeholder="주소 검색">
						<!-- <button id="storeAddressSearchBtn">주소 검색</button> -->
					</div>
				</div>
				<div class="storeAddressS">
					<input type="text" id="storeAddressSecond"
						placeholder="상세주소">
				</div>
				
				<!-- <input type="text" id="storeAddress" name="storeAddress"
					placeholder="가게 주소를 입력해주세요."> -->
			</div>
			
			<div class="storeRegistration">
				<label>사업자등록번호</label>
				<input type="text" id="businessRegistrationNumber" name="businessRegistrationNumber"
					placeholder="사업자등록번호를 입력해주세요.">
			</div>
			
			<!-- 
			<div class="storeRegistration">
				<label>사업자등록증 첨부 : </label>/
				<input type="file" id="businessRegistrationImage" name="businessRegistrationImage">
			</div>
			 -->

			<div class="storeRegistration">
				<label>로고 이미지 첨부</label>
				<input type="file" id="logoImage" name="logoImage">
			</div>
			
			<div class="storeRegistration">
				<label>메뉴판 이미지 첨부</label>
				<input type="file" id="menuImage" name="menuImage">
			</div>
			
			<div class="storeRegistrationButton">
				<button type="submit" class="storeRegistrationBtn">제출</button>
			</div>
		</form>
	</div>
	<script src="../js/store_main.js"></script>

	
<!-- <jsp:include page="../main/footer.jsp"/> -->