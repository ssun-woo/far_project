<%@ page contentType="text/html; charset=UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<script src="../js/jquery.js"></script>
<script src="../js/store_main.js"></script>
<link rel="stylesheet" type="text/css" href="../css/store_menu_regis.css">

	<div class="menuRegisForm">
		<h2>메뉴 등록하기</h2>
		<hr>
		<form action="post" onsubmit="return menu_regis_write_check();">
			<div class="menuRegis">
				<label>메뉴 이름</label>
				<div class="menuRegisPlus">
					<input type="text" id="newMenuRegis" name="newMenuRegis">
				</div>
			</div>
			
			<div class="menuRegis">
				<label>메뉴 가격</label>
				<div class="menuRegisPlus">
					<input type="text" id="newPriceRegis" name="newPriceRegis">
				</div>
			</div>
			
			<div class="menuRegis">
				<label>메뉴 소개</label>
				<div class="menuRegisPlus">
					<textarea id="newMenuInfoRegis" name="newMenuInfoRegis" rows="3"></textarea>
				</div>
			</div>
			
			<div class="menuRegis">
				<label>메뉴 사진</label>
				<div class="menuRegisPlus">
					<input type="file" id="newMenuImageRegis" name="newMenuImageRegis">
				</div>
			</div>
			
			<div class="menuRegisButton">
				<button type="submit" class="menuRegisBtn">등록</button>
			</div>
		</form>
	</div>

<!-- <jsp:include page="../main/footer.jsp"/> -->