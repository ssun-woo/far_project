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
						<h2>메뉴 등록하기</h2>
						<hr>

						<form method="post" action="/ceo/store_menu_regis_ok"
							onsubmit="return menu_regis_write_check();"
							enctype="multipart/form-data">
							<input type="hidden" name="store_num" value="${param.store_num}">
							<div class="menuRegis">
								<label>메뉴 이름</label>
								<div class="menuRegisPlus">
									<input type="text" id="newMenuRegis" name="menu_name">
								</div>
							</div>

							<div class="menuRegis">
								<label>메뉴 가격</label>
								<div class="menuRegisPlus">
									<input type="text" id="newPriceRegis" name="menu_price">
								</div>
							</div>

							<div class="menuRegis">
								<label>메뉴 소개</label>
								<div class="menuRegisPlus">
									<textarea id="newMenuInfoRegis" name="menu_explain" rows="3"></textarea>
								</div>
							</div>

							<div class="menuRegis">
								<label>메뉴 사진</label>
								<div class="menuRegisPlus">
								 <img id="imagePreview"
										src="#" alt="미리보기"
										style="display: none; max-width: 200px; max-height: 200px;">
									<input type="file" id="newMenuImageRegis" name="menu_photo"
										onchange="previewImage(this);">
								</div>
							</div>

							<div class="menuRegisButton">
								<button type="submit" class="menuRegisBtn">등록</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
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
};
</script>


<jsp:include page="ceo_footer.jsp" />
