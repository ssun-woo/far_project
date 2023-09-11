/**
 * 
 */
 if($mem_email == ""){
       alert('이메일를 입력하세요');
       $('#mem_email').val('').focus();
       return false;
    } else if($mem_email.length < 8) {
 		$warnemailtext = "<font color='red'><strong>비밀번호는 8자 이상이어야합니다.</strong></font>"
 		$('#emailcheck').text('');
 		$('#emailcheck').show();
 		$('#emailcheck').append($warnemailftext);
 		return false;
 	} else if($mem_email.length > 16) {
 		$warnemailtext = "<font color='red'><strong>비밀번호는 16자 이하이어야합니다.</strong></font>"
 		$('#emailcheck').text('');
 		$('#emailcheck').show();
 		$('#emailcheck').append($warnemailtext);
 		return false;
 	} else {
 		$('#emailcheck').hide();
 	}