<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<style>
	   .cls1 {
	   		text-decoration:none;
	   }
	   .cls2 {
	   		text-align:center; 
	   		font-size:30px;
	   }
	 </style>
	<meta charset="UTF-8">
	<title>게시판 목록</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/community.css" />
	<script>
	function fn_articleForm(isLogOn, articleForm, login){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href = articleForm; //로그인 상태이면 글쓰기창으로 이동
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=login+'?action=/community/board_articleForm.do';
	    // 로그아웃 상태이면 action 값으로 다음에 수행할 URL인 /community/board_articleForm.do를 전달하면서 로그인창으로 이동
	  }
	}
	</script>
</head>

<body>
	
    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <a href="board_listArticles"><li class='active'>자유게시판</li></a>
	    <a href="newsList"><li>자동차뉴스</li></a>
	    <a href="reviewList"><li>거래후기</li></a>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <table class="common">
    <!-- 자동차뉴스 -->
    <div class="ttl">커뮤니티 <strong>자유게시판</strong></div>
    <div class="ttl-sm">자유게시판을 확인하세요.</div><br><br><br>
	                                                    
    <div class="boardlist">
	<table class=boardlist align="center" border="1"  width="80%"  >
	  <tr height="10" align="center">
	     <td >글번호</td>
	     <td >작성자</td>              
	     <td >제목</td>
	     <td >작성일</td>
	     <td >조회수</td>
	  </tr>
	<c:choose>
	  <c:when test="${articlesList ==null }" >
	    <tr  height="10">
	      <td colspan="4">
	         <p align="center">
	            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
	        </p>
	      </td>  
	    </tr>
	  </c:when>
	  <c:when test="${articlesList !=null }" >
	    <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
	     <tr align="center">
		<td width="5%">${articleNum.count}</td>
		<td align='left'  width="35%">
		  <span style="padding-right:30px"></span>
		   <c:choose>
		      <c:when test='${article.level > 1 }'>  
		         <c:forEach begin="1" end="${article.level }" step="1">
		              <span style="padding-left:20px"></span>    
		         </c:forEach>
		         <span style="font-size:12px;">[답변]</span>
	                   <a class='cls1' href="${contextPath}/community/board_viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
		          </c:when>
		          <c:otherwise>
		            <a class='cls1' href="${contextPath}/community/board_viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
		          </c:otherwise>
		        </c:choose>
	  </td>
		<td width="10%">${article.id }</td>
	  <td  width="10%">${article.writeDate}</td> 
		  <td  width="10%">${article.viewcnt}</td> 
	</tr>
    </c:forEach>
     </c:when>
    </c:choose>
</table>
<br><br>

	<!-- <a  class="cls1"  href="#"><p class="cls2">글쓰기</p></a> -->
	<a class="cls1" href="javascript:fn_articleForm('${isLogOn}','${contextPath}/community/board_articleForm.do','${contextPath}/member/login.do')"> <!-- 로그인 상태가 아닐 경우 로그인창 요청 URL을 전달 -->
    <p class="cls2">글쓰기</p></a>

    <div class="a_paging" style="margin-top: 40px"></div>
<br><br>
</body>
</html>
