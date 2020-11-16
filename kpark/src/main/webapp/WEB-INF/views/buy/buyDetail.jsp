<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>

<!-- 테스트용 가격 변수 -->
<c:set var="price" value="3340" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>차량상세</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/buyDetail.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="all">
		<div id="title" class="title">
			<div id="designBar" class="designBar"></div>
			<div class="left">
				<div class="tl_upper">
					<h1 class="maker_model">${car.maker } ${car.carModel } </h1>
					<h1 class="detail_number">${car.subModel } (${car.carNumber })</h1>
				</div>
				<div class="tl_lower">
					<h3 class="year">${car.carYear }년식</h3>
					<h3 class="distance"><fmt:formatNumber value="${car.distance }" type="number"/>km</h3>
					<h3 class="fuel">${car.fuel }</h3>
				</div>
			</div>
			<div class="right">
				<div class="tr_upper">
					<div class="price"><fmt:formatNumber value="${car.price }" type="number"/></div>
					<div class="manwon">만원</div>
				</div>
				<div class="tr_lower">
					<a id="toInstall" href="#install"><div class="pay_plan">할부 월 <fmt:formatNumber type="number"  pattern="0" value="${car.price/60} " />만원</div></a>
				</div>
			</div>
			<div class="q_btns">
				<a href="favorite">
					<div class="f_icon"></div>
					<h4>관심차량</h4>
				</a>
				<a href="compare">
					<div class="c_icon"></div>
					<h4>차량비교</h4>
				</a>
				<a href="share">
					<div class="s_icon"></div>
					<h4>공유하기</h4>
				</a>
			</div>
		</div>
		<section class="photo">
			<input type="button" class="photo_left" onclick="plusDivs(-1)" value="&#10094;">
			<input type="button" class="photo_right" onclick="plusDivs(+1)" value="&#10095;">
			<!-- 업로드한 이미지의 수 만큼 동적으로 구현 -->
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
			<img class="carPhotos" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/1.jpg"/>" />
			<img class="back" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/1.jpg"/>" />
			<img class="carPhotos" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/2.jpg"/>" />
			<img class="back" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/2.jpg"/>" />
			<img class="carPhotos" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/3.jpg"/>" />
			<img class="back" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/3.jpg"/>" />
			<img class="carPhotos" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/4.jpg"/>" />
			<img class="back" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/4.jpg"/>" />
			<img class="carPhotos" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/5.jpg"/>" />
			<img class="back" src="<c:url value="/resources/image_repo/car_img/${ serialImg}/5.jpg"/>" />
		<script> 
			var slideIndex = 1;
			showDivs(slideIndex);
	
			function plusDivs(n) {
			  showDivs(slideIndex += n);
			}
	
			function showDivs(n) {
			  var i;
			  var x = document.getElementsByClassName("carPhotos");
			  if (n > x.length) {slideIndex = 1}
			  if (n < 1) {slideIndex = x.length} ;
			  for (i = 0; i < x.length; i++) {
			    x[i].style.display = "none";
			  }
			  x[slideIndex-1].style.display = "block";
			  
			  var i;
			  var y = document.getElementsByClassName("back");
			  if (n > y.length) {slideIndex = 1}
			  if (n < 1) {slideIndex = y.length} ;
			  for (i = 0; i < y.length; i++) {
			    y[i].style.display = "none";
			  }
			  y[slideIndex-1].style.display = "block";
			}
		</script>
		</section>
		<section class="info">
			<div class="info_inner">
				<div class="il_left">
					<div class="il_left_icon"></div>
					<div class="il_left_upper">
						<div class="phoneIcon"></div>
						<div class="il_left_upper_right">
							<h2>구매 상담</h2>
							<div class="number">02-1234-5678</div>
							<div class="time">평일 09:00~18:00</div>
						</div>
						<input class="buy" type="button" value="온라인 상담 신청">
					</div>
				</div>
				<div class="il_right">
					<div class="il_right">
						<table>
							<tr>
								<th class="table_fc"><div>성능·상태</div></th>
								<th><div>보험이력</div></th>
								<th><div>압류/저당</div></th>
							</tr>
							<tr>
								<td class="table_fc">
									<ul=class="info_cont">
										<li>
											<i class="sg_icon"></i>
											<p class="sg_t">사고</p>
											<p class="sg_c">${car.acc }</p>
										</li>
										<li>
											<i class="ds_icon"></i>
											<p class="ds_t">단순수리</p>
											<p class="ds_c">${car.carRepair }회</p>
										</li>
										<li>
											<i class="cs_icon"></i>
											<p class="cs_t">침수</p>
											<p class="cs_c">${car.flood }</p>
										</li>
										<li>
											<i class="sr_icon"></i>
											<p class="sr_t">수리이력</p>
											<p class="sr_c">${car.history }회</p>
										</li>
									</ul>
								</td>
								<td>
									<ul=class="info_cont2">
										<li>
											<i class="nc_icon"></i>
											<p class="nc_t">내차피해</p>
											<p class="nc_c">${car.dam }회</p>
										</li>
										<li>
											<i class="tc_icon"></i>
											<p class="tc_t">타차피해</p>
											<p class="tc_c">${car.damOther }회</p>
										</li>
									</ul>
								</td>
								<td>
									<ul=class="info_cont3">
										<li>
											<i class="ar_icon"></i>
											<p class="ar_t">압류</p>
											<p class="ar_c">${car.seize }</p>
										</li>
										<li>
											<i class="jd_icon"></i>
											<p class="jd_t">저당</p>
											<p class="jd_c">${car.mortgage }</p>
										</li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</section>
		<section class="basic_info">
			<div class="bi_title">차량 기본정보</div>
			<ul class="bi_table">
				<li>
					<p class="tlt">차량정보</p>
					<div class="cont_outer">
						<p class="cont">${car.carNumber }</p>
					</div>
				</li>
				<li>
					<p class="tlt">연식</p>
					<div class="cont_outer">
						<p class="cont">${car.carYear }년</p>
					</div>
				</li>
				<li>
					<p class="tlt">주행거리</p>
					<div class="cont_outer">
						<p class="cont"><fmt:formatNumber value="${car.distance }" type="number"/> km</p>
					</div>
				</li>
				<li>
					<p class="tlt">연료</p>
					<div class="cont_outer">
						<p class="cont">${car.fuel }</p>
					</div>
				</li>
				<li>
					<p class="tlt">배기량</p>
					<div class="cont_outer">
						<p class="cont"><fmt:formatNumber value="${car.cc }" type="number"/> cc</p>
					</div>
				</li>
				<li>
					<p class="tlt">색상</p>
					<div class="cont_outer">
						<p class="cont">${car.color }</p>
					</div>
				</li>
				<li>
					<p class="tlt">변속기</p>
					<div class="cont_outer">
						<p class="cont">${car.gear }</p>
					</div>
				</li>
				<li>
					<p class="tlt">압류</p>
					<div class="cont_outer">
						<p class="cont">${car.seize }</p>
					</div>
				</li>
				<li>
					<p class="tlt">저당</p>
					<div class="cont_outer">
						<p class="cont">${car.mortgage }</p>
					</div>
				</li>
				<li>
					<p class="tlt">제시번호</p>
					<div class="cont_outer">
						<p class="cont"><fmt:formatNumber value='${car.serial }' pattern='000000' /></p>
					</div>
				</li>
			</ul>
		</section>
		<section class="option">
			<div class="op_title">주요 옵션정보</div>
			<ul>
				<li>
					<i id="op1" class="op1"></i>
					<p>네비게이션</p>
				</li>
				<li>
					<i id="op2" class="op2"></i>
					<p>블랙박스</p>
				</li>
				<li>
					<i id="op3" class="op3"></i>
					<p>후방카메라</p>
				</li>
				<li>
					<i id="op4" class="op4"></i>
					<p>썬루프</p>
				</li>
				<li>
					<i id="op5" class="op5"></i>
					<p>통풍시트</p>
				</li>
				<li>
					<i id="op6" class="op6"></i>
					<p>네비게이션</p>
				</li>
				<li>
					<i id="op7" class="op7"></i>
					<p>열선핸들</p>
				</li>
				<li>
					<i id="op8" class="op8"></i>
					<p>하이패스</p>
				</li>
				<li>
					<i id="op9" class="op9"></i>
					<p>스마트</p>
				</li>
				<li>
					<i id="op10" class="op10"></i>
					<p>크루즈컨트롤</p>
				</li>
			</ul>
			<script>
				$(document).ready(function() {
					var option = '<c:out value="${car.carOption}" />'
					if(option==null) {
						option= "0000000000";
					}
					for(var i=1; i<11; i++) {
						if(option[i-1]=="1") {
							eval("$('#op"+i+"').css({'background':'url(/kpark/resources/image/icon/icon_option"+i+"_on.png) center no-repeat'})");
							eval("$('#op"+i+"').css({'background-size':'contain'})");
						}
					}
				})
			</script>
		</section>
		<section id="install" class="price">
			<div class="pr_title">구매 예상 발생 비용 안내</div>
			<div class="pr_outer">
				<div class="pr_left">
					<div class="prh">할부 이용 시 월 납입금</div>
					<div class="cont">
						<div class="cont_1">
							<p>선수금
							<span id="min_upper" class="num1">0</span>
							만원 (대출 이용금액
							<span id="remain" class="num2"><c:out value="${car.price }"/></span>
							만원)
							</p>
						</div>
						<div class="cont_2">
							<div class="slider">
								<input id="price_range" type="range" value="0" min="0" max=<c:out value="${car.price }"/>>
							</div>
							<div class="slider_number">
								<div class="min_price"><span id="min_p">0</span>만원</div>
								<div class="max_price"><span id="max_p"><c:out value="${car.price }" /></span>만원</div>
							</div>
						</div>
						<div class="cont_3">
							<div class="select_1">
								<h2>할부기간</h2>
								<ul>
									<li>
										<input type="radio" name="chk_1" id="chk_1_1" value="24" checked>
										<label for="chk_1_1">24개월</label>
									</li>
									<li>
										<input type="radio" name="chk_1" id="chk_1_2" value="36">
										<label for="chk_1_2">36개월</label>
									</li>
									<li>
										<input type="radio" name="chk_1" id="chk_1_3" value="48">
										<label for="chk_1_3">48개월</label>
									</li>
									<li>
										<input type="radio" name="chk_1" id="chk_1_4" value="60">
										<label for="chk_1_4">60개월</label>
									</li>
								</ul>
							</div>
							<div class="select_2">
								<h2>금리</h2>
								<ul>
									<li>
										<input type="radio" name="chk_2" id="chk_2_1" value="0.059" checked>
										<label for="chk_2_1">5.9%</label>
									</li>
									<li>
										<input type="radio" name="chk_2" id="chk_2_2" value="0.08">
										<label for="chk_2_2">8%</label>
									</li>
									<li>
										<input type="radio" name="chk_2" id="chk_2_3" value="0.1">
										<label for="chk_2_3">10%</label>
									</li>
									<li>
										<input type="radio" name="chk_2" id="chk_2_4" value="0.12">
										<label for="chk_2_4">12%</label>
									</li>
								</ul>
							</div>
						</div>
						<div class="cont4">
							<div class="result">
								<p>월 예상 납입금</p>
								<p><span id="result">96,520</span>원</p>
							</div>
						</div>
						<p class="p_notice">※ 차량 부대비용은 월 예상 납입금에 포함되지 않습니다.</p>
					</div>
				</div>
				<div class="pr_right">
					<div class="prh">총 구매발생 비용</div>
					<div class="cont">
						<div class="cont_1">
							<p class="pr_r_left">차량가격</p>
							<span class="pl_price"><fmt:formatNumber value="${car.price*10000}" type="currency" currencySymbol="" /></span>
							<p class="pr_r_right">원</p>
						</div>
						<div class="cont_2_r">
							<ul>
								<li>
									<div class="li_left">취등록세</div>
									<div class="li_right"><fmt:formatNumber value="${(car.price*10000)*0.07}" type="currency" currencySymbol=""/>원</div>
								</li>
								<li>
									<div class="li_left">공채매입비</div>
									<div class="li_right"><fmt:formatNumber value="${(car.price*10000)*0.02}" type="currency" currencySymbol=""/>원</div>
								</li>
								<li>
									<div class="li_left">증·인지대</div>
									<div class="li_right">4,000원</div>
								</li>
								<li>
									<div class="li_left">관리비용</div>
									<div class="li_right">330,000원</div>
								</li>
								<li>
									<div class="li_left">보험료</div>
									<div class="li_right">별도</div>
								</li>
							</ul>
						</div>
						<div class="cont4">
							<div class="result">
								<p>합계</p>
								<p><span id="total"><fmt:formatNumber value="${car.price*10000+((car.price*10000)*0.07)+((car.price*10000)*0.02)+334000}" type="currency" currencySymbol=""/></span>원</p>
							</div>
						</div>
						<p class="p_notice">※ 온라인구매 시 배송료는 별도 부과될 수 있습니다.</p>
					</div>
				</div>
			</div>
		</section>
		<section class="bf_btn_container">
			<input type="button" class="btn" value="온라인 상담 신청">
		</section>
	</div>
</body>
<script src="<c:url value="/resources/js/buyDetail.js" />"></script>
</html>