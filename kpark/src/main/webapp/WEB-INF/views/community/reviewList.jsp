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
	<title>reviewList</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/community.css" />
	
</head>

<body>
		
    <!-- 커뮤니티 탭 -->
    <div class='tabbed skin-turquoise round'>
 	<ul>
	    <a href="board_listArticles.do"><li>자유게시판</li></a>
	    <a href="newsList.do"><li>자동차뉴스</li></a>
	    <a href="reviewList.do"><li class='active'>거래후기</li></a>
	 </ul>
	 </div>

    <!-- 커뮤니티 공통 테이블 -->
    <div class="common">
    <table class="common">
    <!-- 거래후기 -->
    <div class="ttl">커뮤니티 <strong>거래후기</strong></div>
	<div class="ttl-sm">고객님들의 거래후기를 확인하세요.</div><br>	  	
    
    <div class="reviewlist">
    <ul class="reviewlist">
		<li class="a-shadow a-hover">
			<a href="#">
				<div class="img"><img src="http://진담카.com/as5/site/jang0529/userimg/6nxkwm5at0ak.jpg"></div>
				<div class="reviewlist-con">
				<div class="ttl">쉐보레 윈스톰 구매 후기</div>
				<div class="preview">고객님은 사이트를 통하여 올란도 차량을 보고 오셨는데, 사고 이력이 있는 차량이라 그 차량을 보여드리며 이 차량보다는 안전을 지킬 수 있는 차량으로 추천해드렸습니다. 고객 맞춤 상담으로 원하는 조건을 정확하게 알고 추천해드린 차량이라 처음 차량보다 훨씬 만족해하셨는데요~ 사고 이력이 있는 차량을 구매하려 하셨던 우리 고객님 상태 좋고 안전을 지킬 수 있는 선택이 가능한</div>
				<div class="view-count"><i class="far fa-eye"></i><span>1</span></div>
				</div>
			</a>
		</li>
					
		<li class="a-shadow a-hover">
			<a href="#">
				<div class="img"><img src="http://static.xn--8-vw7eh99cmge.com/img/board/b0ae72e679db92ec4c1be4a656476704.jpg"></div>
				<div class="reviewlist-con">
				<div class="ttl">뉴럭셔리그랜져 매입후기!! </div>
				<div class="preview">기억나시나요 뉴럭셔리 차주였던 사람입니다. 폐차를 해야하나 고민을 하던중 케이파크 사이트를 보고 문의를하게 되었는데 생각했던 가격에 비해 너무 가격을 잘 해주셔서 감사했네요 타 사이트에서도 여러군데 문의해봤었지만 폐차밖에 안된다는 말을 듣고 마음한구석이 안좋았는데 정말 마지막으로 전화해보자는 마음으로 문의를했더니 아니라 다를까 폐차를 하자는 말을 하지않고 매입을 해주겠다는 고현호딜러님의 말을 듣고 정말 고마웠습니다 딜러님이랑 시간약속을 잡고 차를 보러 오셨을때 궁금증이 있어질문을했는데왜 다 폐차를 해야한다는데 매입을 해주셨냐고 물었더니 차량이 년식이오래됬고 키로수는 많지만 문제도없고 차량상태가 너무좋은거보니 사장님이차량에대한 애정이 정말 많고 관리를 잘하신거같다 나는 그런차를 더 선호한다고 말을 해주는데정말 매입하는분이 차량에대한 애정이 오히려 저보다 많구나라는생각이 들더라고요&nbsp;사람이 욕심만 안부리면 좋은딜러를 만나는것처럼 평생을 함께한차를 고현호딜러님한테 판매를할수있어서 감사합니다&nbsp;---------------------------------------------------------------------------------------------감사합니다 고현호 딜러입니다사장님이 이렇게 좋은말씀해주시니 저로서도 너무 감사합니다저는 항상 이렇게 년식이 오래되고 관리도 잘되있는차가잔고장이 없기때문에 차 관리를 잘해주신 사장님께 더 감사할뿐입니다.인물도 훤칠하시고 깔끔한 외모만큼이나 차량상태도 너무 좋았습니다.사장님의 인품을보니 차만큼도 관리가 잘되어있을거라생각이들었지만&nbsp;역시 차상태도 너무 좋아 많은 가격은 못드렸지만 만족해하시는 모습을보고 뿌듯했습니다.이렇게 항상 보람있게 매입하는 정직한 딜러가 되겠습니다매일매일이 웃음이가득한 하루가되길 기원합니다.</div>
				<div class="view-count"><i class="far fa-eye"></i><span>2</span></div>
				</div>
			</a>
		</li>
					
		<li class="a-shadow a-hover">
			<a href="#">
				<div class="img"><img src="http://진담카.com/as5/site/jang0529/userimg/3r07cpdtone8.jpg"></div>
				<div class="reviewlist-con">
				<div class="ttl">폭스바겐 파사트 구매 후기</div>
				<div class="preview">경기도 화성에서 방문해주신 우리 고객님은 저희 업체를 방문하시기전, 수원 지역을 돌아보시며 원하는 조건의 맞는 폭스바겐 파사트 중고차를 찾아보고 계셨는데요~ 그렇게 직접 발품을 팔아 찾아낸 파사트 중고차! 하지만 딜러가 믿음이 가지 않아 고민하시던 우리 고객님은 믿음직한 딜러가 함께하는 중고차 전문기업 저희 케이파크로 발걸음을 해주셨습니다.</div>
				<div class="view-count"><i class="far fa-eye"></i><span>3</span></div>
				</div>
			</a>
		</li>
		
		
		
		<!-- <ul class="pagination">
			<li class="active"><a href="javascript:;">1</a></li>
			<li><a href="/center/review?page=2" data-ci-pagination-page="2">2</a></li>
			<li><a href="/center/review?page=3" data-ci-pagination-page="3">3</a></li>
			<li><a href="/center/review?page=2" data-ci-pagination-page="2" rel="next"><i class="fas fa-chevron-right"></i></a></li> -->

    <!-- <div class="a_paging" style="margin-top: 40px"></div>-->
	
	    <tr>
		<td id="buttons" align="right" colspan=3>
		<input type="button" onclick="#" value="글쓰기" id="submit"/>
		</td>
		</tr>
	</div> 
	</ul>
	</div>
	
	</ul>
	</div>
	</table>
	</div>
    
</body>
</html>