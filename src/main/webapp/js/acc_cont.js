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


function submit_check(){
	var title = document.getElementById("review_title");
	var goods = document.getElementById("review_goods");
	var content = document.getElementById("review_content");
	var id = document.getElementById("mem_id");
	
	if(title.value==""){
	alert("제목을 입력하세요.");
	title.focus();
	return false;
	}else if(id.value==""){
	alert("아이디를 입력하세요.");
	id.focus();
	return false;
	}else if(goods.value==""){
	alert("상품명을 입력하세요.");
	goods.focus();
	return false;
	}else if(content.value==""){
	alert("내용을 입력하세요.");
	content.focus();
	return false;
	}
}


	