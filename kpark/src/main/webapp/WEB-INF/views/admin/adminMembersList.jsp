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
	<title>관리자 - 회원 정보 목록</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/adminMembersList.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
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
				  <c:forEach var="member" items="${membersList}" >
				  <tr>
				    <td>${member.user_id }</td>
				    <td>${member.user_name }</td>
				    <td>${member.user_address }</td>
				    <td>${member.user_zip }</td>
				    <td>${member.user_phone }</td>
				    <td>${member.user_email }</td>
				    <td>
				    	<a href="${contextPath}/admin/adminEditForm.do?id=${member.user_id }"><button class="modBtn" >수정</button></a>
				    	<a href="${contextPath}/admin/removeMember.do?id=${member.user_id }" onclick="return confirm('정말 삭제하시겠습니까?');"><button class="delBtn">삭제</button></a>
				    </td>
				  </tr>
				  </c:forEach>
			</table>
			<h3>페이지 번호</h3>
		</div>
	</div>
</body>
</html>