function open_shop(){
	$("#cate_name").html('[입점 승인]');
	
	
	
	var element = document.getElementById('cate_cont');
	
	element.innerHTML
	='<table border="1"><tr><th id="no">번호</th><th id="shop">가게명</th>'+
	'<th id="cate">업종</th><th id="name">신청자</th><th id="check">승인여부</th></tr>'
	+'<tr><td>1</td><td><a href="#" calss="button" onClick="shop()">가게1</a></td>'+
	'<td>요식업 (한식)</td><td>신청자</td><td>접수 완료</td></tr></table>';
	
}

function close_shop(){
	$("#cate_name").html('[폐점 승인]');
	
	
	var element = document.getElementById('cate_cont');
	
	element.innerHTML
	='<table border="1"><tr><th id="no">번호</th><th id="shop">가게명</th>'+
	'<th id="cate">업종</th><th id="name">신청자</th><th id="check">승인여부</th></tr>'+
	'<tr><td>1</td><td><a href="#" calss="button" onClick="shop()">가게1</a></td>'+
	'<td>미용업 (네일)</td><td>신청자3</td><td>폐점완료</td></tr></table>';
}

function edit_shop(){
	$("#cate_name").html('[가게 정보 수정]');
	
	
	
	var element = document.getElementById('cate_cont');
	
	element.innerHTML
	='<table border="1"><tr><th id="no">번호</th><th id="shop">가게명</th>'+
	'<th id="edit_name">신청자</th><th id="edit_cont">수정사항</th><th id="edit_date">신청날짜</th></tr>'+
	'</table>';
}

function list_shop(){
	$("#cate_name").html('[회원목록 (CEO)]');
	
	
	
	var element = document.getElementById('cate_cont');
	
	element.innerHTML
	='<table border="1"><tr><th id="no">번호</th><th id="cate">업종</th><th id="shop">가게명</th>'+
	'<th id="ceo_name">사업자명</th><th id="ceo_id">아이디</th></table>';
}

function shop(){
	var element = document.getElementById('cate_cont');
	
	element.innerHTML
	='<div id="shop_info"><h4>상호명</h4><h4>업종</h4><h4>주소</h4><h4>운영시간</h4>'+
	'<h4>휴무일</h4><h4>소개글</h4><div><h4>사업자 정보</h4></div><h4>상품</h4></div>';
}