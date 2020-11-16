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
	
    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <a href="board_listArticles.do"><li>자유게시판</li></a>
	    <a href="newsList.do"><li class='active'>자동차뉴스</li></a>
	    <a href="reviewList.do"><li>거래후기</li></a>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <table class="common">
    <!-- 자동차뉴스 -->
    <div class="ttl">커뮤니티 <strong>자동차뉴스</strong></div>
    <div class="ttl-sm">언론과 미디어를 확인하세요.</div><br>
    <tr>
		<td id="buttons" align="right" colspan=3>
		<input type="button" value="글쓰기" id="submit"/>
		</td>
	</tr>
<!--  	<a  class="cls1"  href="#"><p class="cls2">글쓰기</p><br><br></a>
	<a  class="cls1"  href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
	                                                    '${contextPath}/member/loginForm.do')"> <!-- 로그인 상태가 아닐 경우 로그인창 요청 URL을 전달
	                                                    <p class="cls2">글쓰기</p></a><br> -->
	  
    <!-- 자동차뉴스 리스트 -->
    <div class="newslist">
  	<ul class="newslist">
    	<li class="a-shadow a-hover">
        	<a href="#">
            <div class="name">ㅇㅇ신문</div>
            <div class="ttl">'내차팔자'가 알려주는 소모품 교환 주기</div>
            <div class="preview">자동차를 유지하다 보면 확인해야하는 소모품&nbsp;소모품만 관리해도 자동차를 10년 안전하게 탈 수 있습니다.소모품 관리와 관련하여 오늘은 '내차팔자' 대표의 조언으로 내용을 작성하였습니다.명칭 : 브레이크 오일점검시기 : 브레이크 사용 시 밀리는 ...</div>
          </a>
      </li>
                    
      <li class="a-shadow a-hover">
        <a href="#">
            <div class="name">ㅁㅁ일보</div>
            <div class="ttl">중고차 판매 요령! 가격을 비교하면 간단해요.</div>
            <div class="preview">요즘 중고차매매 사이트의 가격을 보면 사이트별로 다른 가격을 볼 수 있습니다.같은 연식 차량도 A사이트는 1,000만원 B사이트는 800만원 C사이트는 700만원 여러 사이트를 보고 중고차를 팔려고 보면  오히려 서로 다른 가격에 시세를 알기가 어렵습...</div>
        </a>
      </li>
                    
        <li class="a-shadow a-hover">
        	<a href="#">
            	<div class="name">xx신문</div>
                <div class="ttl">내차팔기 무엇을 주의해야할까요?</div>
            	<div class="preview">요즘 중고차매매 사이트와 중고차 매매 시장이 활발하게 성장하며 매년 거래량이 늘고 있다.거래가 많아 지며 중고차매매와 관련한 문제가 많이 발생하고 있다.중고차 판매에 관련하여 '내차팔자' 관계자에게 조언을 구했다.주의사항을 정리하였다.1. 비교견적을 ...</div>
            </a>
        </li> 
        
        <li class="a-shadow a-hover">
        	<a href="#">
            	<div class="name">**신문</div>
                <div class="ttl">중고차 시장에 속속 새 얼굴-현대차·쏘카·네이버…중고차 ‘戰國시대’</div>
            	<div class="preview">“중고차 구입 고객 중 70~80%가 거래 관행이나 품질 평가 등에 문제가 있다고 한다. 소비자 보호 차원에서 완성차가 반드시 중고차 사업을 해야 한다.” 김동욱 현대자동차 전무가 최근 국정감사에서 한 말이다. 국내 최대 완성차 업체인 현대차의 중고차 진출을 공식화한 셈이다. 엔카를 운영하다 손을 뗀 SK그룹은 쏘카 2대 주주로 다시 뛰어들 기세다. 최근 모빌리티 플랫폼 쏘카가 온라인 중고차 플랫폼 ‘캐스팅’을 내놓고 중고차 판매에 들어갔다. 이로써 SK는 ‘사실상’ 중고차 시장에 새로 진입한 셈이 됐다. 업계는 분주해졌다. 중고차 업계는 “대기업 진출은 소상공인 위주의 시장 생태계를 무너뜨리고 4만명에 달하는 영세사업자를 쫓아낼 것”이라고 반발한다. 또한 대기업 시장 진출로 중고차 가격이 더 올라가는 ‘역효과’가 생길 것이라 주장한다. </div>
            </a>
        </li> 

	    </ul>

	</div>
	</table>
	</div>
</body>
</html>