<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FAR</title>
    <script>
        function showScreen(screenId) {
            var screens = document.getElementsByClassName("screen");
            for (var i = 0; i < screens.length; i++) {
                screens[i].style.display = "none";
            }
            document.getElementById(screenId).style.display = "block";
        }
        
         window.onload = function() {
            showScreen('screen1'); // 기본 화면 설정
        }; 
    </script>
    
    <jsp:include page="../main/new_header2.jsp"/>
</head>
<body>
<div id="findIdwrap">
	<h2 id="findIdTitle">아이디 찾기</h2>
	
	<div id="memclassTitle">
	회원 유형
	</div>
	<select id="memclassSelect">
		<option>개인 회원</option>
		<option>개인 사업자 회원</option>
	</select>
	
	<br>
	<div id="findSelect">
    	<input type="radio" id="emailRadio" name="screen" value="screen1" checked="checked" onclick="showScreen('findIdByEmail')"> 이메일
    	<input type="radio" id="telRadio" name="screen" value="screen2" onclick="showScreen('findIdByTel')"> 휴대폰 번호
	</div>
	
    <div id="findIdByEmail" class="screen">
        <form name="findIdByEmail" action="">
        	<div id="findIdByEmailNameTitle">이름</div>
        	<input id="findIdByEmailNameInput" type="text"><br>
        	
        	<div id="findIdByEmailTitle">이메일<br></div>
        	<input id="findIdByEmailInput" type="text"><br>
        	
        	<input id="findIdEmailSubmit" type="submit" value="확인">
        </form>
    </div>

    <div id="findIdByTel" class="screen" style="display: none;">
        <form name="findIdByTel" action="">
        	<div id="findIdByTelNameTitle">이름</div>
        	<input id="findIdByTelNameInput" type="text"><br>
        	<div id="findIdByTelTitle">휴대폰 번호</div><br>
        	<input id="findIdByTelInput" type="text"><br>
        	<input id="findIdByTelSubmit" type="submit" value="확인">
        </form>
    </div>
    </div>
</body>
</html>

<jsp:include page="../main/footer.jsp"/>