<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="../js/store_main.js"></script>

<jsp:include page="ceo_header.jsp" />
<style>
table {
	width: 100%;
}

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
						<ul>
							<li class="storeRegistrationMain"
								onclick="location='/ceo/store_regi'">업체 등록</li>
							<li class="storeMenuRegis" onclick="location='/ceo/store_list'">메뉴
								등록 및 수정</li>
							<li class="storeInfoEdit" onclick="loadStorePage2('info_edit')">소개글
								및 정보 수정</li>
						</ul>
					</div>
				</div>
				<div id="storeContentArea">
					<div class="menuRegisForm">
						<h2>메뉴 수정하기</h2>
						<hr>
						<h4>store_num : ${param.store_num}</h4>

						<form method="post" action="/ceo/store_menu_edit_ok"
							onsubmit="return menu_regis_write_check2();"
							enctype="multipart/form-data">
							<input type="hidden" name="store_num" value="${param.store_num}">
							<input type="hidden" name="menu_id" value="${param.menu_id}">
							<input type="hidden" name="isChecked" id="isChecked" value="">

							<div class="menuRegis">
								<label>메뉴 이름</label>
								<div class="menuRegisPlus">
									<input type="text" id="newMenuRegis" name="menu_name"
										value="${m.menu_name}">
								</div>
							</div>

							<div class="menuRegis">
								<label>메뉴 가격</label>
								<div class="menuRegisPlus">
									<input type="text" id="newPriceRegis" name="menu_price"
										value="${m.menu_price}">
								</div>
							</div>

							<div class="menuRegis">
								<label>메뉴 소개</label>
								<div class="menuRegisPlus">
									<textarea id="newMenuInfoRegis" name="menu_explain" rows="3">${explain}</textarea>
								</div>
							</div>

							<div class="menuRegis">
								<label>이전 사진</label>
								<div class="menuRegisPlus">
									<img id="imagePreview" name="menu_photo2"
										src="/upload/store_menu/${s.cate}${m.menu_photo}" alt="미리보기"
										style="max-width: 200px; max-height: 200px;">
								</div>
							</div>

							<div class="menuRegis">
								<label>바꿀 사진</label>
								<div class="menuRegisPlus">
									<img id="imagePreview2" src="#" alt="미리보기" style="display: none; max-width: 200px; max-height: 200px;">
									<input type="file" id="EditMenuImageRegis" name="menu_photo2"
										onchange="previewImage2(this);">
								</div>
								<div>
								기존과 동일<input type="checkbox" id="sameAsPrevious" onchange="applyImageChanges();" value=""> 
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
</div>
<script>
var isChecked = document.getElementById('isChecked');
isChecked.value = 0;

// 파일 선택 시 이미지 미리보기
function previewImage(input) {
    var imagePreview = document.getElementById('imagePreview');
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
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
        reader.onload = function (e) {
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
        newMenuImageRegis.style.display='none';
        isChecked.value = 1;
    } else {
        // '기존과 동일' 체크박스가 체크 해제된 경우
        imagePreview.style.display = 'block'; // '이전 사진' 이미지 보이기
        imagePreview2.style.display = 'none'; // '바꿀 사진' 이미지 숨김
        newMenuImageRegis.style.display='block';
        isChecked.value = 0;
    }
}
</script>

<jsp:include page="ceo_footer.jsp" />
