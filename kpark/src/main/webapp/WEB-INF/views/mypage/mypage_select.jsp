<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/mypage_select.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>

	<div id="all">
		<div id="title">
			<h1>마이페이지</h1>
		</div>
		<div id="list">
			<a href="#"><button id="buyList" class="selectBtn"><img src="${contextPath }/resources/image/admin/list.png" />구매 상담 목록</button></a><br>
			<a href="${contextPath }/mypage/mypage_sell.do"><button id="sellList" class="selectBtn"><img src="${contextPath }/resources/image/admin/list.png" />판매 상담 목록</button></a><br>
			<a href="${contextPath }/mypage/mypage_edit.do"><button id="editInfo" class="selectBtn"><img src="${contextPath }/resources/image/admin/pen.png" />내 정보 수정</button></a><br>
			<a href="${contextPath }/mypage/mypage_quit.do"><button id="quit" class="selectBtn"><img src="${contextPath }/resources/image/admin/user.png" />회원 탈퇴</button></a><br>
		</div>
	</div>
	
</body>
</html>