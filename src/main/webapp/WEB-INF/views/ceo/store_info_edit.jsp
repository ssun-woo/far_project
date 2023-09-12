<%@ page contentType="text/html; charset=UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<script src="../js/jquery.js"></script>
<script src="../js/store_main.js"></script>
<link rel="stylesheet" type="text/css" href="../css/store_info_edit.css">

	<div class="infoRegisForm">
		<h2>가게 소개글 · 주소 수정하기</h2>
		<hr>
		<form method="post" onsubmit="return info_regis_write_check();">
			<div class="storeInfo">
				<label>가게 소개글</label>
				<textarea id="storeIntroEdit" name="storeIntroEdit" rows="3"
					placeholder="가게를 소개하는 글을 입력해주세요."></textarea>
			</div>

			<div class="storeInfo">
				<label>가게 주소</label>
				<div class="storeAddressEditArea">
					<div class="storeAddressEditF">
						<input type="text" id="storeAddressEditFirst"
							placeholder="주소 검색">
						<!-- <button id="storeAddressEditSearchBtn">주소 검색</button> -->
					</div>
				</div>
				<div class="storeAddressEditS">
					<input type="text" id="storeAddressEditSecond"
						placeholder="상세주소">
				</div>
				
				<!-- <input type="text" id="storeAddressEdit" name="storeAddressEdit"
					placeholder="가게 주소를 입력해주세요."> -->
			</div>

			<div class="storeInfoButton">
				<button type="submit" class="storeInfoBtn">제출</button>
			</div>
		</form>
	</div>

<!-- <jsp:include page="../main/footer.jsp"/> -->