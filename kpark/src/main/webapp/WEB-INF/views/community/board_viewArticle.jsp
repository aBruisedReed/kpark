<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%-- <c:set var="article"  value="${articleMap.article }"  />
<c:set var="imageFileList"  value="${articleMap.imageFileList }"  /> --%>
<%-- <c:set var="article"  value="${articleMap }"  /> --%>

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>boardView</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/community.css" />
	<style>
     #tr_file_upload{
       display:none;
     }
     #tr_btn_modify{
       display:none;
     }
     #i_imageFileName {
     display: none;
     }
   </style>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
     function backToList(obj){
	    window.location.href="${contextPath}/community/board_listArticles.do";
     }
 
	 function fn_enable(obj){
		 document.getElementById("tr_btn").style.display="none";
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("i_imageFileName").style.display="block";
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("tr_file_upload").style.display="inline-block";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/community/board_modArticle.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
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

<body>    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <a href="board_listArticles.do"><li class='active'>자유게시판</li></a>
	    <a href="newsList.do"><li>자동차뉴스</li></a>
	    <a href="reviewList.do"><li>거래후기</li></a>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <!-- 자유게시판 -->
    <div class="ttl">커뮤니티 <strong>자유게시판</strong></div>
    <div class="ttl-sm">게시글을 확인하세요.</div><br><br>

    <form name="frmArticle" method="post"  action="${contextPath}"  enctype="multipart/form-data">
	<div class="formboard">                                         
    <table class="common">
  <tr>
   <td width=150 align="center" >
      글번호
   </td>
   <td>
    <input class="review" type="text"  value="${article.articleNO }"  disabled />
    <input type="hidden" name="articleNO" value="${article.articleNO}"  />
   </td>
  </tr>
  <tr>
    <td width="150" align="center">
      작성자 아이디
   </td>
   <td >
    <input class="review"  type=text value="${article.id }" name="writer"  disabled />
   </td>
  </tr>
  <tr>
    <td width="150" align="center">
      제목 
   </td>
   <td>
    <input class="review"  type=text value="${article.title }"  name="title"  id="i_title" disabled />
   </td>   
  </tr>
  <tr>
    <td width="150" align="center">
      내용
   </td>
   <td>
    <textarea rows="20" cols="60"  name="content" id="i_content" disabled>${article.content }</textarea>
   </td>  
  </tr>
   <c:if test="${not empty article.imageFileName && article.imageFileName != 'null' }">
		    <tr>
			    <td width="150" align="center" rowspan="2">
			      이미지
			   </td>
			   <td style="border: none;">
			     <input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
			    <img src="${contextPath}/community/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}" id="preview"  /><br>
			   </td>   
			  </tr>  
			    <td>
			       <input  type="file"  name="imageFileName" id="i_imageFileName" onchange="readURL(this);"   />
			    </td>
 </c:if>
	 <tr>
	   <td width="150" align="center">
	      등록일자
	   </td>
	   <td>
	    <input type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled />
	   </td>   
  </tr>
	</table>
  </div> 
  
    </form>
  
  
    
  <div id="tr_btn">
   <div id="buttons" align="center">
       <c:if test="${member.user_id == article.id }">
	      <input type=button value="수정하기" id="submit" onClick="fn_enable(this.form)">
	      <input type=button value="삭제하기" id="submit" onClick="fn_remove_article('${contextPath}/community/board_removeArticle.do', ${article.articleNO})">
	    </c:if>
	    <c:if test="${member.user_id == 'admin' }">
	    	 <input type=button value="삭제하기" id="submit" onClick="fn_remove_article('${contextPath}/community/board_removeArticle.do', ${article.articleNO})">
	    </c:if>
	    <input type=button value="목록보기" id="submit" onClick="backToList(this.form)">
	     <%-- <input type=button value="답글쓰기" id="submit" onClick="fn_reply_form('${contextPath}/community/board_replyForm.do', ${article.articleNO})"> --%>
   </div>
  </div>
	</div>

	<div id="tr_btn_modify">
   	 <div id="buttons2">
          <input class="inline" type=button value="수정" id="submit" onClick="fn_modify_article(frmArticle)">
          <input class="inline" type=button value="취소" id="submit" onClick="backToList(frmArticle)">
      </div>
     </div>
  	
    <div class="a_paging" style="margin-top: 40px"></div>
	
 
 
</body>
</html>