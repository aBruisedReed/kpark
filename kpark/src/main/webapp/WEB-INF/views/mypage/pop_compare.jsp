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
	<title>차량 비교</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/pop_compare.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* method */
	</script>
</head>
<body>
	<div id="all">
		<div id="title">
			<p>차량 비교</p>
		</div>
		<div id="cars">
			<!-- 동적 구현 -->
			<div class="object">
				<img src="http://www.m-park.co.kr/AttEdit/CarPhoto/Middle/0101501/0101501424R1.jpg">
				<p class="car_title">쉐보레/대우 아베오 1.6 LT 최고급형</p>
				<p class="car_price">1,120만원</p>
			</div>
			
			<div class="object">
				<img src="http://www.m-park.co.kr/AttEdit/CarPhoto/Middle/0101501/0101501424R1.jpg">
				<p class="car_title">쉐보레/대우 아베오 1.6 LT 최고급형</p>
				<p class="car_price">1,120만원</p>
			</div>
			<!-- 까지 동적 구현 -->
		</div>
		
		<div id="title2">
			<p>차량 기본 정보</p>
		</div>
		<!-- 동적 구현 -->
		<table id="compareTable">
			  <tr>
			    <th>제조사</th>
			    <th>모델명</th>
			    <th>차량번호</th>
			    <th>가격</th>
			    <th>주행거리</th>
			    <th>연료</th>
			    <th>연식</th>
			    <th>색상</th>
			    <th>변속기</th>
			    <th>사고여부</th>
			    <th>단순수리</th>
			    <th>침수</th>
			    <th>수리이력</th>
			    <th>내차피해</th>
			    <th>타차피해</th>
			    <th>압류</th>
			    <th>저당</th>
			    <th>네비게이션</th>
			    <th>블랙박스</th>
			    <th>후방카메라</th>
			    <th>썬루프</th>
			    <th>열선시트</th>
			    <th>통풍시트</th>
			    <th>열선핸들</th>
			    <th>하이패스</th>
			    <th>스마트키</th>
			    <th>크루즈컨트롤</th>
			  </tr>
			  <tr>
			    <td>현대</td>
			    <td>2017 아반떼</td>
			    <td>29러7883</td>
			    <td>1,120만원</td>
			    <td>64,443km</td>
			    <td>휘발유</td>
			    <td>2017</td>
			    <td>다크그레이</td>
			    <td>자동</td>
			    <td>없음</td>
			    <td>0회</td>
			    <td>없음</td>
			    <td>0회</td>
			    <td>0회</td>
			    <td>0회</td>
			    <td>없음</td>
			    <td>없음</td>
			    <td>O</td>
			    <td>O</td>
			    <td>O</td>
			    <td>X</td>
			    <td>O</td>
			    <td>O</td>
			    <td>X</td>
			    <td>X</td>
			    <td>X</td>
			    <td>X</td>
			  </tr>
			  <tr>
			    <td>현대</td>
			    <td>2017 아반떼</td>
			    <td>29러7883</td>
			    <td>1,120만원</td>
			    <td>64,443km</td>
			    <td>휘발유</td>
			    <td>2017</td>
			    <td>다크그레이</td>
			    <td>자동</td>
			    <td>없음</td>
			    <td>0회</td>
			    <td>없음</td>
			    <td>0회</td>
			    <td>0회</td>
			    <td>0회</td>
			    <td>없음</td>
			    <td>없음</td>
			    <td>O</td>
			    <td>O</td>
			    <td>O</td>
			    <td>X</td>
			    <td>O</td>
			    <td>O</td>
			    <td>X</td>
			    <td>X</td>
			    <td>X</td>
			    <td>X</td>
			  </tr>
		</table>
		<!-- 까지 동적 구현 -->
		
	</div>
</body>
</html>