var cnt1 = 1;
function imgToggle(){
	var no = document.getElementById("no");
	var yes = document.getElementById("yes");
	
	if(cnt1%2==1){
	no.src="../images/acc/YesJJim.png";
	yes.src="../images/acc/NoJJim.png";
	alert('찜목록에 추가되었습니다.');
	}else{
	no.src="../images/acc/NoJJim.png";
	yes.src="../images/acc/YesJJim.png";
	alert('찜목록에서 삭제되었습니다.')
	}
	cnt1++;
}

var cnt2 = 1;
function imgToggle2(){
	var no = document.getElementById("no2");
	var yes = document.getElementById("yes2");
	
	if(cnt2%2==1){
	no.src="../images/acc/YesJJim.png";
	yes.src="../images/acc/NoJJim.png";
	alert('찜목록에 추가되었습니다.');
	}else{
	no.src="../images/acc/NoJJim.png";
	yes.src="../images/acc/YesJJim.png";
	alert('찜목록에서 삭제되었습니다.')
	}
	cnt2++;
}

var cnt3 = 1;
function imgToggle3(){
	var no = document.getElementById("no3");
	var yes = document.getElementById("yes3");
	
	if(cnt3%2==1){
	no.src="../images/acc/YesJJim.png";
	yes.src="../images/acc/NoJJim.png";
	alert('찜목록에 추가되었습니다.');
	}else{
	no.src="../images/acc/NoJJim.png";
	yes.src="../images/acc/YesJJim.png";
	alert('찜목록에서 삭제되었습니다.')
	}
	cnt3++;
}

