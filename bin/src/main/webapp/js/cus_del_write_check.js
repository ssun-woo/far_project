/**
 * cus_del_write_check()
 */
 
 function cus_del_write_check() {
	if($.trim($("#delCusPwd").val()) === "") {
		alert("삭제할 회원 비밀번호를 입력하세요");
		$("#delCusPwd").val("").focus();
		return false;
	}
	
	/* 입력 받은 비번 !== 회원 비번 */
	/*
	if($.trim($("#delCusPwd").val()) !== pwd) {
		alert("비밀번호가 일치하지 않습니다.");
        $("#delCusPwd").val("").focus();
        return false;
	}
	*/
	
	var con = confirm('정말로 삭제하시겠습니까?');
	if(con) {
		var conOk = confirm('회원 탈퇴가 완료되었습니다.');
		return conOk;
	}
	return false;
 }