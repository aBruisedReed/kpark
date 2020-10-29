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
	<title>고객센터</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/helpCenter.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			/* methods */
		</script>
</head>
<body>
	<div id="all">
		<div id="title">
			<h1>고객센터</h1>
			<p>고객님의 소중한 생각을 반영하는 K파크가 되도록 노력하겠습니다.</p> 
		</div>
		<div id="firstBox">
			<table>
				<tr>
					<td>
						<img src="${contextPath}/resources/image/helpCenter/phone-call.png">
					</td>
					<td>
						<p id="bold">K파크에서 업무를 보시는 데 어려움이 있으시다구요?</p>
						<p>고객님께서 K파크를 이용하시면서 궁금하거나 불편한 사항이 있으시면 언제든지 자유롭게 문의하셔도 좋습니다. 고객님의 중고차 쇼핑과정에서 발생되는 문제에 귀 기울이겠습니다.</p>
					</td>
				</tr>
			</table>
		</div>
		<div id="secondBox">
			<p>0 2 - 1 2 3 4 - 5 6 7 8</p>
		</div>
		<div id="thirdBox">
			<div id="location">
				<img id="map_icon" src="${contextPath}/resources/image/helpCenter/pin.png">
				<p class="helpTitle">업무 지원 센터</p>
				<p>K파크 빌딩 1층</p>
				<p>영업 시간 : 평일 9시 ~ 18시</p>
			</div>
			<div id="email">
				<img id="chat_icon" src="${contextPath}/resources/image/helpCenter/email.png">
				<p class="helpTitle">E-mail 문의</p>
				<p>kpark123@test.com</p>
			</div>
		</div>
	</div>
</body>
</html>