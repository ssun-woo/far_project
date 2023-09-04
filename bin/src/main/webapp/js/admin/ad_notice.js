function member_notice(){
	$("#cate_name").html('[일반 공지등록]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="shop">아이디</th>'+
	'<th id="nick">닉네임</th><th id="name">실명</th><th id="grade">등급</th></tr></table>';
	
}

function ceo_notice(){
	$("#cate_name").html('[ceo 공지등록]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="shop">아이디</th>'+
	'<th id="nick">닉네임</th><th id="name">실명</th><th id="grade">등급</th></tr></table>';
	
}