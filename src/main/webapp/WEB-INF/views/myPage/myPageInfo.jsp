<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
	<div class="myPageInfo_logo">
		<h2>내 정보 수정</h2>
	</div>
	<div class="wrap">
		<div class="myPageInfo_form">
			<form name="frmLogin" action="">
				
				<div class="myPageInfopwd_wrap">
					<div class="myPageInfopwd_img">
						<img class="myPageInfo_pwd" src="../images/login/login_pwd.png">
					</div>
					<input class="myPageInfopwd" type="password" name="user_pwd" placeholder="비밀번호">
				</div>

				<div class="myPageInfoname_wrap">
					<div class="myPageInfoname_img">
						<img class="myPageInfo_name" src="../images/login/login_pwd.png">
					</div>
					<input class="myPageInfoname" type="text" name="user_name" placeholder="이름">
				</div>
				
				<div class="myPageInfoemail_wrap">
					<div class="myPageInfoemail_img">
						<img class="myPageInfo_email" src="../images/login/login_pwd.png">
					</div>
					<input class="myPageInfoemail" type="text" name="user_email" placeholder="이메일">
				</div>
				
				<div class="myPageInfotel_wrap">
					<div class="myPageInfotel_img">
						<img class="myPageInfo_tel" src="../images/login/login_pwd.png">
					</div>
					<input class="myPageInfotel" type="text" name="user_tel" placeholder="전화번호">
				</div>
				
				<br>
				<input class="submit" type="submit" value="회원정보 수정"><br>
			</form>
			<br><br>
		</div>
	</div>
	</div>
</body>
</html>