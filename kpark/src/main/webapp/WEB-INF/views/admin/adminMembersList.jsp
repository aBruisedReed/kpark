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
	<title>관리자 - 회원 정보 목록</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/adminMembersList.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>
	<div id="all">
		<div id="title">
			<h1>회원 정보 목록</h1>
		</div>
		<div id="list">
			<table id="membersList">
				  <tr id="column">
				    <th id="member_id">아이디</th>
				    <th id="member_name">이름</th>
				    <th id="member_address">주소</th>
				    <th id="member_zipcode">우편번호</th>
				    <th id="member_phone">연락처</th>
				    <th id="member_email">이메일</th>
				    <th>관리</th>
				  </tr>
				  <!-- for문 사용할 것 -->
				  <tr>
				    <td>test1</td>
				    <td>홍길동1</td>
				    <td>서울특별시 종로구 묘동 돈화문로 26, Kpark</td>
				    <td>03183</td>
				    <td>010-1234-5678</td>
				    <td>kgitbank@test.com</td>
				    <td>
				    	<button class="modBtn" onclick="#">수정</button>
				    	<button class="delBtn" onclick="#">삭제</button>
				    </td>
				  </tr>
			</table>
			<h3>페이지 번호</h3>
		</div>
	</div>
</body>
</html>