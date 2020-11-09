<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 - KPARK</title>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/join_3.css" />" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.1.0.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="<c:url value="/resources/js/zip.js" />"></script>
	<script type="text/javascript">
		window.addEventListener("keyup", function(e){
			console.log(e.key);
			document.getElementById("user_email").value = document.getElementById("user_email_1").value + '@' + document.getElementById("user_email_2").value;
			document.getElementById("user_address").value = document.getElementById("user_address_2").value + ' ' + document.getElementById("user_address_3").value;
			/* console.log(document.getElementById("user_address").value); */
		});
		
		if($("#memberForm").submit(function(){
			if($("#user_pw").val() !== $("#user_pw_check").val()){
				alert("비밀번호 확인이 일치하지 않습니다.");
				$("#pw1").val("").focus();
				$("#pw2").val("");
				return false;
			}else if($.trim($("#user_pw").val()) !== $("#user_pw").val()){
				alert("비밀번호에 공백은 입력이 불가능합니다.");
				return false;
			}
		}));
	</script>
</head>
<body>
	<div class="join_wrap">
		<div class="join_inner">
			<div class="logo_container">
				<a href="${contextPath }/"></a>
			</div>
			<h2>회원가입</h2>
			<h3>아이디</h3>
			<form name="memberForm" method="post" action="${contextPath }/member/addMember.do">
			<input class="input_id" id="user_id" name="user_id" type="text" placeholder="6~12자">
			<input class="input_id_check" type="button" value="중복확인">
			<h3>비밀번호</h3>
			<input class="input_pw" id="user_pw" name="user_pw" type="password" placeholder="8~16자 (영문, 숫자 포함)">
			<input class="input_pw_check" id="user_pw_check" name="user_pw_check" type="password" placeholder="비밀번호 확인">
			<h3>이름</h3>
			<input class="input_name" id="user_name" name="user_name" type="text" placeholder="">
			<h3>휴대 번호</h3>
			<input class="input_phone" id="user_phone" name="user_phone" type="number" placeholder="숫자만 입력해주세요.">
			<h3>이메일</h3>
			<input class="input_email_1" id="user_email_1" name="user_email_1" type="text" placeholder="">
			<div class="at">@</div>
			<input class="input_email_2" id="user_email_2" name="user_email_2" type="text" placeholder="">
			<input id="user_email" name="user_email" type="text" style="display: none;">
			<h3>주소</h3>
			<input class="input_address_1" id="user_address_1" name="user_zip" type="number" placeholder="우편번호" readonly>
			<input class="button_address_find" type="button" onclick="zip_adress()" value="우편번호 찾기">
			<input class="input_address_2" id="user_address_2" name="user_address_2" type="text" placeholder="주소">
			<input class="input_address_3" id="user_address_3" name="user_address_3" type="text" placeholder="상세주소">
			<input id="user_address" name="user_address" type="text" style="display: none;">
			<div class="btns">
				<input class="cancel" type="button" value="취소">
				<input class="next" type="submit" value="가입완료">
			</div>
			</form>
			<h4 class="login_copyright">Copyright kpark Co., Ltd. All Rights Reserved.</h4>
		</div>
	</div>
</body>
</html>