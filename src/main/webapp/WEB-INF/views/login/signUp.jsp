<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../main/new_header2.jsp"/>

<title>회원가입</title>
</head>
<script src="/js/jquery.js"></script>
<script src="/js/signup.js"></script>
<body>
	<div class="wrap">
		<div class="far">
			<h1>FAR</h1>
		</div>
		<div class="wrap">
			<div class="join_form">
				<form name="frmLogin" action="/signUp" method="post">
					<div class="selectClass">
					<input type="radio" name="selectClass" value="normal" checked> 일반 회원
					<input type="radio" name="selectClass" value="business"> 개인 사업자
					
					</div>
					<div class="joinid_wrap">
						<div class="joinid_img">
							<img class="join_id" src="../images/login/login_id.png">
						</div>
						<input id="memId" class="joinid" type="text" name="memId" placeholder="아이디" oninput="idcheck()">
						<br><span id="idcheck" class="error-message"></span><br>
					</div>
					
					<div class="joinpwd_wrap">
						<div class="joinpwd_img">
							<img class="join_pwd" src="../images/login/login_pwd.png">
						</div>
						<input id="memPwd" class="joinpwd" type="password" name="memPwd" placeholder="비밀번호">
					</div>
					<br><span id="pwdcheck" class="error-message"></span><br>
					
					<div class="joinpwd_wrap">
						<div class="joinpwd_img">
							<img class="join_pwd" src="../images/login/login_pwd.png">
						</div>
						<input id="memPwdchk" class="joinpwd" type="password" name="memPwdchk" placeholder="비밀번호 확인" ><br>
					</div>
					<br><span id="pwddoublecheck" class="error-message"></span><br>
					
					
					<div class="joinname_wrap">
						<div class="joinname_img">
							<img class="join_name" src="../images/login/pen.png">
						</div>
						<input id="memName" class="joinname" type="text" name="memName" placeholder="이름">
					</div>
					<br><span id="namecheck" class="error-message"></span><br>
					
					<div class="joinemail_wrap">
						<div class="joinemail_img">
							<img class="join_email" src="../images/login/email.png">
						</div>
						<input id="memEmail" class="joinemail" type="text" name="memEmail" placeholder="이메일">
					</div>
					<br><span id="emailcheck" class="error-message"></span><br>
					
					<div class="jointel_wrap">
						<div class="jointel_img">
							<img class="join_tel" src="../images/login/phone.png">
						</div>
						<input id="memTel" class="jointel" type="text" name="memTel" placeholder="전화번호">
					</div>
					<br><span id="telcheck" class="error-message"></span><br>
					
					<input class="submit" type="submit" value="회원가입" onclick="return submitForm()"><br>
				</form>
				<br><br>
			</div>
		</div>
	</div>
</body>
</html>