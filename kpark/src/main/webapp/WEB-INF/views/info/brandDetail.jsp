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
	<title>차량 정보 - 브랜드 리스트</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/brandDetail.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>  
<body>
<div id="all">
<div class="main">
<div class="info">
								<h3 class="title">${car.model}</h3>
									<hr>
					    		
					    		<p class="tag">출시<span> ${car.price}</p>
					    		<p class="tag">연비 <span>${car.fc}</span> </p>
					    		<p class="tag">연료 <span>${car.fuel}</span> </p>
					    		<p class="tag">차종 <span>${car.carType}</p></span>
					    		
					    	</div>

	<div class="main_img">
                
                    
              <img src="${contextPath }${car.image}" width="567" height="410" >
					
                
              
            </div>
            </div>
            </div>
	
</body>
</html>