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
	<title>관리자 - 구매 상담 목록</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/adminSellList.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>
	<div id="all">
		<div id="title">
			<h1>판매 상담 목록</h1>
		</div>
		<div id="list">
			<table id="sellList">
				  <tr id="column">
				    <th id="article_num">글번호</th>
				    <th id="article_writer">작성자</th>
				    <th id="article_title">제조사</th>
				    <th id="article_date">모델명</th>
				    <th id="article_answer">가격</th>
				    <th id="article_year">연식</th>
				  </tr>
				  <c:choose>
				  <c:when test="${sellList==null }">
					<tr height="10">
						<td colspan="5">
							<p align="center">
								<b><span style="font-size: 9pt">등록된 글이 없습니다.</span></b>
							</p>
						</td>
					</tr>
				</c:when>
				
				<c:when test="${sellList!=null }">
				<c:forEach var="sell" items="${sellList }" varStatus="sellNum">
					  <tr style="cursor: pointer;" onclick="location.href='${contextPath }/admin/adminSellListView.do?id=${sell.id}&subModel=${sell.subModel}'">
					    <td>${sellNum.count }</td>
					    <td>${sell.name }</td>
					    <td>${sell.maker }</td>
					    <td>${sell.subModel }</td>
					    <td>${sell.price }</td>
					    <td>${sell.carYear }</td>
					  </tr>
				</c:forEach>
				</c:when>
				</c:choose>
			</table>
			<!-- <h3>페이지 번호</h3> -->
		</div>
	</div>
</body>
</html>