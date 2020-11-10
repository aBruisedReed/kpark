<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>관리자 메뉴</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/adminSelect.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>

	<div id="all">
		<div id="title">
			<h1>관리자 메뉴</h1>
		</div>
		<div id="list">
			<a href="${contextPath }/admin/adminBuyList.do"><button id="buyList" class="selectBtn"><img src="${contextPath }/resources/image/admin/list.png" />구매 상담 목록</button></a><br>
			<a href="${contextPath }/admin/adminSellList.do"><button id="sellList" class="selectBtn"><img src="${contextPath }/resources/image/admin/list.png" />판매 상담 목록</button></a><br>
			<a href="${contextPath }/admin/adminSellForm.do"><button id="writeSell" class="selectBtn"><img src="${contextPath }/resources/image/admin/pen.png" />판매 글 등록</button></a><br>
			<a href="${contextPath }/admin/adminMembersList.do"><button id="membersList" class="selectBtn"><img src="${contextPath }/resources/image/admin/user.png" />회원 정보 목록</button></a><br>
		</div>
	</div>
	
</body>
</html>