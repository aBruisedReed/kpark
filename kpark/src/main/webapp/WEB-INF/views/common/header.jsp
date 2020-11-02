<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>header</title>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/header.css" />" rel="stylesheet">
	
</head>
<body>
<header>
	<div class="header_content">
		<h1 class="logo">
			<a href="${contextPath }/kpark/"></a>
		</h1>
		<div class="searchbox">
			<input class="search_text" type="text" placeholder="모델명을 검색해주세요.">
			<input class="search_button" type="button">
		</div>
		<nav class="header_nav">
			<ul>
				<li><a href="${contextPath }/kpark/member/login.do">로그인</a></li>
				<li><a href="${contextPath }/kpark/member/join_1.do">회원가입</a></li>
				<li><a href="${contextPath }/kpark/common/helpCenter.do">고객센터</a></li>
				<!-- <li><a href="login">마이페이지</a></li>
				<li><a href="login">관리자메뉴</a></li> -->
			</ul>
		</nav>
		<nav class="main_nav">
			<li class="nav1"><a href="buy">차량구매</a>
				<ul class="nav1_over">
					<li class="buy_1"><a href="all">전체차량</a></li>
					<li class="buy_2"><a href="search">조건검색</a></li>
					<li class="buy_3"><a href="buyConsult">구매상담</a></li>
				</ul>
			</li>
			<li class="nav2"><a href="${contextPath }/kpark/sell/sellForm.do">차량판매</a>
				<ul class="nav2_over">
					<li class="sell_1"><a href="${contextPath }/kpark/sell/sellForm.do">판매상담</a></li>
				</ul>
			</li>
			<li class="nav3"><a href="info">차량정보</a>
				<ul class="nav3_over">
					<li class="info_1"><a href="infoCar">차량정보</a></li>
				</ul>
			</li>
			<li class="nav4"><a href="${contextPath }/kpark/community/reviewList.do">커뮤니티</a>
				<ul class="nav4_over">
					<li class="comm_1"><a href="${contextPath }/kpark/community/reviewList.do">거래후기</a></li>
					<li class="comm_2"><a href="${contextPath }/kpark/community/newsList.do">자동차뉴스</a></li>
					<li class="comm_3"><a href="${contextPath }/kpark/community/boardList.do">자유게시판</a></li>
				</ul>
			</li>
		</nav>
	</div>
</header>
</body>
</html>
