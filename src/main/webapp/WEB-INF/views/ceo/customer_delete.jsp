<%@ page contentType="text/html; charset=UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<script src="../js/jquery.js"></script>
<script src="../js/cus_del_write_check.js"></script>
<link rel="stylesheet" type="text/css" href="../css/customer_delete.css">

	<div class="customerDeleteForm">
		<h2>회원 탈퇴하기</h2>
		<!-- <p>회원 탈퇴를 진행하시겠습니까?</p> -->
		<hr>
		<form method="post" onsubmit="cus_del_write_check();">	<!-- action="" -->
    		
    		<div class="delCustomer">
    			<label>비밀번호를 입력하세요. </label>
    			<input type="password" id="delCusPwd" name="delCusPwd">
    		</div>
    		
    		<div class="delCustomerBtn">
		    	<button type="submit" class="delCusBtn">회원 탈퇴</button>
		    </div>
		</form>
	</div>

<!-- <jsp:include page="../main/footer.jsp"/> -->