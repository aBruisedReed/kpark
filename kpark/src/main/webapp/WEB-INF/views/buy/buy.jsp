<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Buy</title>
	<!-- <script src="resources/js/buy.js"></script>  -->
	<script src="<c:url value="/resources/js/common.js" />"></script>
	<link rel="stylesheet" href="resources/css/buy.css">
	<!--<link rel="stylesheet" href="resources/css/common.css"> -->
	
	<style type="text/css">
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: blue; text-decoration: none;}
	</style>
</head>
<body>
	<div id="warp">
		<div id="header">
			<%@include file="/WEB-INF/views/common/header.jsp" %>
		</div>
				<div>
				<%@include file="/WEB-INF/views/common/sidebar.jsp" %>
				</div>
				
				<div id="container">
					<div class="tabs"> 
					    <input type="radio" name="tabs" id="tabone" checked="checked">     
					    <label for="tabone">제조사로 검색하기</label> 
					      <div class="tab"> 
					    	
							<div class="my_mp_search_list">
	                            <!-- search -->
	                            <div class="search">
	                                <button id="Maker1Title" onclick="toggle('Maker1');" class="btn_se s1">제조사 선택</button>
	                                <button id="Model1Title" onclick="toggle('Model1');" class="btn_se s2">모델 선택</button>
	                                <button id="ModelDetail1Title" onclick="toggle('ModelDetail1');" class="btn_se s3">세부모델 선택</button>
	                                <a href="#" class="btn btn_ty09">검색</a>
	                                <a href="#" class="btn_de"><span>상세검색</span></a>
	                            </div>
	                            <!-- //search -->
	                        </div>
	                        
	                        <!-- 제조사 리스트 시작 -->
	                        <div id="carList" class="my_mp_search_box b1 on" id="sbox1" style="display: none;">
                            <!-- scrollbar-inner -->
                            <div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 325px;">
                                <!-- my_mp_chk_ico -->
                                <div class="my_mp_chk_ico">
									<div class="ico-box"> <!--국산-->
										<h1>국산</h1>
										<ul id="Maker1List">
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_01" value="A22" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_01">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A22.png" alt=""></div>
														<p>현대</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_02" value="A18" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_02">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A18.png" alt=""></div>
														<p>제네시스</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_03" value="A47" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_03">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A47.png" alt=""></div>
														<p>기아</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_04" value="A9" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_04">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A9.png" alt=""></div>
														<p>쉐보레/대우</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_05" value="A49" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_05">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A49.png" alt=""></div>
														<p>르노삼성</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_06" value="A7" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_06">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A7.png" alt=""></div>
														<p>쌍용</p>
													</label>
												</div>
											</li>
											
										</ul>
									</div>
									<div class="ico-box"> <!--수입-->
										<h1>수입</h1>
										<ul id="Maker1List">
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_07" value="A56" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_07">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A56.png" alt=""></div>
														<p>BMW</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_08" value="A12" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_08">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A12.png" alt=""></div>
														<p>벤츠</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_09" value="A39" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_09">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A39.png" alt=""></div>
														<p>아우디</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_10" value="A38" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_10">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A38.png" alt=""></div>
														<p>폭스바겐</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_11" value="A4" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_11">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A4.png" alt=""></div>
														<p>포드</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_12" value="A8" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_12">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A8.png" alt=""></div>
														<p>미니</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_13" value="A11" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_13">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A11.png" alt=""></div>
														<p>GMC</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_14" value="A24" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_14">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A24.png" alt=""></div>
														<p>MG로버</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_15" value="A46" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_15">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A46.png" alt=""></div>
														<p>닛산</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_16" value="A10" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_16">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A10.png" alt=""></div>
														<p>다이하츠</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_17" value="A36" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_17">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A36.png" alt=""></div>
														<p>닷지</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_18" value="A31" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_18">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A31.png" alt=""></div>
														<p>란치아</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_19" value="A21" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_19">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A21.png" alt=""></div>
														<p>람보르기니</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_20" value="A34" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_20">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A34.png" alt=""></div>
														<p>랜드로버</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_21" value="A61" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_21">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A61.png" alt=""></div>
														<p>렉서스</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_22" value="A44" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_22">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A44.png" alt=""></div>
														<p>로터스</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_23" value="A14" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_23">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A14.png" alt=""></div>
														<p>롤스로이스</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_24" value="A48" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_24">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A48.png" alt=""></div>
														<p>링컨</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_25" value="A50" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_25">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A50.png" alt=""></div>
														<p>마세라티</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_26" value="A27" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_26">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A27.png" alt=""></div>
														<p>마이바흐</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_27" value="A3" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_27">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A3.png" alt=""></div>
														<p>마쯔다</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_28" value="A5" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_28">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A5.png" alt=""></div>
														<p>맥라렌</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_29" value="A25" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_29">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A25.png" alt=""></div>
														<p>머큐리</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_30" value="A30" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_30">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A30.png" alt=""></div>
														<p>미쯔비시</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_31" value="A32" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_31">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A32.png" alt=""></div>
														<p>벤틀리</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_32" value="A17" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_32">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A17.png" alt=""></div>
														<p>볼보</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_33" value="A15" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_33">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A15.png" alt=""></div>
														<p>뷰익</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_34" value="A19" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_34">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A19.png" alt=""></div>
														<p>사브</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_35" value="A26" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_35">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A26.png" alt=""></div>
														<p>쉐보레</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_36" value="A55" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_36">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A55.png" alt=""></div>
														<p>스마트</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_37" value="A51" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_37">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A51.png" alt=""></div>
														<p>스바루</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_38" value="A28" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_38">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A28.png" alt=""></div>
														<p>스즈키</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_39" value="A59" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_39">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A59.png" alt=""></div>
														<p>시트로엥</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_40" value="A57" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_40">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A57.png" alt=""></div>
														<p>신원CK</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_41" value="A42" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_41">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A42.png" alt=""></div>
														<p>알파로메오</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_42" value="A52" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_42">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A52.png" alt=""></div>
														<p>애스턴마틴</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_43" value="A23" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_43">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A23.png" alt=""></div>
														<p>오펠</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_44" value="A37" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_44">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A37.png" alt=""></div>
														<p>인피니티</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_45" value="A1" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_45">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A1.png" alt=""></div>
														<p>재규어</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_46" value="A20" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_46">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A20.png" alt=""></div>
														<p>지프</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_47" value="A35" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_47">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A35.png" alt=""></div>
														<p>캐딜락</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_48" value="A60" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_48">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A60.png" alt=""></div>
														<p>크라이슬러</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_49" value="A63" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_49">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A63.png" alt=""></div>
														<p>테슬라</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_50" value="A2" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_50">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A2.png" alt=""></div>
														<p>토요타</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_51" value="A6" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_51">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A6.png" alt=""></div>
														<p>팬더</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_52" value="A41" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_52">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A41.png" alt=""></div>
														<p>페라리</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_53" value="A53" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_53">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A53.png" alt=""></div>
														<p>포르쉐</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_54" value="A16" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_54">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A16.png" alt=""></div>
														<p>포톤</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_55" value="A43" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_55">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A43.png" alt=""></div>
														<p>폰티악</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_56" value="A40" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_56">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A40.png" alt=""></div>
														<p>푸조</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_57" value="A58" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_57">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A58.png" alt=""></div>
														<p>피아트</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_58" value="A29" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_58">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A29.png" alt=""></div>
														<p>험머</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_59" value="A33" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_59">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A33.png" alt=""></div>
														<p>혼다</p>
													</label>
												</div>
											</li>
											
										</ul>
									</div>
									<div class="ico-box"> <!--기타-->
										<h1>기타</h1>
										<ul id="Maker1List">
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_60" value="A45" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_60">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A45.png" alt=""></div>
														<p>대형버스(16인승이상)</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_61" value="A54" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_61">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A54.png" alt=""></div>
														<p>대형트럭(2톤이상)</p>
													</label>
												</div>
											</li>
											
											<li>
												<div class="li">
													<div class="ez-radio"><input type="radio" name="iMaker1" id="iMaker1_62" value="A62" value2="0" onclick="makerChanged(this);" class="ez-hide"></div>
													<label for="iMaker1_62">
														<div class="img-box"><img src="/2018_renew/images/data/ico_mp_brand_A62.png" alt=""></div>
														<p>캠핑카/캠핑트레일러</p>
													</label>
												</div>
											</li>
											
										</ul>
									</div>
									
                                </div>
                                <!-- //my_mp_chk_ico -->
                            </div><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 88px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 160px; top: 0px;"></div></div></div></div>
                            <!-- //scrollbar-inner -->
                        </div>
	                        <!-- 제조사 리스트 끝 -->

					      </div>        
					    <input type="radio" name="tabs" id="tabtwo">     
					    <label for="tabtwo">차종으로 검색하기</label> 
					      <div class="tab"> 
					        
					        <!-- 모델 선택 시작 -->
					        <div class="my_mp_search_chk">
                            <ul id="UseKind2List">
                                <li>
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind1" value="002001" onclick="usekindSelected();"></div>
                                    <label for="sUseKind1">경차</label>
                                </li>
                                <li>
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind2" value="002002" onclick="usekindSelected();"></div>
                                    <label for="sUseKind2">소형차</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind3" value="002003" onclick="usekindSelected();"></div>
                                    <label for="sUseKind3">준중형</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind4" value="002004" onclick="usekindSelected();"></div>
                                    <label for="sUseKind4">중형</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind5" value="002005" onclick="usekindSelected();"></div>
                                    <label for="sUseKind5">대형</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind6" value="002006" onclick="usekindSelected();"></div>
                                    <label for="sUseKind6">스포츠카</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind7" value="002008" onclick="usekindSelected();"></div>
                                    <label for="sUseKind7">SUV</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind8" value="002007" onclick="usekindSelected();"></div>
                                    <label for="sUseKind8">RV</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind9" value="002009,002010" onclick="usekindSelected();"></div>
                                    <label for="sUseKind9">승합</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind10" value="002011,002012,002013" onclick="usekindSelected();"></div>
                                    <label for="sUseKind10">화물</label>
                                </li>
                                <li class="b_ty">
                                    <div class="ez-checkbox"><input type="checkbox" class="chk_ty ez-hide" name="sUseKind" id="sUseKind11" value="기타" onclick="usekindSelected();"></div>
                                    <label for="sUseKind11">기타</label>
                                </li>
                            </ul>
							<a href="#" class="btn_s btn_ty09">검색하기</a>
							<a href="#" class="btn_de"><span>상세검색</span></a>
                        </div>
					        <!-- 모델 선택 끝 -->
					         
					      </div>      
					    <input type="radio" name="tabs" id="tabthree">     
					    <label for="tabthree">모델명,차량번호로 검색하기</label> 
					      <div class="tab"> 
					        
					        <div class="my_mp_search_list">
                            <!-- search -->
                            <div class="search">
                                <!-- inp_s -->
                                <div class="inp_s">
                                    <input type="text" class="input_ty" name="CarNo" id="CarNo" value="" placeholder="모델명 또는 차량번호로 검색해주세요.">
                                    <a href="javascript:search(3);" class="btn btn_ty09">검색</a>
                                </div>
                                <!-- //inp_s -->
                            </div>
                            <!-- //search -->
                        </div>
					        
					      </div>  
  					</div>
				</div>
		<div> <%@include file="/WEB-INF/views/common/footer.jsp" %></div>
	</div>
</body>
</html>
