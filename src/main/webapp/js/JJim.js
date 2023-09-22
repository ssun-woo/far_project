function jjim_check(){
	let rf = document.getElementById("jjim");
	
	rf.addEventListener("submit",function(e){
	
	if (!confirm('찜 목록에 넣으시겠습니까?')) {
				window.close();
		    } else {
				opener.document.location.reload();
				
				alert("찜이 등록되었습니다.");
				
				
		    }
	
	});
}