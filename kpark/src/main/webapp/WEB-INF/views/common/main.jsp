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
					<a href="url to search result of sonata dn8" id="rc_btn1"
						class="rc_btns">찾아보기</a>
				</div>
				<div class="rec_2">
					<img src="/kpark/resources/image/sample2.png">
					<div class="text_comp">
						<h1>The New BONGO III</h1>
						<h2>성공을 위한 최고의 파트너</h2>
					</div>
					<a href="url to search result of new bongo 3" id="rc_btn1"
						class="rc_btns">찾아보기</a>
				</div>
				<div class="rec_3">
					<img src="/kpark/resources/image/sample3.png">
					<div class="text_comp">
						<h1>The all-new GENESIS G80</h1>
						<h2>특별함을 아는 당신에게</h2>
					</div>
					<a href="url to search result of g80" id="rc_btn1" class="rc_btns">찾아보기</a>
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
								<img src="/kpark/resources/image/1.jpg">
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
						<img src="/kpark/resources/image/1.jpg">
						<div class="text_comp">
							<h2>르노삼성, 뉴 QM6 출시... 새로운 그릴 디자인 적용</h2>
							<h3>글로벌오토뉴스 | 2020.11.06</h3>
						</div>
					</div>
				</a> <a href="#">
					<div class="center_news">
						<div class="center_upper">
							<img src="/kpark/resources/image/2.jpeg">
							<div class="text_comp">
								<h2>르노삼성, 뉴 QM6 출시... 새로운 그릴 디자인 적용</h2>
								<h3>글로벌오토뉴스 | 2020.11.06</h3>
							</div>
						</div>
						<div class="center_lower">
							<img src="/kpark/resources/image/3.jpeg">
							<div class="text_comp">
								<h2>르노삼성, 뉴 QM6 출시... 새로운 그릴 디자인 적용</h2>
								<h3>글로벌오토뉴스 | 2020.11.06</h3>
							</div>
						</div>
					</div>
				</a>
				<div class="right_titles">
					<ul>
						<li><a href="#">
								<h2>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h2>
								<h3>글로벌오토뉴스</h3>
						</a></li>

						<c:forEach var="i" begin="1" end="10">
							<li><a href="#">
									<h2>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h2>
									<h3>글로벌오토뉴스</h3>
							</a></li>
						</c:forEach>

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