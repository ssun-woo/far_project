<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:include page="admin_header.jsp" />
<main class="admin_main">
	<div class="container-fluid">
		<div class="menu">
		
			<div class="menu_main">
				<ul class="menu_ceo list-group list-group-flush ">
						<li class="list-group-item list-group-item-secondary">
							<h4>회원관리 (CEO)</h4>
						</li>
						<li class="list-group-item"><a href="/admin/storePermit"
							class="menu_button">입점승인</a></li>
						<li class="list-group-item"><a href="/admin/storeShutdown"
							class="menu_button">폐점승인</a></li>
						<li class="list-group-item"><a href="/admin/storeList"
							class="menu_button">회원 목록</a></li>
					</ul>

					<ul class="menu_nal list-group list-group-flush">
						<li class="list-group-item list-group-item-secondary">
							<h4>회원관리 (일반)</h4>
						</li>
						<li class="list-group-item"><a href="/admin/adminMemList"
							class="menu_button">회원목록</a></li>
					</ul>
					<ul class="menu_cop list-group list-group-flush">
						<li class="list-group-item list-group-item-secondary">
							<h4>쿠폰</h4>
						</li>
						<li class="list-group-item"><a href="/admin/adminCouponRegis"
							class="menu_button">쿠폰등록</a></li>
						<li class="list-group-item"><a href="/admin/adminCouponList"
							class="menu_button">쿠폰목록</a></li>
					</ul>
			</div>
		</div>
		 <section class="adCouponSection">
                <h4 class="adTitle">[쿠폰 등록]</h4>
                <div class="adminCouponRegistrationForm">
                    <form action="adminCouponRegisOk" onsubmit="return coupon_regis_write_check();" method="post">
                        <div class="form-group">
                            <label for="couponName">쿠폰 이름</label>
                            <input type="text" class="form-control" id="couponName" name="couponName">
                        </div>
                        <div class="form-group">
                            <label for="couponDiscountrate">할인율 (할인금액 또는 백분율 입력)</label>
                            <input type="text" class="form-control" id="couponDiscountrate" name="couponDiscountrate">
                        </div>
                        <div class="form-group">
                            <label for="couponStartDate">쿠폰 발급일 (YYYY-MM-DD)</label>
                            <input type="text" class="form-control" id="couponStartDate" name="couponStartDate">
                        </div>
                        <div class="form-group">
                            <label for="couponEndDate">쿠폰 만료일 (YYYY-MM-DD)</label>
                            <input type="text" class="form-control" id="couponEndDate" name="couponEndDate">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">등록하기</button>
                        </div>
                    </form>
                </div>
            </section>

	</div>
</main>


<jsp:include page="admin_footer.jsp" />