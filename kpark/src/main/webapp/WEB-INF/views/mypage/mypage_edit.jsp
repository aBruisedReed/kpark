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

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.1.0.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="<c:url value="/resources/js/zip.js" />"></script>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>

 <div class="wrap">
 <div class="edit">
 <label><h1>회원정보 수정</h1></label>
 <br><br>
 <label class="title">아이디</label>
 <br><br>
 <label class="id"><h3>UJH</h3></label>
  <br>
 <label class="title">비밀번호 변경</label>
 <br><br>
 <input class="pwd" id="user_pw" type="text" placeholder="현재 비밀번호">
 <br>
 <input type="text" placeholder="새로운 비밀번호">
 <br>
 <input type="text" placeholder="새로운 비밀번호 확인">
 <br><br>
 <label class="title">이름</label>
 <br><br>
 <label>홍길동</label>
 <br><br>
 <label class="title">휴대폰 번호</label>
 <br><br>
  <input type="text" id="user_phone" placeholder="010-0000-0000">
  <br><br>
  <label class="title">이메일</label>
  <br><br>
<!--   <input type="text" placeholder="your_email"> -->
<input class="input_email_1" id="user_email_1" name="user_email_1" type="text" placeholder="">
			<div class="at">@</div>
			<input class="input_email_2" id="user_email_2" name="user_email_2" type="text" placeholder="">
  <br><br>
   <label class="title">주소</label>
 <br><br>
 <input class="input_address_1" id="user_address_1" name="user_address_1" type="number" placeholder="우편번호" readonly>
			<input class="button_address_find" type="button" onclick="zip_adress()" value="우편번호 찾기">
			<input class="input_address_2" id="user_address_2" name="user_address_2" type="text" placeholder="주소">
			<input class="input_address_3" id="user_address_3" name="user_address_3" type="text" placeholder="상세주소">
<!-- <input type="text" id="sample3_postcode" placeholder="우편번호"> -->
<!-- <input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br> -->
<!-- <input type="text" id="sample3_address" placeholder="주소"><br> -->
<!-- <input type="text" id="sample3_detailAddress" placeholder="상세주소"> -->
<!-- <input type="text" id="sample3_extraAddress" placeholder="참고항목"> -->



  <br><br><br>
  <div class="edit_btn">
  <input type="button" value="수정 완료">
 <input type="button" value="취소">
 </div>
    </div>

 
 </div>
 
</body>
</html>