<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPatd" value="${pageContext.request.contextPath }" />

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
			    <td rowspan="6" id="imgTd"><img src="${list3.get(0) }"><h3>${list3.get(6) }</h3></td>
			    <td class="th">소재지</td>
			    <td>${list3.get(1) }</td>
			  </tr>
			  <tr>
			    <td class="th">모기업</td>
			    <td>${list3.get(2) }</td>
			  </tr>
			  <tr>
			    <td class="th">창립일</td>
			    <td>${list3.get(3) }</td>
			  </tr>
			  <tr>
			    <td class="th">창립자</td>
			    <td>${list3.get(4) }</td>
			  </tr>
			  <tr>
			    <td class="th">슬로건</td>
			    <td>${list3.get(5) }</td>
			  </tr>
			  <tr>
			    <td class="th">대표업종</td>
			    <td>자동차 제조업</td>
			  </tr>
			</table>
			<p id="article">
				${list3.get(7)}
			</p>
			<div class="model_container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">시판 모델</li>
					<li class="tab-link" data-tab="tab-2">단종 모델</li>
				</ul>
				
				<!-- 동적 구현 -->
				<!-- 시판 모델 -->
				<c:url var="URL" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list[0].model}" />
                  
                   </c:url>
                   	<c:url var="URL1" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list[1].model}" />
                  
                   </c:url>
                   	<c:url var="URL2" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list[2].model}" />
                  
                   </c:url>
                   	<c:url var="URL3" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list[3].model}" />
                  
                   </c:url>
                   	<c:url var="URL4" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list[4].model}" />
                  
                   </c:url>
                    	<c:url var="URL5" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list[5].model}" />
                  
                   </c:url>
				<div id="tab-1" class="tab-content current">
					<table class="sell_table">
					  <tr>
					    <td>
					    		<a href="<c:out value="${URL}" />"><img src="${contextPatd}${list[0].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[0].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[0].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[0].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[0].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[0].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<a href="<c:out value="${URL1}" />"><img src="${contextPatd}${list[1].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[1].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[1].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[1].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[1].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[1].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<a href="<c:out value="${URL2}" />"><img src="${contextPatd}${list[2].image}"></a>
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
					    		<a href="<c:out value="${URL3}" />"><img src="${contextPatd}${list[3].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[3].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[3].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[3].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[3].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[3].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<a href="<c:out value="${URL4}" />"><img src="${contextPatd}${list[4].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list[4].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list[4].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list[4].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list[4].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list[4].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<a href="<c:out value="${URL5}" />"><img src="${contextPatd}${list[5].image}"></a>
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
					<c:url var="URL11" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list1[0].model}" />
                  
                   </c:url>
                   	<c:url var="URL12" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list1[1].model}" />
                  
                   </c:url>
                   	<c:url var="URL13" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list1[2].model}" />
                  
                   </c:url>
                   	<c:url var="URL14" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list1[3].model}" />
                  
                   </c:url>
                   	<c:url var="URL15" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list1[4].model}" />
                  
                   </c:url>
                    	<c:url var="URL16" value="/info/brandDetail.do">
					
                   <c:param name="model" value="${list1[5].model}" />
                  
                   </c:url>
				<div id="tab-2" class="tab-content">
					<table class="sell_table">
					  <tr>
					    <td>
					    		<a href="<c:out value="${URL11}" />"><img src="${contextPatd}${list1[0].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[0].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[0].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[0].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[0].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[0].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<a href="<c:out value="${URL12}" />"><img src="${contextPatd}${list1[1].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[1].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[1].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[1].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[1].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[1].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<a href="<c:out value="${URL13}" />"><img src="${contextPatd}${list1[2].image}"></a>
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
					    		<a href="<c:out value="${URL14}" />"><img src="${contextPatd}${list1[3].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[3].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[3].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[3].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[3].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[3].carType}"/></p>
					    	</div>
					    </td>
					    <td>
					    		<a href="<c:out value="${URL15}" />"><img src="${contextPatd}${list1[4].image}"></a>
					    	<div class="info">
					    		<p class="tag1"><c:out value="${list1[4].model}"/></p>
					    		<p class="tag2">출시 <span><c:out value="${list1[4].price}"/></span></p>
					    		<p class="tag3">연비 <span><c:out value="${list1[4].fc}"/></span></p>
					    		<p class="tag4">연료 <span><c:out value="${list1[4].fuel}"/></span></p>
					    		<p class="tag5"><c:out value="${list1[4].carType}"/></p>
					    	</div>
						</td>
					    <td>
					    		<a href="<c:out value="${URL16}" />"><img src="${contextPatd}${list1[5].image}"></a>
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