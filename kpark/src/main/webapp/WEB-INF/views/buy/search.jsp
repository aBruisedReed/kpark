<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Buy</title>
<!-- <script src="resources/js/buy.js"></script>  -->
<script src="<c:url value="/resources/js/jquery.js" />"></script>
<link href="<c:url value="/resources/css/search.css" />"
	rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<section class="search_tab">
			<ul class="tab_btns">
				<li id="tab1" class="active">제조사로 검색하기</li>
				<li id="tab2">차종으로 검색하기</li>
				<li id="tab3">모델명으로 검색하기</li>
			</ul>
			<ul class="tab_contents">
				<div class="makerTab">
					<div class="btns">
						<button id="sel_maker" onclick="toggleMaker()" class="">제조사 선택</button>
						<button id="sel_model" onclick="toggleModel()" class="">모델 선택</button>
						<div class="search_btn" onclick="searchByMaker()">검색</div>
					</div>
					<div id="maker_menu" class="maker_menu menu">
						<!-- 토글쓰지 -->
						<ul>
							<h3>국산차</h3>
							<li id="hd"><img
								src="https://imgauto-phinf.pstatic.net/20180529_88/auto_1527592677868AxMTJ_PNG/20180529201748_nbVe4EOk.png?type=f40_40">
								<p>현대</p></li>
							<li id="kia"><img
								src="https://imgauto-phinf.pstatic.net/20170707_181/auto_149940895782493s0w_PNG/20170707152915_q71wMr3r.png?type=f40_40">
								<p>기아</p></li>
							<li id="che"><img
								src="https://imgauto-phinf.pstatic.net/20200210_175/auto_15813076774623FdaV_PNG/20200210130752_EvOsbnkP.png?type=f40_40">
								<p>쉐보레</p></li>
							<li id="ss"><img
								src="https://imgauto-phinf.pstatic.net/20170707_290/auto_14994089867715m7Kc_PNG/20170707152945_ov1NwuMf.png?type=f40_40">
								<p>쌍용</p></li>
							<li id="ren"><img
								src="https://imgauto-phinf.pstatic.net/20170707_188/auto_14994089761732i2AM_PNG/20170707152934_4UQVPJ4f.png?type=f40_40">
								<p>르노</p></li>
							<h3>수입차</h3>
							<li id="bmw"><img
								src="https://imgauto-phinf.pstatic.net/20200310_214/auto_1583815678479PKzIr_PNG/20200310134752_3hMT5CTc.png?type=f40_40">
								<p>BMW</p></li>
							<li id="benz"><img
								src="https://imgauto-phinf.pstatic.net/20170707_151/auto_1499404806991Xuw2o_PNG/20170707142004_4ANaTv3h.png?type=f40_40">
								<p>벤츠</p></li>
							<li id="audi"><img
								src="https://imgauto-phinf.pstatic.net/20170707_207/auto_1499404828979BICft_PNG/20170707142026_ovRGcdML.png?type=f40_40">
								<p>아우디</p></li>
							<li id="volks"><img
								src="https://imgauto-phinf.pstatic.net/20200422_10/auto_15875288567367G6VE_PNG/20200422131406_lmRMWJht.png?type=f40_40">
								<p>폭스바겐</p></li>
						</ul>
					</div>
					<div id="model_menu" class="model_menu menu">
						<!-- 동적구현 -->
						<h2 style="width: 100%; text-align: center;">제조사를 선택하세요</h2>
					</div>
				</div>
				<div class="typeTab">
					<div class="checkType">
						<ul>
							<li><input type="checkbox" name="car_type" id="gc"
								value="경차"> <label for="gc">경차</label></li>
							<li><input type="checkbox" name="car_type" id="shc"
								value="소형차"> <label for="shc">소형차</label></li>
							<li><input type="checkbox" name="car_type" id="jjh"
								value="준중형"> <label for="jjh">준중형</label></li>
							<li><input type="checkbox" name="car_type" id="jh"
								value="중형"> <label for="jh">중형</label></li>
							<li><input type="checkbox" name="car_type" id="dh"
								value="대형"> <label for="dh">대형</label></li>
							<li><input type="checkbox" name="car_type" id="sports"
								value="스포츠카"> <label for="sports">스포츠카</label></li>
							<li><input type="checkbox" name="car_type" id="suv"
								value="SUV"> <label for="suv">SUV</label></li>
							<li><input type="checkbox" name="car_type" id="rv"
								value="RV"> <label for="rv">RV</label></li>
							<li><input type="checkbox" name="car_type" id="sh"
								value="승합"> <label for="sh">승합</label></li>
							<li><input type="checkbox" name="car_type" id="hm"
								value="화물"> <label for="hm">화물</label></li>
							<li><input type="checkbox" name="car_type" id="etc"
								value="기타"> <label for="etc">기타</label></li>
						</ul>
					</div>
					<div class="search_btn2" onclick="searchByType()">검색</div>
				</div>
				<div class="modelTab">
					<input type="text" class="input_model" name="carModel"
						id="carModel" placeholder="모델명 또는 차량번호로 검색해주세요.">
					<div class="search_btn3" onclick="searchByModel()">검색</div>
				</div>
			</ul>
		</section>
		<section class="cars_list">
			<c:if test="${empty carListPage }">
				<h1 style="text-align: center">검색 결과가 없습니다.</h1>
			</c:if>
			<ul>
				<c:forEach items="${carListPage }" var="car">
					<li data-serial="${car.serial }">
						<a href="${contextPath}/buy/buyDetail.do?serial=<fmt:formatNumber value='${car.serial }' pattern='000000' />">
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
					</li>
				</c:forEach>
			</ul>
		</section>
		<section class="paging">
			<div class="paginate">
				<c:set var="getParamUrl" value="" />
				<c:if test="${not empty param.searchType }">
					<c:set var="getParamUrl" value="${getParamUrl }&searchType=${param.searchType}" />
				</c:if>
				<c:if test="${not empty param.keyword }">
					<c:set var="getParamUrl" value="${getParamUrl }&keyword=${param.keyword}" />
				</c:if>
				<c:if test="${paging.curRange ne 1 }">
                        <a href="${contextPath}/buy/search.do?curPage=1${getParamUrl }" onClick="" class="back2">B</a> 
                    </c:if>
                    <c:if test="${paging.curPage ne 1}">
                        <a href="${contextPath}/buy/search.do?curPage=${paging.prevPage}${getParamUrl }" onClick="fn_paging('${paging.prevPage }')" class="back">B</a> 
                    </c:if>
                    <c:forEach var="pageNum" begin="${paging.startPage }" end="${paging.endPage }">
                        <c:choose>
                            <c:when test="${pageNum eq  paging.curPage}">
                                <span style="font-weight: bold;"><a href="${contextPath}/buy/search.do?curPage=${pageNum}${getParamUrl }" onClick="" class="on">${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>
                                <a href="${contextPath}/buy/search.do?curPage=${pageNum}${getParamUrl }" onClick="">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
                        <a href="${contextPath}/buy/search.do?curPage=${paging.nextPage}${getParamUrl }" onClick="fn_paging('${paging.nextPage }')" class="next">N</a> 
                    </c:if>
                    <c:if test="${paging.curRange ne paging.rangeCnt && paging.rangeCnt > 0}">
                        <a href="${contextPath}/buy/search.do?curPage=${paging.pageCnt}${getParamUrl }" onClick="fn_paging('${paging.pageCnt }')" class="next2">N2</a> 
                    </c:if>
			</div>
		</section>
	</div>
</body>
<script src="<c:url value="/resources/js/search.js" />"></script>
</html>
