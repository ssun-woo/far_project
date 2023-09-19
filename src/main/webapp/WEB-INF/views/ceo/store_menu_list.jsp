<%@ page contentType="text/html; charset=UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<script src="../js/jquery.js"></script>
<script src="../js/store_main.js"></script>
<link rel="stylesheet" type="text/css" href="../css/store_menu_regis.css">

	<div class="menuRegisForm">
		<h4>store_num : ${param.store_num}</h4>
		<h1>메뉴 리스트가 출력될 페이지</h1>
		<h1><a onclick="loadStorePage3('${param.store_num}')"> 메뉴등록 </a></h1>
		
		
		
	</div>


	<script>
		function loadStorePage3(store_num){
			var pageContent = document.getElementById('storeContentArea');
			pageContent.innerHTML = '';
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState === 4 && this.status === 200) {
					pageContent.innerHTML = this.responseText;
				}
			};
			xhttp.open("GET", "/ceo/store_menu_regis?store_num=" + store_num , true);
			xhttp.send();
		}
	</script>
