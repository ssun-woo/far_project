<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <link rel="stylesheet" type="text/css" href="../css/review_delete.css"> --%>
<link rel="stylesheet" type="text/css" href="../css/ceo_review_management.css">

<div class="table_container">
	<table border="3">
		<tr>
			<th colspan="7">리뷰 관리</th>
		</tr>
		<tr>
			<th>아이디</th>
			<th>평점</th>
			<th>날짜</th>
			<th>리뷰내용</th>
			<th>삭제</th>
		</tr>
		<tr>
			<td>gili11</td>
			<td>⭐</td>
			<td>2023-08-09</td>
			<td>사장 x같네 진짜 개 병x 새x 같이 생겨서 x이나 까라 씨x놈아</td>
			<td><button onclick="DeleteButton(this)">❌</button></td>
		</tr>
		<tr>
			<td>kingkogn</td>
			<td>⭐⭐⭐⭐⭐</td>
			<td>2023-08-09</td>
			<td>여기서 썸녀랑 데이트후 솔탈 했습니다!</td>
			<td><button onclick="DeleteButton(this)">❌</button></td>
		</tr>
		<tr>
			<td>sonmin09</td>
			<td>⭐⭐⭐⭐⭐</td>
			<td>2023-08-09</td>
			<td>여기 알바 존잘남</td>
			<td><button onclick="DeleteButton(this)">❌</button></td>
		</tr>
		<tr>
			<td>hhhongg11</td>
			<td>⭐⭐⭐⭐⭐</td>
			<td>2023-08-09</td>
			<td>음식이 친절하고 사장님이 맛있어요</td>
			<td><button onclick="DeleteButton(this)">❌</button></td>
		</tr>
	</table>
</div>
	
<script>
	function DeleteButton(button) {
		var confirmation = confirm("정말 삭제 하시겠습니까?");
		if (confirmation) {
			var row = button.parentNode.parentNode;
			row.parentNode.removeChild(row);
			alert("삭제가 완료 되었습니다.");
		}
	}
</script>

