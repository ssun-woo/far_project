$('input[type=radio][name=show]').on('click',function(){
	var chkValue=$('input[type=radio][name=show]:checked').val();
	
	if(chkValue == '1'){
		$('#service_content').css('display','block');
		$('#information_content').css('display','none');	
		$('#cancellation_content').css('display','none');	
		$('#map_content').css('display','none');	
		$('#review_content').css('display','none');	
		
	}else if(chkValue == '2'){
		$('#service_content').css('display','none');
		$('#information_content').css('display','block');	
		$('#cancellation_content').css('display','none');	
		$('#map_content').css('display','none');	
		$('#review_content').css('display','none');	
	}else if(chkValue == '3'){
	$('#service_content').css('display','none');
		$('#information_content').css('display','none');	
		$('#cancellation_content').css('display','block');	
		$('#map_content').css('display','none');	
		$('#review_content').css('display','none');	
	}else if(chkValue == '4'){
	$('#service_content').css('display','none');
		$('#information_content').css('display','none');	
		$('#cancellation_content').css('display','none');	
		$('#map_content').css('display','block');	
		$('#review_content').css('display','none');	
	}else if(chkValue == '5'){
	$('#service_content').css('display','none');
		$('#information_content').css('display','none');	
		$('#cancellation_content').css('display','none');	
		$('#map_content').css('display','none');	
		$('#review_content').css('display','block');	
	}
});



        
function del_edit_check(){
	if (!confirm("후기를 수정하시겠습니까?")) {
        window.location.reload();
    } else {
    window.open("/acc/cont/edit?cate=${cate}&storeNum=${storeNum}&reviewNum=${review.reviewNum}&page=${page}","update","width=650px,height=490px,top=300px,left=300px,scrollbars=yes");
    }
}




function jjim_del_check(){
	if (!confirm("찜 목록에서 삭제하시겠습니까?")) {
        window.location.reload();
    }
}

function recommend_del_check(){
	if (!confirm("리뷰 추천을 취소하시겠습니까?")) {
        window.location.reload();
    }
}

function submit_check(){
	let rf = document.getElementById("reviewForm");
	
	rf.addEventListener("submit",function(e){
	
	var cont = document.getElementById("reviewCont");
	var rating = document.getElementById("reviewRating");
	

	if($("input[name=reviewRating]:radio:checked").length<1){
	alert("별점을 선택하세요.");
	e.preventDefault();
	return false;
	}else if(cont.value==""){
	alert("내용을 입력하세요.");
	cont.focus();
	e.preventDefault();
	return false;
	}else{
	alert("리뷰 등록 완료");
	return true;
	}
	});
	
	
	
}



function reviewDel(){
	if(!confirm("후기를 삭제하시겠습니까?")) return;
	
	 var reviewNum = $("#reviewNum").val();
	
	$.ajax({
        type: "POST",
        url: `/acc/cont/delete?storeNum=${storeNum}`, // 삭제 요청을 처리할 컨트롤러 엔드포인트 URL
        success: function (data) {
            // 삭제가 성공적으로 완료되면 페이지를 다시 로드합니다.
            location.reload();
        },
        error: function () {
            alert("삭제 중 오류가 발생했습니다.");
        }
    });
}






	
    	

