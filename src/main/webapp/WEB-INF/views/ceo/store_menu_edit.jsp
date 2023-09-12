<%@ page contentType="text/html; charset=UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<script src="../js/jquery.js"></script>
<script src="../js/store_main.js"></script>
<link rel="stylesheet" type="text/css" href="../css/store_menu_edit.css">

	<div class="menuEditForm">
		<h2>메뉴 수정하기</h2>
		<hr>
		<form action="post" onsubmit="return menu_edit_write_check();">
			<div class="menuEdit">
				<label>메뉴 선택</label>
				<select id="menuSelect" name="menuSelect">
					<option value="">수정하려는 메뉴를 선택하세요.</option>
					<option value="menu1">메뉴 1</option>
					<option value="menu2">메뉴 2</option>
					<option value="menu3">메뉴 3</option>
					<option value="menu4">메뉴 4</option>
				</select>
			</div>
			
			<div class="menuEdit">
				<label>수정할 메뉴 이름</label>
				<div class="menuEditPlus">
					<input type="text" id="newMenu" name="newMenu">
					<button type="button" class="loadExistingBtn" onclick="loadExistingData()">기존과 동일</button>
				</div>
			</div>
			
			<div class="menuEdit">
				<label>수정할 메뉴 가격</label>
				<div class="menuEditPlus">
					<input type="text" id="newPrice" name="newPrice">
					<button type="button" class="loadExistingBtn" onclick="loadExistingData()">기존과 동일</button>
				</div>
			</div>
			
			<div class="menuEdit">
				<label>수정할 메뉴 소개</label>
				<div class="menuEditPlus">
					<textarea id="newMenuInfo" name="newMenuInfo" rows="3"></textarea>
					<button type="button" class="loadExistingBtn" onclick="loadExistingData()">기존과 동일</button>
				</div>
			</div>
			
			<div class="menuEdit">
				<label>수정할 메뉴 사진</label>
				<div class="menuEditPlus">
					<input type="file" id="newMenuImage" name="newMenuImage">
					<button type="button" class="loadExistingBtn" onclick="loadExistingData()">기존과 동일</button>
				</div>
			</div>
			
			<div class="menuEditButton">
				<button type="submit" class="menuEditBtn">수정</button>
			</div>
		</form>
	</div>

<!-- <jsp:include page="../main/footer.jsp"/> -->