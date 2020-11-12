<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>boardReplyForm</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/community.css" />
	 <script src="//code.jquery.com/jquery-3.3.1.js"></script> 
	<script type="text/javascript">


	 function backToList(obj){
	 obj.action="${contextPath}/board/listArticles.do";
	 obj.submit();
	 }
	 
	 
	  function readURL(input) {
	      if (input.files && input.files[0]) {
	          var reader = new FileReader();
	          reader.onload = function (e) {
	              $('#preview').attr('src', e.target.result);
	          }
	          reader.readAsDataURL(input.files[0]);
	      }
	  }  
	</script> 
</head>

<body>
    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <a href="boardList"><li class='active'>자유게시판</li></a>
	    <a href="newsList"><li>자동차뉴스</li></a>
	    <a href="reviewList"><li>거래후기</li></a>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <table class="common">
    <!-- 자유게시판 -->
    <div class="ttl">커뮤니티 <strong>자유게시판</strong></div>
    <div class="ttl-sm">게시글의 댓글을 작성하세요.</div><br><br>

	<div class="formboard">
  	<form name="frmReply" method="post"  action="${contextPath}/community/boardAddReply.do"   enctype="multipart/form-data">
    <tr>
			<td align="right"> 작성자:&nbsp; </td>
			<td colspan=2  align="left"><input type="text" maxlength="100" maxlength="100"  name="writer"></input> </td>
		</tr>
		<tr>
			<td align="right">제목:&nbsp;  </td>
			<td colspan="2"><input type="text" size="100"  maxlength="100" name="title"> </input></td>
		</tr>
		<tr>
			<td align="right" valign="top"><br>내용:&nbsp; </td>
			<td colspan="2"><textarea name="content" rows="10" cols="100" maxlength="4000"> </textarea> </td>
		</tr>
		<tr>
			<td align="right">비밀번호:&nbsp;  </td>
			<td colspan="2"><input type="password" size="20" maxlength="12" name="passwd"> </input> </td>
		</tr>
		<tr>
			<td align="left">이미지파일 첨부:  </td>
			<td colspan="2"><input type="file" name="imageFileName"  onchange="readURL(this);" /></td>
		</tr>
	<tr id="listbuttons">
		<td align="center" colspan=3>
			<input type="submit" value="답글쓰기" id="submit"/>
			<input type=button value="취소"onClick="backToList(this.form)" />
		</td>
	</tr>
  </form>
  </div>
    </table>
    <div class="a_paging" style="margin-top: 40px"></div>
  </div>
</body>
</html>