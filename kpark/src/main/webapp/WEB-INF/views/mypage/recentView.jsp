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
	<title>최근 본 차량</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/recentView.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js">
		</script>
		<script type="text/javascript">
		$(document).ready(function(){
		    // 체크박스 전체선택 기능
		    $("#checkAll").click(function(){
		        var check = $("#checkAll").prop("checked");
				$("input[name=chk]").prop("checked", check);
		    })
		})
		</script>
</head>
<body>
	<div id="all">
		<div id="title">
			<p><input type="checkbox" id="checkAll">최근 본 차량 <span>2</span>대</p><hr>
		</div>
		<!-- for문 이용 동적 구현 -->
		<div class="object">
			<div class="check_div"><input class="chk_class" type="checkbox" name="chk"></div>
			<div class="img_div"><img src="http://www.m-park.co.kr/AttEdit/CarPhoto/Middle/0101501/0101501424R1.jpg"></div>
			<div class="explain_div">
				<p class="car_title">현대 쏘나타 LF쏘나타 1.7디젤 케어플러스</p>
				<p class="car_info">2017년식 | 64443km | 경유</p><br>
				<p class="car_price"><span class="price_number">1,320</span>만원</p>
			</div>
		</div>
		<hr>
		
		<div class="object">
			<div class="check_div"><input class="chk_class" type="checkbox" name="chk"></div>
			<div class="img_div"><img src="http://www.m-park.co.kr/AttEdit/CarPhoto/Middle/0101501/0101501424R1.jpg"></div>
			<div class="explain_div">
				<p class="car_title">현대 쏘나타 LF쏘나타 1.7디젤 케어플러스</p>
				<p class="car_info">2017년식 | 64443km | 경유</p><br>
				<p class="car_price"><span class="price_number">1,320</span>만원</p>
			</div>
		</div>
		<hr>
		<!-- 까지 동적 구현 -->
		
		<div id="buttons">
			<a onClick="window.open(this.href, '', 'width=900, height=900'); return false;" href="${contextPath }/mypage/pop_compare"><input type="button" id="compare" value="비교하기"></a>
			<input type="button" id="remove" value="삭제">
		</div>
	</div>
</body>
</html>