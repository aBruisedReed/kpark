<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>

<html>
<head>
	<title>header</title>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/header.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
</head>
<body>
<header>
	<div class="header_content">
		<h1 class="logo">
			<a href="${contextPath }/"></a>
		</h1>
		<div class="searchbox">
			<input id="headerInput" class="search_text" type="text" placeholder="모델명을 검색해주세요.">
			<input class="search_button" type="button" onclick="searchByModelHeader()">
		</div>
		<nav class="header_nav">
			<ul>
				<c:choose>
					<c:when test="${isAdmin == true && member != null }">
						<li><a href="${contextPath }/member/logout.do">로그아웃</a></li>
						<li><a href="${contextPath }/admin/adminSelect.do">관리자페이지</a>
					</c:when>
					<c:when test="${isLogOn == true && member != null }">
						<li><a href="${contextPath }/member/logout.do">로그아웃</a></li>
						<li><a href="${contextPath }/mypage/mypage_select.do">마이페이지</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${contextPath }/member/login.do">로그인</a></li>
						<li><a href="${contextPath }/member/join_1.do">회원가입</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="${contextPath }/common/helpCenter.do">고객센터</a></li>
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
			<li class="nav2"><a href="javascript:fn_needLogin('${isLogOn }',
		'${contextPath }/sell/sellForm.do','${contextPath}/member/login.do')">차량판매</a>
				<ul class="nav2_over">
					<li class="sell_1"><a href="javascript:fn_needLogin('${isLogOn }',
		'${contextPath }/sell/sellForm.do','${contextPath}/member/login.do')">판매상담</a></li>
				</ul>
			</li>
			<li class="nav3"><a href="${contextPath }/info/brandList.do">차량정보</a>
				<ul class="nav3_over">
					<li class="info_1"><a href="${contextPath }/info/brandList.do">차량정보</a></li>
				</ul>
			</li>
			<li class="nav4"><a href="${contextPath }/community/reviewList.do">커뮤니티</a>
				<ul class="nav4_over">
					<li class="comm_1"><a href="${contextPath }/community/reviewList.do">거래후기</a></li>
					<li class="comm_2"><a href="${contextPath }/community/newsList.do">자동차뉴스</a></li>
					<li class="comm_3"><a href="${contextPath }/community/board_listArticles.do">자유게시판</a></li>
				</ul>
			</li>
		</nav>
	</div>
</header>
<script>
	function fn_needLogin(isLogOn, sellForm, login) {
		if(isLogOn != '' && isLogOn != 'false') {
			location.href=sellForm;
		}
		else {
			alert('로그인 후 이용 가능합니다.');
			location.href=login+'?action=/sell/sellForm.do';
		}
	}
	function getContextPath() {
	 	 var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	  	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	};
	function searchByModelHeader() {
		if ( $('#headerInput').val()=="" ) {
	      alert("검색어를 입력해주세요.");
	      return;
	    }
		var keyword = $('#headerInput').val();
		location.href = getContextPath()+"/buy/search.do"
			+"?searchType=modelname"
			+"&keyword="+keyword;
	}
	$('#headerInput').keypress(function(event){
		if ( event.which == 13 ) {
	         searchByModelHeader();
	     }
	     
	});
</script>
</body>
</html>
