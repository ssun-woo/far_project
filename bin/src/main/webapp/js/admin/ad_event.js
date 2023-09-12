function new_event(){
	$("#cate_name").html('[이벤트등록]');
	
	
	
	var table = document.getElementById('cate_cont');
	
	table.innerHTML
	='<table border="1"><tr><th id="event_no">번호</th><th id="event_title">제목</th>'+
	'<th id="event_name">작성자</th><th id="event_hit">조회수</th>'+
	'<th id="new_date">등록날짜</th><th id="event_date">진행기간</th></tr>'+
	'<td>1</td><td>새로운 이벤트</td><td>관리자</td><td>50</td>'+
	'<td>2023/08/09</td><td>23/08/09 ~ 23/08/23</td></table>';
	
}