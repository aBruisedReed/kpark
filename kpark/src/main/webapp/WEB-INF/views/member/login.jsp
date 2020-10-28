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
	<title>로그인 - KPARK</title>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>
	<div class="login_wrap">
		<div class="login_inner">
			<form name="loginFrm" id="loginFrm" method="post">
				<div class="login_upper">
				<h1 class="login_logo"><a href="home"></a></h1>	
				<div class="check_remember">
					<input type="checkbox" id="rememberId" name="rememberId" value="아이디 저장" checked>
					<label>아이디 저장</label>
				</div>
				</div>
				<input class="input_id" id="user_id" name="user_id" type="text" placeholder="아이디">
				<input class="input_pw" id="user_pw" name="user_pw"type="password" placeholder="비밀번호">
				<input class="login_button" type="button" value="로그인">
			</form>
			<nav class="login_option">
				<ul>
					<li><a href="findId">아이디 찾기</a></li>
					<li><a href="findPw">비밀번호 찾기</a></li>
					<li><a href="join">회원가입</a></li>
				</ul>
			</nav>
			<nav class="login_other">
				<ul>
					<li><a href="naver">
						<div class="icon_wrap">
							<div class="naver_icon"></div>
						</div>
						<h3>네이버 로그인</h3>
					</a></li>
					<li><a href="kakao">
						<div class="icon_wrap">
							<div class="kakao_icon"></div>
						</div>
						<h3>카카오 로그인</h3>
					</a></li>
					<li><a href="google">
						<div class="icon_wrap">
							<div class="google_icon"></div>
						</div>
						<h3>구글 로그인</h3>
					</a></li>
				</ul>
			</nav>
			<h4 class="login_copyright">Copyright kpark Co., Ltd. All Rights Reserved.</h4>
		</div>
	</div>
</body>
</html>