function list_member(){
	$("#cate_name").html('[회원목록 (일반)]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="nick">닉네임</th>'+
	'<th id="shop">아이디</th><th id="name">실명</th><th id="grade">등급</th></tr></table>';
	
}