<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/store_main.js"></script>


<jsp:include page="ceo_header.jsp" />
<style>
 table { 
width: 100%; 
 } *

.first-line { 
text-align: center; 
} 

.menuRegisForm img { 
width: 150px; 
height: 150px;
}  
</style>
<div id="ceo_main">
	<div id="ceo_middle">
		<div id="contentArea">
			<div class="storeMainWrap">
				<div class="storeStickyArea">
					<div class="storeMain">
						<ul class="list-group list-group-flush">
							<li class="storeRegistrationMain list-group-item"
								onclick="location='/ceo/store_regi'"><strong>업체 등록</strong></li>
							<li class="storeMenuRegis list-group-item"
								onclick="location='/ceo/store_list'"><strong>메뉴</strong> 등록
								및 수정</li>
							<li class="storeInfoEdit list-group-item"
								onclick="location='=/ceo/store_info_edit_list'"><strong>소개글</strong>
								및 정보 수정</li>
						</ul>
					</div>
				</div>
				<div id="storeContentArea">
					<div class="menuRegisForm">
						<h2>메뉴 수정하기</h2>
						<hr>

						<form method="post" action="/ceo/store_menu_edit_ok"
							onsubmit="return menu_regis_write_check2();"
							enctype="multipart/form-data">
							<input type="hidden" name="store_num" value="${param.store_num}">
							<input type="hidden" name="menu_id" value="${param.menu_id}">
							<input type="hidden" name="isChecked" id="isChecked" value="">

							<div class="menuRegis">
								<label>이름</label>
								<div class="menuRegisPlus">
									<input type="text" id="newMenuRegis" name="menu_name"
										value="${m.roomName}">
								</div>
							</div>

							<div class="menuRegis">
								<label>가격</label>
								<div class="menuRegisPlus">
									<input type="text" id="newPriceRegis" name="menu_price"
										value="${m.roomPrice}">
								</div>
							</div>

							<div class="menuRegis">
								<label>소개</label>
								<div class="menuRegisPlus">
									<textarea id="newMenuInfoRegis" name="menu_explain" rows="3">${explain}</textarea>
								</div>
							</div>

							<div class="menuRegis">
								<label>체크인</label>
								<div class="menuRegisPlus">
									<select name="check_in_hour">
										<option value="none">시간을 선택해주세요.</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="19">20</option>
										<option value="19">21</option>
									</select> &nbsp;&nbsp; : &nbsp;&nbsp; <select name="check_in_min">
										<option value="none">분을 선택해주세요.</option>
										<option value="00">00</option>
										<option value="30">30</option>
									</select>
								</div>
							</div>

							<div class="menuRegis">
								<label>체크아웃</label>
								<div class="menuRegisPlus">
									<div class="menuRegisPlus">
										<select name="check_out_hour">
											<option value="none">시간을 선택해주세요.</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
										</select> &nbsp;&nbsp; : &nbsp;&nbsp; <select name="check_out_min">
											<option value="none">분을 선택해주세요.</option>
											<option value="00">00</option>
											<option value="30">30</option>
										</select>
									</div>
								</div>
							</div>

							<div class="menuRegis">
								<label>기준인원</label>
								<div class="menuRegisPlus">
									<input type="number" id="standard_num" name="standard_num"
										value="${m.standardNum }">
								</div>
								<label>최대인원</label>
								<div class="menuRegisPlus">
									<input type="number" id="max_num" name="max_num"
										value="${m.maxNum }">
								</div>
							</div>

							<div class="menuRegis">
								<label>이전 사진</label>
								<div class="menuRegisPlus">
									<img id="imagePreview" name="menu_photo2"
										src="/upload/store_menu/${s.cate}${m.roomPhoto}" alt="미리보기"
										style="max-width: 200px; max-height: 200px;">
								</div>
							</div>

							<div class="menuRegis">
								<label>바꿀 사진</label>
								<div class="menuRegisPlus">
									<img id="imagePreview2" src="#" alt="미리보기"
										style="display: none; max-width: 200px; max-height: 200px;">
									<input type="file" id="EditMenuImageRegis" name="menu_photo2"
										onchange="previewImage2(this);">
								</div>
								<div>
									기존과 동일<input type="checkbox" id="sameAsPrevious"
										onchange="applyImageChanges();" value="">
								</div>
							</div>

							<div class="menuRegisButton">
								<button type="submit" class="menuRegisBtn">수정</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="ceo_footer.jsp" />
</div>

<script>
	var isChecked = document.getElementById('isChecked');
	isChecked.value = 0;

	// 파일 선택 시 이미지 미리보기
	function previewImage(input) {
		var imagePreview = document.getElementById('imagePreview');
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				imagePreview.style.display = 'block';
				imagePreview.src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			imagePreview.style.display = 'none';
		}
	}

	function previewImage2(input) {
		var imagePreview = document.getElementById('imagePreview2');
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				imagePreview.style.display = 'block';
				imagePreview.src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			imagePreview.style.display = 'none';
		}
	}

	//'기존과 동일' 체크박스 상태에 따라 이미지 변경 또는 복원
	function applyImageChanges() {
		var sameAsPreviousCheckbox = document.getElementById('sameAsPrevious');
		var imagePreview = document.getElementById('imagePreview');
		var imagePreview2 = document.getElementById('imagePreview2');
		var newMenuImageRegis = document.getElementById('EditMenuImageRegis');

		if (sameAsPreviousCheckbox.checked) {
			// '기존과 동일' 체크박스가 체크된 경우
			imagePreview2.src = imagePreview.src;
			imagePreview2.style.display = 'block'; // '바꿀 사진' 이미지 보이기
			newMenuImageRegis.value = ''; // 파일 선택 input 초기화
			newMenuImageRegis.style.display = 'none';
			isChecked.value = 1;
		} else {
			// '기존과 동일' 체크박스가 체크 해제된 경우
			imagePreview.style.display = 'block'; // '이전 사진' 이미지 보이기
			imagePreview2.style.display = 'none'; // '바꿀 사진' 이미지 숨김
			newMenuImageRegis.style.display = 'block';
			isChecked.value = 0;
		}
	}

	var check_in = '${m.checkIn}';
	var check_in_h = check_in.slice(0, 2);
	var check_in_m = check_in.slice(2, 4);
	var selectInHour = document.getElementsByName("check_in_hour")[0];
	for (var i = 0; i < selectInHour.options.length; i++) {
		if (selectInHour.options[i].value === check_in_h) {
			selectInHour.options[i].selected = true;
			break;
		}
	}
	var selectInMin = document.getElementsByName("check_in_min")[0];
	for (var i = 0; i < selectInMin.options.length; i++) {
		if (selectInMin.options[i].value === check_in_m) {
			selectInMin.options[i].selected = true;
			break;
		}
	}

	var check_out = '${m.checkOut}';
	var check_out_h = check_out.slice(0, 2);
	var check_out_m = check_out.slice(2, 4);
	var outHour = document.getElementsByName("check_out_hour")[0];
	for (var i = 0; i < outHour.options.length; i++) {
		if (outHour.options[i].value === check_out_h) {
			outHour.options[i].selected = true;
			break;
		}
	}
	var outMin = document.getElementsByName("check_out_min")[0];
	for (var i = 0; i < outMin.options.length; i++) {
		if (outMin.options[i].value === check_out_m) {
			outMin.options[i].selected = true;
			break;
		}
	}
</script>


