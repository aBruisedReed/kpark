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
	<title>관리자 - 구매 상담 목록</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/adminBuyList.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<%@include file="/WEB-INF/views/common/sidebar.jsp" %>
	<div id="all">
		<div id="title">
			<h1>구매 상담 목록</h1>
		</div>
		<div id="list">
			<table id="buyList">
				  <tr id="column">
				    <th id="article_num">글번호</th>
				    <th id="article_writer">작성자</th>
				    <th id="article_title">제목</th>
				    <th id="article_date">작성일</th>
				    <th id="article_answer">답변 여부</th>
				  </tr>
				  <tr>
				    <td>1</td>
				    <td>홍길동</td>
				    <td><a href="#">OOO차량에 관한 문의 드립니다.</a></td>
				    <td>2020. 1. 1</td>
				    <td>처리 전</td>
				  </tr>
				  <tr>
				    <td>2</td>
				    <td>홍길동</td>
				    <td><a href="#">OOO차량에 관한 문의 드립니다.</a></td>
				    <td>2020. 1. 1</td>
				    <td>처리 전</td>
				  </tr>
				  <tr>
				    <td>3</td>
				    <td>홍길동</td>
				    <td><a href="#">OOO차량에 관한 문의 드립니다.</a></td>
				    <td>2020. 1. 1</td>
				    <td>처리 전</td>
				  </tr>
				  <tr>
				    <td>4</td>
				    <td>홍길동</td>
				    <td><a href="#">OOO차량에 관한 문의 드립니다.</a></td>
				    <td>2020. 1. 1</td>
				    <td>처리 전</td>
				  </tr>
				  <tr>
				    <td>5</td>
				    <td>홍길동</td>
				    <td><a href="#">OOO차량에 관한 문의 드립니다.</a></td>
				    <td>2020. 1. 1</td>
				    <td>처리 전</td>
				  </tr>
			</table>
			<h3>페이지 번호</h3>
		</div>
	</div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>