function review_report(){
	$("#cate_name").html('[불량리뷰 신고]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="report_no">번호</th><th id="report_title">리뷰 제목</th>'+
	'<th id="report_id">아이디</th><th id="report_date">신고날짜</th><th id="report_check">처리현황</th></tr></table>';
	
}

function QnA_member(){
	$("#cate_name").html('[문의 (일반)]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="QnAm_no">번호</th>'+
	'<th id="QnAm_title">제목</th><th id="QnAm_id">아이디</th>'+
	'<th id="QnAm_date">등록날짜</th><th id="QnAm_check">처리현황</th></tr></table>';
	
}

function QnA_ceo(){
	$("#cate_name").html('[문의 (CEO)]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="QnAc_no">번호</th>'+
	'<th id="QnAc_title">제목</th><th id="QnAc_id">아이디</th>'+
	'<th id="QnAc_date">등록날짜</th><th id="QnAc_check">처리현황</th></tr></table>';
	
}