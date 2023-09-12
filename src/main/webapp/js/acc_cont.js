const radioButtons = document.querySelectorAll('input[type="radio"]');
        const contentDiv = document.getElementById('shop_content');

        radioButtons.forEach(radioButton => {
            radioButton.addEventListener('change', () => {
                if (radioButton.checked) {
                    // 라디오 버튼이 선택되었을 때 내용을 변경합니다.
                    switch (radioButton.id) {
                        case 'service':
                            contentDiv.innerHTML =  
                            	'<div class="content-dis"><div class="acc_room_list">'+
                            	'<h3>객실리스트</h3><hr><div class="room_list"><img src="../images/acc/room01.png">'+
                            	'<div class="room_info"><div class="booking_button"><h2>studio room</h2>'+
                            	'<input type="button" value="예약"></div><div class="room_detailinfo">'+
                            	'<h4>체크인  15:00  체크아웃 12:00</h4><p>기준인원 2인 / 최대인원 2인</p><p>영유아 포함 최대인원을 초과하여 입실이 불가합니다.</p>'+
                            	'</div></div></div></div></div>';
                            break;
                        case 'information':
                            contentDiv.innerHTML= 
                            	'<!-- 정보 --><div class="content-dis"><div  class="acc_policy"><h3>호텔정책</h3><hr><ul>'+
            			'<li> &#183; 체크인 : 15:00 </li>'+
            			'<li> &#183; 체크아웃 : 12:00 </li>'+
            			'<li> &#183; 체크인아웃안내: </li>'+
            			'<li> <h4>&nbsp; 예약공지사항</h4> </li>'+
            			'<li> &blacktriangleright; 체크인정보 및 인원추가요금정보 </li>'+
            			'<li> &#45; 체크인시간: 15시 </li>'+
            			'<li> &#45; 체크아웃시간: 12시 </li>'+
            			'<li> &#45; 취소 및 변경 관련 문의는 1600-3886 로 연락 부탁드리겠습니다.</li>'+
            			'<li> &#45; 22:00시 이후 체크인시 숙소 사전 연락 부탁드립니다.</li>'+
            			'<li> &#45; 레이트 체크아웃의 경우 오후 3시까지 Half-day 비용이 발생합니다. (객실타입마다 금액 상이)</li>'+
            			'<li> &#45; 기준인원 외 인원추가시 1인 1박당 성인(만 7세이상) 1인 22,000원, 소아(36개월~만 6세) 1인 13,200원 현장결제</li>'+
            			'<li> &#45; 영유아 포함 최대인원을 초과하여 입실이 불가합니다.</li>'+
            			'<li> &blacktriangleright; 엑스트라베드정보 및 트윈구성 </li>'+
            			'<li> &#45; 엑스트라베드 : 추가가능, 1박 38,500원 현장결제 (단 Studio, 원베드 트윈 에는 제공이 되지 않습니다.)</li>'+
            			'<li> &#45; 침구 : 추가가능, 1채 1박당 22,000원 현장결제</li>'+
            			'<li> &#45; 아기침대(만1세까지) : 1베드 룸타입에만 가능/ 체크인시 잔여수량 있을 시 가능 (사전요청불가)</li>'+
            			'<li> &#45; 트윈 : 더블베드+싱글베드</li>'+
            		'</ul></div><div class="acc_introduce"><h3>호텔소개</h3><hr><ul>'+
            			'<li>서울 강북의 중심 광화문에 위치한 서머셋 팰리스 서울은 최고의 서비스를 제공하는 레지던스입니다. </li>'+
            			'<li>각국의 대사관, 다국적 기업 및 언론사들과 인접해 있으며, 경복궁, 인사동 등과도 도보로 쉽게 접근할 수 있는 최적의 위치입니다.</li>'+
            			'<li>넓은 거실, 안락한 침실, 다양한 부대시설이 갖춰져 있어 품격 높은 시설과 서비스를 제공합니다.</li>'+
            			'<li><br></li>'+
            			'<li> <label>조식정보</label></li>'+
            			'<li> 조식 이용 위치 : 라운지 2층 </li>'+
            			'<li> 조식 이용 시간 : 평일 06:30~10:00 / 주말 07:30~10:30 / 명절 당일 미운영 </li>'+
            			'<li> 조식 이용 요금 : 성인(만 7세이상) 1인 19,800원, 소아(36개월~만 6세) 1인 13,200원 </li>'+
            			'<li> 조식 메뉴 : 뷔페식</li>'+
            			'<li><br></li>'+
            			'<li> <label>주차정보</label></li>'+
            			'<li> 주차장 위치 : 건물 지하 </li>'+
            			'<li> 주차 요금 : 무료 주차 가능 (객실당 1대 주차가능, 24시간 상주보안 경비시스템) </li>'+
            			'<li> 주차관련 유의사항 : 1객실 당 1대 무료주차가능(입실/퇴실시간 기준) 그 외 시간 주차 시 10분당 1000원 요금 부과 </li>'+
            		'</ul></div><div class="seller_info">'+
            		'<h3>판매자</h3><hr><p>판매자 정보 보기</p></div></div>';
                            break;
                        case 'cancellation':
                            contentDiv.innerHTML = 
                            	'<!-- 환불정책 --><div class="content-dis"><div class="cancellation_policy">'+
                		'<h3>이용안내/취소규정</h3><hr><br><div class="common_policy"><p>공통적용사항</p></div><ul>'+
                			'<li>예약취소는 마이페이지 및 고객센터를 통해 가능합니다. </li>'+
                			'<li>불가피한 사정으로 예약하신 숙박업체에 직접 취소를 하신 경우에는 해당 숙박업체의 예약변경 및 취소에 대한 확인 자료를 당사로 제출해주셔야 합니다.</li>'+
                			'<li><br></li>'+
                			'<li>입실일 당일은 취소수수료가 100% 발생하여 취소가 불가능합니다.</li>'+
                			'<li>당일 노쇼(No Show)란 예약된 숙소를 이용하지 않는 경우로 당일 취소분과 동일하게 적용해 숙박요금이 100% 정상 청구됩니다.</li>'+
                			'<li>취소수수료가 100%인 경우, 마이페이지 상에서 취소가 불가능하오니 숙박 고객센터로 문의하시기 바랍니다.</li>'+
                			'<li><br></li>'+
                			'<li>취소수수료 규정은 예약일(결제일)과 관계없이 입실일 기준으로 산정됩니다. </li>'+
                			'<li>취소수수료는 할인(쿠폰) 적용 전 객실 판매금액을 기준으로 책정됩니다.</li>'+
                		'</ul><br><br><ul>'+
                			'<li><h4>기타 유의사항</h4></li>'+
                			'<li>상품별, 숙소별 별도 취소 규정이 적용되니 예약진행 시 이용동의란의 취소가능일을 반드시 확인해 주시기 바랍니다.</li>'+
                			'<li><br></li>'+
                			'<li>실시간 예약의 특성상 동일한 객실에 중복 예약이 발생할 수 있으며, 이 경우 먼저 결제완료된 예약 건에 우선권이 있으므로 이후 중복 예약 건은 취소될 수 있습니다.</li>'+
                			'<li><br></li>'+
                			'<li>성수기 요금의 확정 전, 또는 잘못 등록된 요금이 확인될 경우 고객센터를 통한 안내 후, 예약 취소가 진행될 수 있습니다.  </li>'+
                			'<li><br></li>'+
                			'<li>현장에서 발생된 숙박업체과의 분쟁으로 인한 취소/환불 요청시 당사는 중개플랫폼사로 취소 및 환불처리에 관여하지 않습니다. </li>'+
                			'<li><br></li>'+
                			'<li>미성년자의 숙박업소 출입은 가능하나 청소년보호법 제30조 제8호에 의거 이성혼숙은 제한되며, 제한으로 인한 환불은 숙소별 취소규정에 따라 적용됩니다.</li>'+
                			'<li><br></li>'+
                			'<li>당사는 예약 대행사로 예약상의 문제 이외의 상품 자체의 하자로 인한 문제는 해당 숙박업체에 귀속됨을 알려드립니다.</li>'+
                		'</ul></div><div class="refund_process"><h4>환불절차 안내</h4><hr><ul>'+
                				'<li><p> 1) 신용카드/ 카카오페이로 결제한 경우</p> </li>'+
                				'<li>&#45; 일반적으로 당사의 취소 처리 후, 4~6일 후에 카드사의 취소가 확인됩니다. 그러나 취소한 시점과 카드사의 환불기준에 따라서 취소된 금액의 환급방법/환급일은 다소 차이가 있을 수 있습니다.</li>'+
                				'<li>&#45; 직불(체크)카드는 예매 취소 즉시 환불처리 되지만,  상황에 따라 다소 늦어질 수 있습니다. 자세한 사항은 결제한 카드사로 문의 하시기 바랍니다.</li>'+
                				'<li><p> 2) 네이버페이로 결제한 경우</p> </li>'+
                				'<li>&#45; 신용카드/체크카드 : 취소 완료 후 3~5 영업일 이후 환불(승인/매입 구분 불가) 됩니다.</li>'+
                				'<li>&#45; 계좌이체 : 취소 완료 즉시 환불(단, 은행 정기점검 시간 등에는 환불 실패) 됩니다.</li>'+
                				'<li>&#45; 포인트 : 취소 완료 즉시 환불 됩니다.</li>'+
                				'<li>&#45; 네이버페이 포인트 환불 여부와 적립 상세 내용은 네이버 사이트의 네이버페이에서 확인 가능합니다.</li>'+
                				'<li><p> 3) 포인트 합산 결제한 경우</p> </li>'+
                				'<li>&#45; 패널티는 포인트에서 선차감되어 환불되며, 패널티 금액이 포인트 사용 금액보다 높을 경우 잔여 패널티 금액은 결제하신 결제수단(신용카드 등)에서 차감 후 환불됩니다. 단, 패널티 금액이 신용카드 결제금액보다 높을 경우에는 고객센터로 문의 하시기 바랍니다.</li>'+
                			'</ul></div><div class="receipt_issuing"><h4>영수증발급 안내</h4><hr><ul>'+
                				'<li>&#183; 본사는 숙박 상품의 판매대행처로 소득세법과 부가가치세법에 따라 세금계산서 발행이 불가합니다.</li>'+
                				'<li>&#183; 신용카드로 결제하시면 신용카드 매출전표(마이페이지)를 발급 받을 수 있습니다.</li>'+
                				'<li>&#183; 네이버페이 관련 전표는 네이버 사이트의 네이버페이 주문내역에서 확인 가능합니다.</li>'+
                			'</ul></div><div class="CS_numbder"><h4>고객센터 안내</h4><hr><ul>'+
                			'<li>&#183; TEL : (02)0000-0000 (평일,토&공휴일: 09:00~18:00 / 점심시간 : 12:00~13:00 / 일요일 휴무 )</li>'+
                			'</ul></div></div>';
                            break;
                        case 'map':
                            contentDiv.innerHTML = 
                            	'<!-- 지도 --><div class="content-dis"><div class="acc_map"><h3>지도 상세 보기</h3><hr>'+
                    			'<div class="map"></div></div><div class="guide"><h3>교통안내</h3><hr>'+
                    		'<h4>안국역 6번출구 도보 6분</h4><h4>주차 가능 여부는 별도 문의 부탁드립니다.</h4></div></div>';
                            	break;
                        case 'review':
                        	contentDiv.innerHTML = 
                        		'<!-- 리뷰 --><div class="content-dis">'+
      							'<div class="Review_cont">'+
      							
								
				
			
			'<div class="review_form">'+
			'<h3> 이용후기 (건수) </h3>'+
				'<div class="detail_review">'+
					
					'<ul class="detail_review_ul">'+
				
					'<li> <h4>출장숙소로좋음</h4> </li>'+
					'<li> <p>간단한 식사 가능하고 편안 [더보기]</p></li>'+
					'<li> <h5>/비즈니스</h5> </li></ul>'+
				'<ul class="detail_review_ul2">'+
					'<li> 10 </li>'+
					'<li> <label>시설(객실/부대시설) 좋아요</label> </li>'+
					'<li> hs11*** 2023.09.05</li>'+
					'<li> <input type="button" value="수정" class="review_edit"> <input type="button" value="삭제" class="review_del"></li>'+
				'</ul></div>'+
				'<button class="review_recommend"><img src="../images/main/review_recommend.png"><p>0</p></button><hr></div>'+
				'<br><div class="review_page">1 | 2 | 3 | 4 | 5 </div></div></div>'+
				
				'<form action=""><table class="review_write">'+
									'<tr>'+
										'<td> ID <input type="text" id="mem_id"> </td>'+
									'</tr>'+
									'<tr>'+
										'<td> 예약 번호 <input type="text" id="book_id"></td>'+
									'</tr>'+
									'<tr>'+
										'<td> 상품명 <input type="text" id="review_goods"></td>'+
									'</tr>'+
      								'<tr>'+
      									'<td>제목&nbsp;&nbsp;<input type="text" id="title" pattern="[ㄱ-ㅎ ㅏ-ㅣ 가-힣0-9]"></td>'+
      								'</tr>'+
      								'<tr>'+
      									'<td>별점  ★★★★★</td>'+
      								'</tr>'+
      								'<tr>'+
      									'<td>내용</td>'+
      								'</tr>'+
      								'<tr>'+
      									'<td><textarea rows="10" cols="30" id="review_content"></textarea></td>'+
      								'</tr>'+
      								'<tr>'+
      									'<td><input type="submit" value="등록" onclick="submit_check();"></td>'+
      								'</tr>'+
      							'</table></form>';
                            break;
                    }
                }
            });
        });


function submit_check(){
	var title = document.getElementById("title");
	var content = document.getElementById("review_content");
	
	if(title.value==""){
	alert("제목을 입력하세요.");
	title.focus();
	return false;
	} else if(content.value==""){
	alert("내용을 입력하세요.");
	content.focus();
	return false;
	}
}
    	