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
	<link href="<c:url value="/resources/css/join_3.css" />" rel="stylesheet">
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
			<h2>회원가입</h2>
			<h3>아이디</h3>
			<input class="input_id" id="user_id" name="user_id" type="text" placeholder="6~12자">
			<input class="input_id_check" type="button" value="중복확인">
			<h3>비밀번호</h3>
			<input class="input_pw" id="user_pw" name="user_pw" type="password" placeholder="8~16자 (영문, 숫자 포함)">
			<input class="input_pw_check" id="user_pw_check" name="user_pw_check" type="password" placeholder="비밀번호 확인">
			<h3>이름</h3>
			<input class="input_name" id="user_name" name="user_name" type="text" placeholder="">
			<h3>휴대 번호</h3>
			<input class="input_phone" id="user_phone" name="user_phone" type="number" placeholder="숫자만 입력해주세요.">
			<h3>이메일</h3>
			<input class="input_email_1" id="user_email_1" name="user_email_1" type="text" placeholder="">
			<div class="at">@</div>
			<input class="input_email_2" id="user_email_2" name="user_email_2" type="text" placeholder="">
			<h3>주소</h3>
			<input class="input_address_1" id="user_address_1" name="user_address_1" type="number" placeholder="우편번호">
			<input class="button_address_find" type="button" value="우편번호 찾기">
			<input class="input_address_2" id="user_address_2" name="user_address_2" type="text" placeholder="주소">
			<input class="input_address_3" id="user_address_3" name="user_address_3" type="text" placeholder="상세주소">
			<div class="btns">
				<input class="cancel" type="button" value="취소">
				<input class="next" type="button" value="가입완료">
			</div>
			<h4 class="login_copyright">Copyright kpark Co., Ltd. All Rights Reserved.</h4>
		</div>
	</div>
</body>
</html>