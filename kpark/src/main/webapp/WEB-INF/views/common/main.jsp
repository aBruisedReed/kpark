<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath }/resources/css/main.css">
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=en"></script>
<meta charset="UTF-8">
<title>kpark 공식 사이트</title>
</head>
<body>
	<div class="wrap">

		<section class="recommand">
			<div class="cover">
				<div class="rec_1">
					<img src="/kpark/resources/image/sample1.png">
					<div class="text_comp">
						<h1>SONATA DN8</h1>
						<h2>일상을 바꾸는 경험</h2>
					</div>
					<a href="buy/search.do?searchType=modelname&keyword=쏘나타" id="rc_btn1"
						class="rc_btns">찾아보기</a>
				</div>
				<div class="rec_2">
					<img src="/kpark/resources/image/sample2.png">
					<div class="text_comp">
						<h1>The New BONGO III</h1>
						<h2>성공을 위한 최고의 파트너</h2>
					</div>
					<a href="buy/search.do?searchType=modelname&keyword=봉고" id="rc_btn1"
						class="rc_btns">찾아보기</a>
				</div>
				<div class="rec_3">
					<img src="/kpark/resources/image/sample3.png">
					<div class="text_comp">
						<h1>The all-new GENESIS G80</h1>
						<h2>특별함을 아는 당신에게</h2>
					</div>
					<a href="buy/search.do?searchType=modelname&keyword=G80" id="rc_btn1" class="rc_btns">찾아보기</a>
				</div>
			</div>
			<div class="ctrl_bar">
				<div id="bar1" class="bar1_containter">
					<p>[SONATA DN8]</p>
					<p>일상을 바꾸는 경험</p>
					<div class="bar"></div>
				</div>
				<div id="bar2" class="bar2_containter">
					<p>[BONGO III]</p>
					<p>성공을 위한 최고의 파트너</p>
					<div class="bar"></div>
				</div>
				<div id="bar3" class="bar3_containter">
					<p>[G80]</p>
					<p>특별함을 아는 당신에게</p>
					<div class="bar"></div>
				</div>
			</div>
		</section>
		<section class="cars_list">
			<ul>
				<c:forEach items="${carList }" var="car">
					<li data-serial="${car.serial }">
						<!-- 예시, 수정요망 --> <a href="buy/buyDetail.do?serial=<fmt:formatNumber value='${car.serial }' pattern='000000' />">
							<div class="car_img">
								<c:choose> 
									<c:when test="${car.serial lt 490 && car.serial%40 ne 0}">
										<c:set var="serialImg" property="title" value="${car.serial%40 }" />
									</c:when>
									<c:when test="${car.serial lt 490 && car.serial%40 eq 0}">
										<c:set var="serialImg" property="title" value="40" />
									</c:when>
									<c:when test="${car.serial gt 490}">
										<c:set var="serialImg" property="title" value="${car.serial}" />
									</c:when>
								</c:choose>
								<img src="/kpark/resources/image_repo/car_img/${ serialImg}/1.jpg">
								<div class="info_comp">
									<p>${car.carYear }년식</p>
									<p><fmt:formatNumber value="${car.distance }" type="number"/>km</p>
									<p>${car.fuel }</p>
								</div>
							</div>
							<div class="car_box">
								<div class="title">${car.maker } ${car.carModel }</div>
								<div class="model">${car.subModel }</div>
								<div class="price_info">
									<span class="price">
									<fmt:formatNumber value="${car.price }" type="number"/>
									</span>만원(월<span class="install">
									 <fmt:formatNumber type="number"  pattern="0" value="${car.price/60} " /></span>만원)
								</div>
							</div>
					</a>
				</c:forEach>
			</ul>
		</section>
		<section class="news">
			<h1 class="news_title">오늘의 뉴스</h1>
			<!-- 동적 할당 -->
			<div class="news_cont">
				<a href="#">
					<div class="left_img_div">
						<img src="/kpark/resources/image/news1.jpeg">
						<div class="text_comp">
							<h2>기아차, 엠블럼 이어 사명도 변경하나..'자동차' 떼고...</h2>
							<h3>더드라이프 | 2020.11.13</h3>
						</div>
					</div>
				</a> <a href="#">
					<div class="center_news">
						<div class="center_upper">
							<img src="/kpark/resources/image/news2.jpeg">
							<div class="text_comp">
								<h2>기어나오는 중국차, 저가 공세 안 먹히자 동남아행?</h2>
								<h3>머니S리포트 | 2020.11.13</h3>
							</div>
						</div>
						<div class="center_lower">
							<img src="/kpark/resources/image/news3.jpeg">
							<div class="text_comp">
								<h2>포르쉐 '비밀의 콘셉트' 마칸 비전 사파리 쿠페 공개</h2>
								<h3>MOTOGRAPH | 2020.11.12</h3>
							</div>
						</div>
					</div>
				</a>
				<div class="right_titles">
					<ul>
						<li><a href="#">
								<h2>세계 최초 '비대면 무선충전' 내년...</h2>
								<h3>전자신문</h3>
						</a></li>
						<li><a href="#">
								<h2>현대차, 7세대 신형 아반떼 신차안전도평가...</h2>
								<h3>AUTOHERALD</h3>
						</a></li>
						<li><a href="#">
								<h2>차박 위해 탄생한 티볼리 에어..압도적 가성비로 부활</h2>
								<h3>타봤어요</h3>
						</a></li>
						<li><a href="#">
								<h2>혼다, 자율주행 '레벨 3' 인증.."꽉 막힌 고속도로서 스스로 운전!"</h2>
								<h3>Dailycar</h3>
						</a></li>
						<li><a href="#">
								<h2>식지 않는 수입차 인기..'1만대 클럽'에 독일차 이어...</h2>
								<h3>조선비즈</h3>
						</a></li>
						<li><a href="#">
								<h2>내년 초 美서 생산될 현대차 첫 픽업트럭 싼타크루즈...</h2>
								<h3>MAUTO</h3>
						</a></li>
						<li><a href="#">
								<h2>팰리세이드 냄새 논란 원인 밝혀졌다?</h2>
								<h3>The Drive</h3>
						</a></li>
						<li><a href="#">
								<h2>BMW iX 공개, 콘셉트카 아닌 양산차</h2>
								<h3>TOPRIDER</h3>
						</a></li>
						<li><a href="#">
								<h2>현대차 투싼 N 라인 티저 공개 '공격적으로 다듬어진...</h2>
								<h3>오토헤럴드</h3>
						</a></li>
						<li><a href="#">
								<h2>3년만의 변화, G70 페이스 리프트</h2>
								<h3>글로벌오토뉴</h3>
						</a></li>
						<li><a href="#">
								<h2>현대자동차, 쏘나타 N 라인 출시</h2>
								<h3>GLOBALAUTO</h3>
						</a></li>
					</ul>
				</div>
			</div>

		</section>
		<section class="map">
			<h1>KPARK <span>찾아오시는 길</span></h1>
			<div class="wrap_map">
				<div id="map" style="width: 100%; height: 350px;"></div>
				<a href="http://kko.to/cwvePlFD0" onclick="window.open(this.href,'길찾기','width=800, height=800'); return false;"><div class="shortcut">빠른길 찾기</div></a>
			</div>
			
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=707292b284517ee6f10628faaaa3e1d4"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : new kakao.maps.LatLng(37.570933, 126.992406), // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨
				};

				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

				// 마커가 표시될 위치입니다 
				var markerPosition = new kakao.maps.LatLng(37.570933, 126.992406);

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					position : markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);

				// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
				// marker.setMap(null);
				
				// 버튼 추가
			</script>
		</section>

		<br>
	</div>
</body>
<script src="<c:url value="/resources/js/jquery.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
</html>