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
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/sidebar.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/sidebar.js" />"></script>
	<title>sidebar</title>
	<script type="text/javascript">
		function fn_needLogin(isLogOn, mypage, login) {
			if(isLogOn != '' && isLogOn != 'false') {
				location.href=mypage;
			}
			else {
				alert('로그인 후 이용 가능합니다.');
				location.href=login+'?action=/mypage/mypage_select.do';
			}
		}
	</script>
</head>
<body>
<div id="sidebar">
	<div class="quickMenu">
		<div>
			<a class="mpBtn" href="javascript:fn_needLogin('${isLogOn }',
		'${contextPath }/mypage/mypage_select.do','${contextPath}/member/login.do')">
			<div class="mpBtnIcon"></div>
			<h3>마이페이지</h3>
			</a>
		</div>
		<div>
			<a class="rvBtn" href="${contextPath }/mypage/recentView.do" onClick="window.open(this.href, '', 'width=900, height=650'); return false;">
			<div class="rvBtnIcon"></div>
			<h3>최근본차량</h3>
			</a>
		</div>
		<div>
			<a class="fcBtn" href="${contextPath }/mypage/favoriteCar.do" onClick="window.open(this.href, '', 'width=900, height=650'); return false;">
			<div class="fcBtnIcon"></div>
			<h3>관심차량</h3>
			</a>
		</div>
		<div>
			<a class="ccBtn" href="${contextPath }/mypage/compareCar.do" onClick="window.open(this.href, '', 'width=900, height=650'); return false;">
			<div class="ccBtnIcon"></div>
			<h3>차량비교</h3>
			</a>
		</div>
	</div>
	<div class="topBtn">
		<div class="topBtnIcon"></div>
		<h3>TOP</h3>
	</div>
</div>
</body>
</html>
