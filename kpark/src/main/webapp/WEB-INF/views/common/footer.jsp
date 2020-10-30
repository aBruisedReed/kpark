<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<html>
<head>
	<title>footer</title>
	<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
</head>
<body>
<footer>
	<div class="footer_content">
		<div class="footer_cont">
			<div class="footer_logo">
				<img src="${contextPath}/resources/image/kpark_logo_gray.png">
			</div>
            <!-- footer_area -->
            <div class="footer_area">
                <!-- family_site --><!-- 18.09.14 수정 -->
                <address>
					서울특별시 종로구 돈화문로 26, 4층 402호(묘동, 단성사) KGITBANK: 4팀<br>
					고객지원센터 대표번호: 02-1111-2222 FAX: 02-3333-4444 
				</address>
                <p class="copyright">Copyrights © K PARK All rights Reserved.</p>
				<p class="copyright">케이파크는 프로젝트 목적으로 만들어졌습니다.</p>
            </div>
            <!-- //footer_area -->
        </div>
	</div>
</footer>
</body>
</html>
