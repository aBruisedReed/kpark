<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPatd" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>차량 정보 - 브랜드 정보</title>
	<link rel="stylesheet" href="${contextPatd }/resources/css/brandInfo.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
			$('ul.tabs li').click(function(){
				var tab_id = $(this).attr('data-tab');
	
				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');
	
				$(this).addClass('current');
				$("#"+tab_id).addClass('current');
			})
	
		})
	</script>
	
</head>
<body>
	<div id="all">
		<div id="title">차량 정보</div>

		<div id="content">
			<hr><br>
			<table id="table">
			  <tr>
			    <td rowspan="6" id="imgTd"><img src="https://imgauto-phinf.pstatic.net/20180529_88/auto_1527592677868AxMTJ_PNG/20180529201748_nbVe4EOk.png?type=f100_100"><h3>현대자동차</h3></td>
			    <td class="th">소재지</td>
			    <td>서울시 서초구 헌릉로 12</td>
			  </tr>
			  <tr>
			    <td class="th">모기업</td>
			    <td>현대자동차그룹</td>
			  </tr>
			  <tr>
			    <td class="th">창립일</td>
			    <td>1967-12-29</td>
			  </tr>
			  <tr>
			    <td class="th">창립자</td>
			    <td>정주영</td>
			  </tr>
			  <tr>
			    <td class="th">슬로건</td>
			    <td>New Thinking New Possibilities</td>
			  </tr>
			  <tr>
			    <td class="th">대표업종</td>
			    <td>자동차 제조업</td>
			  </tr>
			</table>
			<p id="article">
				현대자동차는 1967년 12월 29일에 설립된 현대자동차그룹 계열의 완성차 생산·판매 업체이다. 본사는 서울특별시 서초구 헌릉로 12 (양재동)에 위치해있다. 2013년 기준으로 세계에서 8번째, 세계 4위 현대모터그룹으로 큰 자동차 회사이며, 시가 총액 기준으로 코스피 3위의 대기업이다. 약칭이자 코스피 시장에서의 명칭은 현대차이다. 미국, 중국, 인도, 러시아, 브라질, 체코, 인도네시아(건설중), 파키스탄 등에 공장을 가진 세계적 다국적 기업이다.
			</p>
			<div class="model_container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">시판 모델</li>
					<li class="tab-link" data-tab="tab-2">단종 모델</li>
				</ul>
				
				<!-- 동적 구현 -->
				<!-- 시판 모델 -->
				<div id="tab-1" class="tab-content current">
					<table class="sell_table">
					  <tr>
					    <td>
					    		<img src="${contextPatd}${list[0].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[0].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[0].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[0].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[0].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[0].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<img src="${contextPatd}${list[1].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[1].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[1].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[1].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[1].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[1].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<img src="${contextPatd}${list[2].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[2].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[2].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[2].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[2].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[2].carType}"/></p>
					    	</div>
					    </td>
					  </tr>
					  
					  <tr>
					    <td>
					    		<img src="${contextPatd}${list[3].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[3].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[3].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[3].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[3].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[3].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<img src="${contextPatd}${list[4].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[4].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[4].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[4].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[4].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[4].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<img src="${contextPatd}${list[5].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[5].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[5].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[5].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[5].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[5].carType}"/></p>
					    	</div>
					    </td>
					  </tr>
					  
					</table>
				</div>
				
				
				<!-- 동적 구현 -->
				<!-- 단종 모델 -->
				<div id="tab-2" class="tab-content">
					<table class="sell_table">
					  <tr>
					    <td>
					    		<img src="${contextPatd}${list1[0].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[0].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[0].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[0].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[0].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[0].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<img src="${contextPatd}${list1[1].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[1].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[1].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[1].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[1].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[1].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<img src="${contextPatd}${list1[2].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[2].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[2].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[2].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[2].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[2].carType}"/></p>
					    	</div>
					    </td>
					  </tr>
					  
					  <tr>
					    <td>
					    		<img src="${contextPatd}${list1[3].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[3].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[3].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[3].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[3].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[3].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<img src="${contextPatd}${list1[4].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[4].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[4].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[4].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[4].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[4].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<img src="${contextPatd}${list1[5].image}">
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[5].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[5].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[5].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[5].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[5].carType}"/></p>
					    	</div>
					    </td>
					  </tr>
					  
					</table>
				</div>

			</div>
		</div>
	</div>
</body>
</html>