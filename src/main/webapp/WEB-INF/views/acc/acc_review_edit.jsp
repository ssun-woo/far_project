<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<style type="text/css">
	/* 이용후기*/
#reviewEditForm{
	margin-left: -150px;
	width: 400px;
}
.detail_review_table2{
	width: 400px;
	margin-right: 100px;
}

.review_edit_table{
	margin-left: 235px;
	margin-top: 30px;
	margin-bottom: 50px;
}
.review_rating_form{
	margin-top: 50px;
	
}
.review_edit_table h3{
	margin-left: -800px;
}

.review_edit_table td{
	text-align: left;
}
#review_title{
	width: 700px;
}
.review_edit_table textarea{
	width: 450px;
	resize: none;
	border-radius: 5px;
	margin-left: -80px;
	margin-bottom: 10px;
}

.review_edit_table textarea::placeholder{
	padding: 5px;
}


.detail_review{
	width: 500px;
}


.detail_review_tr{
	width: 500px;
	margin-left: 200px;
}
.review_edit_cont{
	margin-left: -150px;
}
.review_edit{
	margin-top: 10px;
	margin-right: 5px;
}
.review_del{
	margin-top: 10px;
	margin-left: 5px;
}
.review_buttons{
	width: 200px;
	float: left;
	margin-right: -500px;
	margin-top: -10px;
}
.review_recommend{
	background-color: white;
	border: 1px solid lightgray;
	border-radius: 5px;
	display: flex;
	height: 30px;
	margin-top: 10px;
	margin-bottom: 15px; 
	margin-left: 60px
}
.review_recommend IMG{
	margin-top: 2px;
}
.review_recommend p{
	margin-left: 1px;
	margin-top: 4px;
	font-size: 13pt;
	font-weight: lighter;
	color: #a8a8a8;
}
.detail_review_table hr{
	width: 910px;
	border: 1px solid gray;
	margin-top: 10px;
}
.detail_review_table td{
	margin-top: 15px;
}


.review_page{
	margin-left: 100px;
	
}

.table_space{
	marigin-left: 540px;
}
/*글자수*/
.text_length{
	
}
/*리뷰 등록 버튼
.review_edit_btn{
	width: 70px;
	height: 30px;
	border-radius: 10px;
	background-color: black;
	color: white;
	margin-top: 5px;
}*/


/*별점*/
#review_rating{
	width: 500px;
	margin-top: -20px;
	margin-bottom: 10px;
	margin-left: -10px;
	
}
#review_rating fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#review_rating fieldset legend{
    text-align: left;
}
#review_rating input[type=radio]{
    display: none;
}
#review_rating span{
	color: gray;
}
#review_rating label{
    font-size: 20pt;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#review_rating label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#review_rating label:hover ~ label{
   text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#review_rating input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
	
</style>
</head>
<body>
	<form action="/acc/cont/update?cate=${cate}&store_num=${store_num}&review_num=${review_num}" method="post" id="reviewEditForm">
	
					<table class="review_edit_table">
					<tr>
						<th><h2>후기 수정 (${review_num})</h2></th>
					</tr>
					<tr>
							
								<td colspan="2"><div class="mb-3" id="review_rating" class="review_rating_edit"><fieldset>
								<span>별점을 선택해주세요 </span>
								<span> (현재 : ${review_rating})</span>
		<input type="radio" name="review_rating" value="5" id="rate1">
		<label for="rate1">★</label>
		<input type="radio" name="review_rating" value="4" id="rate2">
		<label for="rate2">★</label>
		<input type="radio" name="review_rating" value="3" id="rate3">
		<label for="rate3">★</label>
		<input type="radio" name="review_rating" value="2" id="rate4">
		<label for="rate4">★</label>
		<input type="radio" name="review_rating" value="1" id="rate5">
		<label for="rate5">★</label>
	</fieldset>
	
	</div></td>
	
	
							
						</tr>
						
						<tr>
							<th colspan="2"><textarea rows="10" cols="30"
									id="review_cont" name="review_cont" class="review_edit_cont">${review_cont}</textarea></th>
						</tr>
						<tr>
						<td><a class="review_cancel_btn"><button type="reset" onclick="window.close(); opener.document.location.reload();">닫기</button></a>&nbsp;<a class="review_edit_btn"><button type="submit" class="edit_submit"  onclick="edit_check()">수정</button></a></td>
						
						
						<td class="text_length">글자수</td>
						</tr>
						
					</table>
					
				</form>
				
	<script>
	
	function edit_check(){
		let rf = document.getElementById("reviewEditForm");
		
		rf.addEventListener("submit",function(e){
			if (!confirm("후기를 수정하시겠습니까?")) {
				window.close();
		    } else {
				opener.document.location.reload();

				alert("수정이 완료되었습니다.");
				window.open("about:blank","_self");
		    }
				
			
			
		});
		
		
		
	}
	
	

	/*$(document).ready(function() {
	      $('.edit_submit').ajaxForm(function() {
	    	opener.document.location.reload();
	        alert("성공적으로 수정되었습니다");
	        window.close();
	      });
	   });
	
	function close_popup(){
		self.close();
		opener.document.location.reload();
		
	}
	
	
	function edit_check(reviewEditForm){
		let rf = document.getElementById("reviewEditForm");
		
		
		rf.addEventListener("submit",function(e){
			var review_cont = document.getElementById("review_cont");
			var review_date = document.getElementById("review_date");
			
			
			let today = new Date();
			
			if(review_cont.value != ""){
				
				window.location.reload(); 
				
				return true;
			}
			
			window.opener.location.reload(); 
			
			
			
		
		});
		
		
	}
	
	function edit_check() {
	    let rf = document.getElementById("reviewEditForm");

	    rf.addEventListener("submit", function (e) {
	        e.preventDefault(); // 기본 폼 제출 동작을 막습니다.

	        // AJAX를 사용하여 데이터를 서버에 전송
	        let formData = new FormData(rf);
	        fetch('/acc/cont/update?cate=${cate}&store_num=${store_num}&review_num=${review_num}', {
	            method: 'POST',
	            body: formData
	        })
	        .then(response => response.json())
	        .then(data => {
	            if (data.success) {
	                alert("후기가 수정되었습니다.");

	                // 팝업 창 닫기
	                window.close();

	                // 부모 창 리디렉션 (예: 메인 페이지로)
	                window.opener.location.href = '/acc/cont?cate=" + cate + "&store_num="+ store_num'; // 리디렉션할 페이지의 URL로 수정

	            } else {
	                alert("후기 수정에 실패했습니다.");
	            }
	        })
	        .catch(error => {
	            console.error('Error:', error);
	        });
	    });
	}*/
	
	

   
	</script>
</body>
</html>