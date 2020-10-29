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
	<title>newsList</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/community.css" />
	
</head>

<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<%@include file="/WEB-INF/views/common/sidebar.jsp" %>
	
    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <li>자유게시판</li>
	    <li class='active'>자동차뉴스</li>
	    <li>거래후기</li>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <table class="common">
    <!-- 자동차뉴스 -->
    <div class="ttl">커뮤니티 <strong>자동차뉴스</strong></div>
    <div class="ttl-sm">언론과 미디어를 확인하세요.</div><br>
 	<a  class="cls1"  href="#"><p class="cls2">글쓰기</p><br><br></a>
	<!-- <a  class="cls1"  href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
	                                                    '${contextPath}/member/loginForm.do')"> <!-- 로그인 상태가 아닐 경우 로그인창 요청 URL을 전달
	                                                    <p class="cls2">글쓰기</p></a><br> -->
	
    <!-- 자동차뉴스 리스트 -->
    <div class="newslist">
  	<ul class="newslist">
    	<li class="a-shadow a-hover">
        	<a href="/center/press_view?bp_idx=140&">
            <div class="name">ㅇㅇ신문</div>
            <div class="ttl">'내차팔자'가 알려주는 소모품 교환 주기</div>
            <div class="preview">자동차를 유지하다 보면 확인해야하는 소모품&nbsp;소모품만 관리해도 자동차를 10년 안전하게 탈 수 있습니다.소모품 관리와 관련하여 오늘은 '내차팔자' 대표의 조언으로 내용을 작성하였습니다.명칭 : 브레이크 오일점검시기 : 브레이크 사용 시 밀리는 ...</div>
          </a>
      </li>
                    
      <li class="a-shadow a-hover">
        <a href="/center/press_view?bp_idx=139&">
            <div class="name">ㅁㅁ일보</div>
            <div class="ttl">중고차 판매 요령! 가격을 비교하면 간단해요.</div>
            <div class="preview">요즘 중고차매매 사이트의 가격을 보면 사이트별로 다른 가격을 볼 수 있습니다.같은 연식 차량도 A사이트는 1,000만원 B사이트는 800만원 C사이트는 700만원 여러 사이트를 보고 중고차를 팔려고 보면  오히려 서로 다른 가격에 시세를 알기가 어렵습...</div>
        </a>
      </li>
                    
        <li class="a-shadow a-hover">
        	<a href="/center/press_view?bp_idx=138&">
            	<div class="name">xx신문</div>
                <div class="ttl">내차팔기 무엇을 주의해야할까요?</div>
            	<div class="preview">요즘 중고차매매 사이트와 중고차 매매 시장이 활발하게 성장하며 매년 거래량이 늘고 있다.거래가 많아 지며 중고차매매와 관련한 문제가 많이 발생하고 있다.중고차 판매에 관련하여 '내차팔자' 관계자에게 조언을 구했다.주의사항을 정리하였다.1. 비교견적을 ...</div>
            </a>
        </li> 

	    </ul>

    <div class="a_paging" style="margin-top: 40px"></div>
	</div>
	</table>
	</div>
    
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>