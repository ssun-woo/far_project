<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../main/new_header2.jsp"/>
<title>회원가입</title>
</head>
<body>
	<div class="wrap">
		
		<div class="far">
		<h1>FAR</h1>
	</div>
	<div class="wrap">
		<div class="join_form">
			<form name="frmLogin" action="">
			
				<div class="=joinid_wrap">
					<div class="joinid_img">
						<img class="join_id" src="../images/login/login_id.png">
					</div>
					<input class="joinid" type="text" name="user_id" placeholder="아이디">
				</div>
				
				<div class="joinpwd_wrap">
					<div class="joinpwd_img">
						<img class="join_pwd" src="../images/login/login_pwd.png">
					</div>
					<input class="joinpwd" type="password" name="user_pwd" placeholder="비밀번호">
				</div>
				<br><br>
				
				<div class="joinname_wrap">
					<div class="joinname_img">
						<img class="join_name" src="../images/login/pen.png">
					</div>
					<input class="joinname" type="text" name="user_name" placeholder="이름">
				</div>
				
				<div class="joinemail_wrap">
					<div class="joinemail_img">
						<img class="join_email" src="../images/login/email.png">
					</div>
					<input class="joinemail" type="text" name="user_email" placeholder="이메일">
				</div>
				
				<div class="jointel_wrap">
					<div class="jointel_img">
						<img class="join_tel" src="../images/login/phone.png">
					</div>
					<input class="jointel" type="text" name="user_tel" placeholder="전화번호">
				</div>
				
				<br>
				<input class="submit" type="submit" value="회원가입"><br>
			</form>
			<br><br>
		</div>
	</div>
	</div>
</body>
</html>