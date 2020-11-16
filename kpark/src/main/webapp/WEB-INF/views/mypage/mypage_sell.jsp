<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath }/resources/css/mypage.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<meta charset="UTF-8">
<title>판매 상담 목록</title>
</head>
<body>
  <div class="wrap">
    <div class="t-label">  <label>판매 상담 내역</label></div>
			<table id="sellsingleList">
				  <tr id="column">
				    <th id="article_num">글번호</th>
				    <th id="article_writer">작성자</th>
				    <th id="article_title">제목</th>
				    <th id="article_date">작성일</th>
				    <th id="article_status">답변 여부</th>
				  </tr>
        
        <c:choose>
				  <c:when test="${sellsingleList==null }">
					<tr height="10">
						<td colspan="5">
							<p align="center">
								<b><span style="font-size: 9pt">등록된 글이 없습니다.</span></b>
							</p>
						</td>
					</tr>
				</c:when>
				
				<c:when test="${sellsingleList!=null }">
				<c:forEach var="sell" items="${sellsingleList }" varStatus="sellNum">
				  <tr>
				    <td>${sellNum.count }</td>
				    <td>${sell.name}</td>
				    <td>${sell.subModel} 판매 문의를 신청 합니다.</td>
				    <td>${sell.carYear }</td>
				    <td>처리전</td>
				  </tr>
				</c:forEach>
				</c:when>
				</c:choose>
      
</table>
<br>
<br>
<table class="b-table2" >
    <tr>
    <td><a href=""><i class="fas fa-arrow-left"></i></a></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
    <td><a href="">1</a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
     <td><a href=""><i class="fas fa-arrow-right"></i></a></td>
    </tr>
</table>
    </div>
</body>
</html>