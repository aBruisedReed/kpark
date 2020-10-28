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
<link rel="stylesheet" href="${contextPath }/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath }/resources/css/mypage.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<meta charset="UTF-8">
<title>구매 상담 목록</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<%@include file="/WEB-INF/views/common/sidebar.jsp" %>
  <div class="wrap">
    <div class="t-label">  <label>구매 상담 내역</label></div>
<table class="b-table1">
    <tr><th>글번호</th>
        <th>작성자</th>
        <th>제목</th>
        <th>작성일</th>
        <th>답변 여부</th></tr>
        
        <tr><td class="b1">1</td>
            <td class="b2">홍길동</td>
            <td class="b3">000차량에 문의 드립니다.</td>
            <td class="b4">2020.1.1</td>
            <td>처리전</td>
        </tr>
          <!--동적 자료 구현시 아래 내용은 삭제-->
        <tr><td>1</td>
            <td>홍길동</td>
            <td>000차량에 문의 드립니다.</td>
            <td>2020.1.1</td>
            <td>처리전</td>
        </tr>
        <tr><td>1</td>
            <td>홍길동</td>
            <td>000차량에 문의 드립니다.</td>
            <td>2020.1.1</td>
            <td>처리전</td>
        </tr>
      
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
     <%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>