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
	<meta charset="UTF-8">
	<title>회원 탈퇴</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
	</script>
</head>
<body>

 <div class="wrap">
 <div class="edit">
 <label><h1>회원 탈퇴</h1></label>
 
 <label><h3>본인 확인을 위해 비밀번호를 입력해 주세요</h3></label>
 <br><br>
 <form id="quitForm" method="POST" action="${contextPath }/mypage/quitMember.do">
 <input type="hidden" name="user_id" value="${member.user_id }">
 <label class="title">비밀번호</label>
  <br>
 <br>
 <input class="pwd" id="pwCheck" name="pwCheck" type="password" >
 
 <br><br><br>
 <div class="edit_btn">
  <input type="submit" value="회원 탈퇴">
 <input type="button" value="취소">
 </div>
 </form>
 </div>
 </div>

</body>
</html>