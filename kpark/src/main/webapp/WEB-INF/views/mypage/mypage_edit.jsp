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

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.1.0.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="<c:url value="/resources/js/zip.js" />"></script>
	<script type="text/javascript">
	window.addEventListener("keyup", function(e){
		document.getElementById("user_address").value = document.getElementById("user_address_2").value + ' ' + document.getElementById("user_address_3").value;
	});
		
		if($("#editForm").submit(function(){
			if($("#pw1").val() !== $("#pw2").val()){
				alert("비밀번호 확인이 일치하지 않습니다.");
				$("#pw1").val("").focus();
				$("#pw2").val("");
				return false;
			}else if($.trim($("#pw1").val()) !== $("#pw1").val()){
				alert("비밀번호에 공백은 입력이 불가능합니다.");
				return false;
			}
		}));
		
		$(document).ready(function(){
			$("#submit").on("click", function(){
				if($("#pw1").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pw1").focus();
					return false;
				}
				if($("#user_name").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				if($("#user_phone").val()=="") {
					alert("전화 번호를 입력해주세요.");
					$("#user_phone").focus();
					return false;
				}
				if($("#user_address_1").val()=="") {
					alert("주소를 입력해주세요.");
					$("#user_address_1").focus();
					return false;
				}
				if($("#user_address_2").val()=="") {
					alert("주소를 입력해주세요.");
					$("#user_address_2").focus();
					return false;
				}
			}
	</script>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>

 <div class="wrap">
 <div class="edit">
 <form id="editForm" action="${contextPath }/mypage/updateMember.do" method="POST">
 <label><h1>회원정보 수정</h1></label>
 <br><br>
 <label class="title">아이디</label>
 <br><br>
 <label class="id"><input type="text" name="user_id" value="${member.user_id }" readonly="readonly"></label>
  <br>
 <label class="title">비밀번호 변경</label>
 <br><br>
 <input class="pwd" id="old_pw" type="password" name="old_pw" placeholder="현재 비밀번호">
 <br>
 <input type="password" id="pw1" placeholder="새로운 비밀번호">
 <br>
 <input type="password" id="pw2" name="user_pw"  placeholder="새로운 비밀번호 확인">
 <br><br>
 <label class="title">이름</label>
 <br><br>
 <label>${member.user_name }</label>
 <br><br>
 <label class="title">휴대폰 번호</label>
 <br><br>
  <input type="number" id="user_phone" value="${member.user_phone }">
  <br><br>
  <label class="title">이메일</label>
  <br><br>
<!--   <input type="text" placeholder="your_email"> -->
<input class="input_email_1" id="user_email_1" name="user_email" value="${member.user_email }" type="text" placeholder="e-mail" >
  <br><br>
   <label class="title">주소</label>
 <br><br>
 <input class="input_address_1" id="user_address_1" name="user_zip" type="number" value="${member.user_zip }"  placeholder="우편번호" readonly>
			<input class="button_address_find" type="button" onclick="zip_adress()" value="우편번호 찾기">
			<input class="input_address_2" id="user_address_2" name="user_address_2" type="text" placeholder="주소" value="${member.user_address }">
			<input class="input_address_3" id="user_address_3" name="user_address_3" type="text" placeholder="상세주소">
<!-- <input type="text" id="sample3_postcode" placeholder="우편번호"> -->
<!-- <input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br> -->
<!-- <input type="text" id="sample3_address" placeholder="주소"><br> -->
<!-- <input type="text" id="sample3_detailAddress" placeholder="상세주소"> -->
<!-- <input type="text" id="sample3_extraAddress" placeholder="참고항목"> -->



  <br><br><br>
  <div class="edit_btn">
  <input id="submit" type="submit" value="수정 완료">
 <input type="reset" value="다시 입력">
 </div>
 </form>
    </div>

 
 </div>
 
</body>
</html>