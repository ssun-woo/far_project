<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-xr9SAFX2f4tN9KPT12O5P/15F4C4lBbDYzpSppzD7A6kcX5l7/kjb7c9KdoD5bwzr"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRkLOIZgr3z5Xzb4l5u5F5J5j5vzcvzrE6D5F5R5G5l5a5p5V5"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-L0k8i+5OXn4Q5Zl5Pz4nO8gVf3eF5E4an5Q9b1Vl5c5f5P5I5o5k5Y5N5f5G5l5a5p5V5"
	crossorigin="anonymous"></script>





<title>가게 목록</title>
</head>

	 <div class="container">
        <h2 class="text-center mt-4" style="color: #007bff;">가게 목록</h2>
        <form>
            <table class="table table-bordered table-hover">
                <thead class="table-primary text-center">
                    <tr>
                        <th scope="col" style="color: #007bff;">no.</th>
                        <th scope="col" style="color: #007bff;">업소 분류</th>
                        <th scope="col" style="color: #007bff;">상세 분류</th>
                        <th scope="col" style="color: #007bff;">가게 이름</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${!empty slist}">
                        <c:forEach var="s" items="${slist}">
                            <tr class="light-gray-bg">
                                <td style="color: blue;">${s.storeNum}</td>
                                <td>${s.cate}</td>
                                <td>${s.detailCate}</td>
                                <td><a href="store_menu_regis.jsp?mem_id=${s.memId}" style="color: #007bff;">${s.storeName}</a></td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty slist}">
                        <tr class="text-center">
                            <td colspan="4">등록된 가게가 없습니다.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </form>
    </div>

