<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
	<title>차량 상세 보기</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/brandDetail.css" />
	
</head>

<body>

	<div class='tabbed skin-turquoise round'>
 	<ul>
	    <a href="income"><li>수입차</li></a>
	    <a href="compare"><li>수입차</li></a>
	    <a href="domestic"><li class='active'>국산차</li></a>
	 </ul>
	 </div>
	 
	 <div class="common">
    <table class="common">
    	<h2>기아자동차</h2>
    	<h1>2021 셀토스</h1>
    		<table class="type09">
			    <tbody>
			    <th scope="row">출시가</th>
			        <td>1,934~2,896만원</td>
			        <td rowspan=5>
			        	<img src="https://imgauto-phinf.pstatic.net/20200701_134/auto_1593567471182xckkG_PNG/20200701103741_wAfGX6eK.png?type=f567_410" width="567" height="410" onerror="this.src='https://ssl.pstatic.net/static/auto/2010/img_end_noimg.gif'" alt="2021 셀토스">
			    <tr>
			        <th scope="row">연비</th>
			        <td>10.9~17.6km/L</td>
			    </tr>
			    <tr>
			        <th scope="row">연료</th>
			        <td>디젤, 가솔린</td>
			    </tr>
			    <tr>
			        <th scope="row">출력</th>
			        <td>136~177hp</td>
			    </tr>
			    <tr>
			        <th scope="row">판매</th>
			        <td>국내출시</td>
			    </tr>
			    </tbody>
			</table>
    </table>
    </div>

    <div class='tabbed skin-turquoise round'>
     <ul>
	    <a href="image"><li>이미지</li></a>
	    <a href="price"><li>제원/가격</li></a>
	    <a href="all"><li class='active'>전제</li></a>
	 </ul>
	</div>
	
    <div class="common">
    <table class="common">
    	<h2>제원/가격</h2>
    		<table class="type09">
			    <thead>
			    <tr>
			        <th scope="cols">모델명</th>
			        <th scope="cols">배기량</th>
			        <th scope="cols">최대출력</th>
			        <th scope="cols">연비</th>
			        <th scope="cols">출시가</th>
			    </tr>
			    </thead>
			    <tbody>
			    <tr>
			        <th scope="row">1.6  가솔린 터보</th>
			        <td>1,591cc</td>
			        <td>177hp</td>
			        <td>11.8~12.7km/L</td>
			        <td>1,934~2,528만원</td>
			    </tr>
			    <tr>
			        <th scope="row">1.6 가솔린 터보 4WD</th>
			        <td>1,591cc</td>
			        <td>177hp</td>
			        <td>10.9~11.1km/L</td>
			        <td>2,111~2,705만원</td>
			    </tr>
			    <tr>
			        <th scope="row">1.6 디젤</th>
			        <td>1,598cc</td>
			        <td>136hp</td>
			        <td>16.4~17.6km/L</td>
			        <td>2,125~2,719만원</td>
			    </tr>
			    </tbody>
			    <tr>
			        <th scope="row">1.6 디젤 4WD</th>
			        <td>1,598cc</td>
			        <td>136hp</td>
			        <td>14.8~16.1km/L
			        <td>2,302~2,896만원</td>
			    </tr>
			    </tbody>
			</table>
    </table>
    </div>
    
</body>
</html>