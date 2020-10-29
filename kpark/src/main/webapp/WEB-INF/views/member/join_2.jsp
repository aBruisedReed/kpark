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
	<title>회원가입 - KPARK</title>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/join_2.css" />" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>
	<div class="join_wrap">
		<div class="join_inner">
			<div class="logo_container">
				<a href="home"></a>
			</div>
			<h2 class="j2_h2">본인인증</h2>
			<p>안전한 회원가입을 위해 고객님의 본인인증을 진행합니다</p>
			<input class="phoneBtn" type="button" value="휴대폰 인증">
			
			<div class="btns">
				<input class="cancel" type="button" value="취소">
				<input class="next" type="button" value="다음">
			</div>
			<h4 class="login_copyright">Copyright kpark Co., Ltd. All Rights Reserved.</h4>
		</div>
	</div>
</body>
</html>