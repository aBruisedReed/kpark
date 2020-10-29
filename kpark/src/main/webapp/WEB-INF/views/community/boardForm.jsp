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
	<title>boardAticleForm</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/community.css" />
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
	function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/board/listArticles.do";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  

</script>
</head>

<body>
	
    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <li class='active'>자유게시판</li>
	    <li>자동차뉴스</li>
	    <li>거래후기</li>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <table class="common">
    <!-- 자유게시판 -->
    <div class="ttl">커뮤니티 <strong>자유게시판</strong></div>
    <div class="ttl-sm">자유게시판을 작성하세요.</div><br><br>

	<div class="formboard">
    <form name="boardForm" method="post" action="${contextPath}/board/addNewArticle.do"   enctype="multipart/form-data">

      <tr>
	<td align="right">작성자 : </td>
	<td colspan=2  align="left"><input type="text" size="100" maxlength="100"  value="${member.name }" readonly/> </td>
      </tr>
      <tr>
	<td align="right">글제목 : </td>
	<td colspan="2"><input type="text" size="100"  maxlength="100" name="title" /></td>
      </tr>
      <tr>
	<td align="right" valign="top"><br>글내용: </td>
	<td colspan=2><textarea name="content" rows="10" cols="100" maxlength="4000"></textarea> </td>
     </tr>
     <tr>
	<td align="left">이미지파일 첨부:  </td>
	<td>
		<input type="button" value="파일 추가" onClick="fn_addFile()" value="파일추가"/></td>
	<td>
		<input type="file" name="imageFileName"  onchange="readURL(this);" /><br>
		<div id="d_file" colspan="3"></div></td>
     </tr>
     <tr>
		<td align="center" colspan=3>
			<input type="submit" value="글쓰기" />
			<input type=button value="목록보기"onClick="backToList(this.form)" />
		</td>
	</tr>
    </div>
    </table>
	</div>
  </form>
</body>
</html>