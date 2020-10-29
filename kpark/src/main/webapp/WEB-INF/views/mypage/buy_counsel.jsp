<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath }/resources/css/buy_counsel.css">

<meta charset="UTF-8">
<title>구매 상담</title>
</head>
<body>

 <div class="wrap">
 <div class="buy_title">
 <h1>구매상담</h1>
 <h2>원하는 중고차를 구하기 어려우신가요?</h2>
 <h2>케이파크가 인증딜러를 통해 차량구매를 책임지고 도와드립니다.</h2>
 </div>
 <div class="buy_img">
 <p class="txt">
 "사고 싶은 내차,"
 <br>
 "편하고 안전하게"
 <br>
 "인증딜러에게 구매!"
 </p>
 <img src="http://www.m-park.co.kr/2018_renew/images/contents/img_info_ico_txt_cont01.png" alt="">
 </div>
 
 <ul class="info_ico_txt_cont">
                    <li class="li">
                        <dl>
                            <dt>
                                <img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_ico_txt_cont01.png" alt="">
                                <span>빠르고 간편</span>
                            </dt>
                            <dd>
                                <ul>
                                    <li>신청과 동시에 공식 인증딜러 배정</li>
                                    <li>전문가들이 전국에 있는 최적의 차량을 찾아 안내</li>
                                    <li>준비한 차량 확인 후 계약,명의이전까지 한번에</li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                    <li class="li">
                        <dl>
                            <dt>
                                <img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_ico_txt_cont02.png" alt="">
                                <span>수수료가 없다</span>
                            </dt>
                            <dd>
                                <ul>
                                    <li><strong class="t_point">신청수수료 0원</strong> (신청비를 받는 업체도 있어요)</li>
                                    <li>원하시는 차량을 찾을 때 까지 </li>
                                    <li>케이파크 공식홈페이지는 100% 무료 상담서비스</li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                    <li class="li">
                        <dl>
                            <dt>
                                <img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_ico_txt_cont03.png" alt="">
                                <span>안전한 거래</span>
                            </dt>
                            <dd>
                                <ul>
                                    <li>케이파크에는 수년간의 노하우가 있는 160개 상사가 존재</li>
                                    <li>제휴딜러가 아닌 매매단지 근무 인증딜러</li>
                                    <li>문제가 생기면 케이파크 고객센터가 고객님의 안전거래를 보장</li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                </ul>
<article class="cont">
                <h4 class="tit_t">이용절차</h4>
                <!-- info_step_ty -->
                <ul class="info_step_ty">
                    <li class="li">
                        <dl class="ico">
                            <dt>STEP 01</dt>
                            <dd><img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_step_ty01.png" alt=""></dd>
                        </dl>
                        <dl class="txt">
                            <dt>차량의 정보를 입력</dt>
                            <dd>구매를 희망하시는 차량과 추가정보를 정확히 입력하고 신청하기 버튼을 눌러주세요.</dd>
                        </dl>
                    </li>
                    <li class="li">
                        <dl class="ico">
                            <dt>STEP 02</dt>
                            <dd><img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_step_ty02.png" alt=""></dd>
                        </dl>
                        <dl class="txt">
                            <dt>담당자 배정 및 중고차탐색</dt>
                            <dd>고객님만을 위한 케이파크 소속 공식 인증딜러가 배정되며 고객님이 원하시는 차량을 전국에서 찾습니다.</dd>
                        </dl>
                    </li>
                    <li class="li">
                        <dl class="ico">
                            <dt>STEP 03</dt>
                            <dd><img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_step_ty03.png" alt=""></dd>
                        </dl>
                        <dl class="txt">
                            <dt>상담 및 방문하여 차량확인</dt>
                            <dd>고객님이 원하시는 일자에 매매단지를 방문하여 차량상태를 꼼꼼하게 체크하고 상담하세요.</dd>
                        </dl>
                    </li>
                    <li class="li">
                        <dl class="ico">
                            <dt>STEP 04</dt>
                            <dd><img src="http://www.m-park.co.kr/2018_renew/images/contents/ico_info_step_ty04.png" alt=""></dd>
                        </dl>
                        <dl class="txt">
                            <dt>내차구매 완료</dt>
                            <dd>계약서 작성 부터 명의이전까지 한방으로 공식 인증딜러가 끝까지 함께 도와드립니다.</dd>
                        </dl>
                    </li>
                </ul>
                <!-- //info_step_ty -->
            </article>
            <article class="cont" id="anchor01">
                <h4 class="tit_t mb">구매상담 신청하기</h4>
                <form name="form1" id="form1" method="post">
                    <input type="hidden" name="ConsType" value="047001">
                    <input type="hidden" name="QryGbn" value="Add">
                    <fieldset>
                    <legend>구매상담 신청하기</legend>
                    <!-- 신청자 정보 -->
                    <div class="cont_s">
                        <h5 class="tit_t02 mb">신청자 정보</h5>
                        <div class="table_t_desc"><p class="ico_es_area"><em class="ico_es"></em>필수 입력사항입니다.</p></div>
                        <!-- table_ty -->
                        <div class="table_ty">
                            <table>
                                <caption>신청자 정보</caption>
                                <colgroup>
                                    <col span="1" style="width:13%;">
                                    <col span="1" style="width:37%;">
                                    <col span="1" style="width:13%;">
                                    <col span="1" style="width:37%;">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="left">신청자<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <input type="text" class="input_ty w1" name="MemberName" value="" id="MemberName">
                                        </td>
                                        <th scope="row" class="left">휴대폰<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <select class="select_ty w0" id="MobileNo1" name="MobileNo1">
                                                <option value="">선택</option>
                                                <option value="010">010</option>
                                                <option value="011">011</option>
                                                <option value="016">016</option>
                                                <option value="017">017</option>
                                                <option value="018">018</option>
                                                <option value="019">019</option>
                                            </select><!-- 18.08.27 수정 -->
                                            <input type="text" class="input_ty w0 center" id="MobileNo2" name="MobileNo2" value="" maxlength="4">
                                            <input type="text" class="input_ty w0 center" id="MobileNo3" name="MobileNo3" value="" maxlength="4">
                                            <!-- <a href="#" class="btn_s btn_ty03">본인인증</a> -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="left">거주지역<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <select class="select_ty w1" id="CityCode" name="CityCode" onchange="cityCodeChanged(this.value);">
                                            <option value="">시도</option>
<option value="021009">서울</option>
<option value="021002">경기</option>
<option value="021011">인천</option>
<option value="021001">강원</option>
<option value="021007">대전</option>
<option value="021016">충북</option>
<option value="021015">충남</option>
<option value="021006">대구</option>
<option value="021004">경북</option>
<option value="021008">부산</option>
<option value="021010">울산</option>
<option value="021003">경남</option>
<option value="021013">전북</option>
<option value="021005">광주</option>
<option value="021012">전남</option>
<option value="021014">제주</option>
<option value="021017">세종</option>

                                            </select>
                                            <select class="select_ty w1" id="AreaCode" name="AreaCode">
                                                <option value="">지역</option>
                                            </select>
                                        </td>
                                        <th scope="row" class="left">비밀번호<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <input type="password" class="input_ty w1" maxlength="8" name="Passwd" id="Passwd">
                                            <span class="bt">(4~8자 영/숫자 입력)</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- //table_ty -->
                    </div>
                    <!-- //신청자 정보 -->

                    <!-- 차량정보 -->
                    <div class="cont_s">
                        <h5 class="tit_t02 mb">차량정보</h5>
                        <div class="table_t_desc"><p class="ico_es_area"><em class="ico_es"></em>필수 입력사항입니다.</p></div>
                        <!-- table_ty -->
                        <div class="table_ty">
                            <table>
                                <caption>차량정보</caption>
                                <colgroup>
                                    <col span="1" style="width:13%;">
                                    <col span="1" style="width:37%;">
                                    <col span="1" style="width:13%;">
                                    <col span="1" style="width:37%;">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="left">차량선택<em class="ico_es">필수입력</em></th>
                                        <td class="left" colspan="3">
                                            <select class="select_ty w15" id="MakerCode" name="MakerCode" onchange="selectChanged('Maker');">
                                            <option value="">제조사</option>
<option value="A22">현대</option>
<option value="A18">제네시스</option>
<option value="A47">기아</option>
<option value="A9">쉐보레/대우</option>
<option value="A49">르노삼성</option>
<option value="A7">쌍용</option>
<option value="A56">BMW</option>
<option value="A12">벤츠</option>
<option value="A39">아우디</option>
<option value="A38">폭스바겐</option>
<option value="A4">포드</option>
<option value="A8">미니</option>
<option value="A11">GMC</option>
<option value="A24">MG로버</option>
<option value="A46">닛산</option>
<option value="A10">다이하츠</option>
<option value="A36">닷지</option>
<option value="A31">란치아</option>
<option value="A21">람보르기니</option>
<option value="A34">랜드로버</option>
<option value="A61">렉서스</option>
<option value="A44">로터스</option>
<option value="A14">롤스로이스</option>
<option value="A48">링컨</option>
<option value="A50">마세라티</option>
<option value="A27">마이바흐</option>
<option value="A3">마쯔다</option>
<option value="A5">맥라렌</option>
<option value="A25">머큐리</option>
<option value="A30">미쯔비시</option>
<option value="A32">벤틀리</option>
<option value="A17">볼보</option>
<option value="A15">뷰익</option>
<option value="A19">사브</option>
<option value="A26">쉐보레</option>
<option value="A55">스마트</option>
<option value="A51">스바루</option>
<option value="A28">스즈키</option>
<option value="A59">시트로엥</option>
<option value="A57">신원CK</option>
<option value="A42">알파로메오</option>
<option value="A52">애스턴마틴</option>
<option value="A23">오펠</option>
<option value="A37">인피니티</option>
<option value="A1">재규어</option>
<option value="A20">지프</option>
<option value="A35">캐딜락</option>
<option value="A60">크라이슬러</option>
<option value="A63">테슬라</option>
<option value="A2">토요타</option>
<option value="A6">팬더</option>
<option value="A41">페라리</option>
<option value="A53">포르쉐</option>
<option value="A16">포톤</option>
<option value="A43">폰티악</option>
<option value="A40">푸조</option>
<option value="A58">피아트</option>
<option value="A29">험머</option>
<option value="A33">혼다</option>
<option value="A45">대형버스(16인승이상)</option>
<option value="A54">대형트럭(2톤이상)</option>
<option value="A62">캠핑카/캠핑트레일러</option>

                                            </select>
                                            <select class="select_ty w15" id="ModelCode" name="ModelCode" onchange="selectChanged('Model');">
                                            <option value="">모델</option>

                                            </select>
                                            <select class="select_ty w15" id="ModelDetailCode" name="ModelDetailCode" onchange="selectChanged('ModelDetail');">
                                            <option value="">세부모델</option>

                                            </select>
                                            <select class="select_ty w15" id="GradeCode" name="GradeCode" onchange="selectChanged('Grade');">
                                            <option value="">등급</option>

                                            </select>
                                            <select class="select_ty w15" id="GradeDetailCode" name="GradeDetailCode">
                                            <option value="">세부등급</option>

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="left">소요연식<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <select class="select_ty w1" name="YYYY" id="YYMM">
                                            
                                                <option value="1">1년</option>
                                            
                                                <option value="2">2년</option>
                                            
                                                <option value="3">3년</option>
                                            
                                                <option value="4">4년</option>
                                            
                                                <option value="5">5년</option>
                                            
                                                <option value="6">6년</option>
                                            
                                                <option value="7">7년</option>
                                            
                                                <option value="8">8년</option>
                                            
                                                <option value="9">9년</option>
                                            
                                                <option value="10">10년</option>
                                            
                                            </select>
                                            <span class="bt">이하</span>
                                        </td>
                                        <th scope="row" class="left">연료<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <select class="select_ty w2" name="GasCode" id="GasCode">
                                            <option value="">선택</option>
<option value="005001">휘발유</option>
<option value="005002">경유</option>
<option value="005003">LPG</option>
<option value="005004">LPG겸용</option>
<option value="005006">휘발유+전기</option>
<option value="005008">경유+전기</option>
<option value="005009">LPG+전기</option>
<option value="005007">CNG겸용</option>
<option value="005010">전기(EV)</option>
<option value="005013">수소전기</option>
<option value="005005">기타</option>

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="left">주행거리</th>
                                        <td class="left">
                                            <input type="text" class="input_ty w1" name="Km" id="Km" maxlength="6">
                                            <span class="bt">Km 이하</span>
                                        </td>
                                        <th scope="row" class="left">변속기<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <select class="select_ty w2" name="AutoGbnCode" id="AutoGbnCode">
                                            <option value="">선택</option>
<option value="004001">자동</option>
<option value="004002">수동</option>
<option value="004003">세미오토</option>
<option value="004004">무단변속기</option>
<option value="004005">기타</option>

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="left">색상</th>
                                        <td class="left">
                                            <select class="select_ty w2" name="ColorCode" id="ColorCode">
                                            <option value="">선택</option>
<option value="006172">흰색</option>
<option value="006007">검정</option>
<option value="006110">은색</option>
<option value="006166">회색</option>
<option value="006031">다크그레이</option>
<option value="006126">쥐색</option>
<option value="006132">진주</option>
<option value="006140">청색</option>
<option value="006052">베이지</option>
<option value="006066">빨강</option>
<option value="006033">다크블루</option>
<option value="006026">노랑</option>
<option value="006158">하늘</option>
<option value="006111">은색투톤</option>
<option value="006153">파랑</option>
<option value="006183">브론즈그레이</option>
<option value="006180">그라파이트 블루</option>
<option value="006181">플루토브라운</option>
<option value="006175">블루블랙</option>
<option value="006176">민트</option>
<option value="006177">쵸코브라운</option>
<option value="006001">갈대색</option>
<option value="006002">갈대투톤</option>
<option value="006003">갈투톤</option>
<option value="006004">감은</option>
<option value="006005">감청</option>
<option value="006006">검붉은색</option>
<option value="006008">검정투톤</option>
<option value="006009">검쥐색</option>
<option value="006010">겨자</option>
<option value="006011">겨자투톤</option>
<option value="006012">고동색</option>
<option value="006013">곤색</option>
<option value="006014">곤색투톤</option>
<option value="006015">국방색</option>
<option value="006016">금모래</option>
<option value="006017">금모래투톤</option>
<option value="006018">금색</option>
<option value="006019">금색투톤</option>
<option value="006020">기타</option>
<option value="006021">까치색</option>
<option value="006022">까치투톤</option>
<option value="006023">꽃자주</option>
<option value="006024">남색</option>
<option value="006025">남색투톤</option>
<option value="006027">노랑투톤</option>
<option value="006028">노을색</option>
<option value="006029">녹색</option>
<option value="006030">녹색투톤</option>
<option value="006032">다크베이직</option>
<option value="006034">담갈</option>
<option value="006035">담녹</option>
<option value="006036">담녹투톤</option>
<option value="006037">레몬</option>
<option value="006038">마르스레드</option>
<option value="006039">맑은하늘색</option>
<option value="006040">맨하탄실버</option>
<option value="006041">메론색</option>
<option value="006042">명은색</option>
<option value="006043">명은투톤</option>
<option value="006044">목련색</option>
<option value="006045">목련투톤</option>
<option value="006046">물빛색</option>
<option value="006047">미스틱그레이</option>
<option value="006048">밀크색</option>
<option value="006049">바로셀로나레드</option>
<option value="006050">밤색</option>
<option value="006051">백진주</option>
<option value="006053">베이지투톤</option>
<option value="006054">베지</option>
<option value="006055">벨기에브라운</option>
<option value="006056">벽돌투톤</option>
<option value="006057">보라</option>
<option value="006058">보라색투톤</option>
<option value="006059">북청</option>
<option value="006060">분홍</option>
<option value="006061">분홍펄</option>
<option value="006062">브라운</option>
<option value="006063">블루펄</option>
<option value="006064">비둘기</option>
<option value="006065">비취</option>
<option value="006067">빨강투톤</option>
<option value="006068">살구색</option>
<option value="006069">살색</option>
<option value="006070">삿포로화이트</option>
<option value="006071">상아색</option>
<option value="006072">상아투톤</option>
<option value="006073">셀레스티얼 블랙</option>
<option value="006074">소라색</option>
<option value="006075">소라투톤</option>
<option value="006076">수박색</option>
<option value="006077">수박색투톤</option>
<option value="006078">수박투톤</option>
<option value="006079">순은색</option>
<option value="006080">순은색</option>
<option value="006081">스카이블루</option>
<option value="006082">심홍</option>
<option value="006083">심홍색</option>
<option value="006084">쑥색</option>
<option value="006085">쑥색투톤</option>
<option value="006086">아이보리</option>
<option value="006087">아이슬란드블루</option>
<option value="006088">애스트럴 골드</option>
<option value="006089">연검정색</option>
<option value="006090">연금색</option>
<option value="006091">연금색투톤</option>
<option value="006092">연남색</option>
<option value="006093">연녹색</option>
<option value="006094">연녹투톤</option>
<option value="006095">연두</option>
<option value="006096">연두투톤</option>
<option value="006097">연바다색투톤</option>
<option value="006098">연은색투톤</option>
<option value="006099">연청색</option>
<option value="006100">연카키색</option>
<option value="006101">연카키투톤</option>
<option value="006102">연하늘색</option>
<option value="006103">오렌지색</option>
<option value="006104">옥색</option>
<option value="006105">옥색투톤</option>
<option value="006106">와인색</option>
<option value="006107">은갈색</option>
<option value="006108">은비</option>
<option value="006109">은비투톤</option>
<option value="006112">은청색</option>
<option value="006113">은하늘색</option>
<option value="006114">은하색</option>
<option value="006115">은하투톤</option>
<option value="006116">은황색</option>
<option value="006117">은회색</option>
<option value="006118">자주</option>
<option value="006119">자주투톤</option>
<option value="006120">적갈색</option>
<option value="006121">적갈색투톤</option>
<option value="006122">적색투톤</option>
<option value="006123">적자주</option>
<option value="006124">주황색</option>
<option value="006125">주황색투톤</option>
<option value="006127">쥐색투톤</option>
<option value="006128">진갈색</option>
<option value="006129">진녹</option>
<option value="006130">진녹투톤</option>
<option value="006131">진연두</option>
<option value="006133">진주투톤</option>
<option value="006134">진주펄색</option>
<option value="006135">진청</option>
<option value="006136">진회색</option>
<option value="006137">청록</option>
<option value="006138">청록투톤</option>
<option value="006139">청보라</option>
<option value="006141">청색투톤</option>
<option value="006142">청옥색</option>
<option value="006143">청자색</option>
<option value="006144">청회색</option>
<option value="006145">초록</option>
<option value="006146">카멜레온</option>
<option value="006147">카키</option>
<option value="006148">카키투톤</option>
<option value="006149">캘리포니아오렌지</option>
<option value="006150">커피색</option>
<option value="006151">크리스탈비치</option>
<option value="006152">티타늄실버</option>
<option value="006154">파랑투톤</option>
<option value="006155">풋사과색</option>
<option value="006156">풋사과투톤</option>
<option value="006157">프라하블랙</option>
<option value="006159">하늘투톤</option>
<option value="006160">하이퍼메탈</option>
<option value="006161">홍적</option>
<option value="006162">황금색</option>
<option value="006163">황금투톤</option>
<option value="006164">황토색</option>
<option value="006165">황토색투톤</option>
<option value="006167">회색투톤</option>
<option value="006168">흑녹색</option>
<option value="006169">흑자주</option>
<option value="006170">흑장미</option>
<option value="006171">흑진주</option>
<option value="006173">흰색투톤</option>
<option value="006174">Neo블랙</option>
<option value="006178">블루발티코</option>
<option value="006179">폴리시드메탈</option>
<option value="006185">라임</option>
<option value="006182">티타늄 브러쉬</option>
<option value="006184">헤이즈블루</option>

                                            </select>
                                        </td>
                                        <th scope="row" class="left">희망가격<em class="ico_es">필수입력</em></th>
                                        <td class="left">
                                            <select class="select_ty w2" name="DemoAmt" id="DemoAmt">
                                                <option value="">선택</option>
                                        
                                                <option value="300">300</option>
                                        
                                                <option value="400">400</option>
                                        
                                                <option value="500">500</option>
                                        
                                                <option value="600">600</option>
                                        
                                                <option value="700">700</option>
                                        
                                                <option value="800">800</option>
                                        
                                                <option value="900">900</option>
                                        
                                                <option value="1000">1,000</option>
                                        
                                                <option value="1100">1,100</option>
                                        
                                                <option value="1200">1,200</option>
                                        
                                                <option value="1300">1,300</option>
                                        
                                                <option value="1400">1,400</option>
                                        
                                                <option value="1500">1,500</option>
                                        
                                                <option value="1600">1,600</option>
                                        
                                                <option value="1700">1,700</option>
                                        
                                                <option value="1800">1,800</option>
                                        
                                                <option value="1900">1,900</option>
                                        
                                                <option value="2000">2,000</option>
                                        
                                                <option value="3000">3,000</option>
                                        
                                                <option value="4000">4,000</option>
                                        
                                                <option value="5000">5,000</option>
                                        
                                                <option value="6000">6,000</option>
                                        
                                                <option value="7000">7,000</option>
                                        
                                                <option value="8000">8,000</option>
                                        
                                                <option value="9000">9,000</option>
                                        
                                                <option value="10000">10,000</option>
                                        
                                            </select>
                                            <span class="bt">만원</span>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th scope="row" class="left">차량판매예정</th>
                                        <td class="left" colspan="3">
                                        <div class="consul_box chk_on">
                                            <div class="ez-radio ez-selected"><input type="radio" class="radio_ty ez-hide" name="AddInfo" value="1" id="sale_chk01" checked=""></div><label for="sale_chk01">판매할 차량 있음</label>
                                            <div class="ez-radio"><input type="radio" class="radio_ty ez-hide" name="AddInfo" value="0" id="sale_chk02"></div><label for="sale_chk02">이미 판매 했음</label>
                                        </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="left">상세설명</th>
                                        <td class="left" colspan="3">
                                             <textarea name="Contents" id="Contents"></textarea>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- //table_ty -->
                        <!-- table_notice
                        <div class="table_notice">
                            <input type="checkbox" class="chk_ty" id="chk_agree">
                            <label for="chk_agree">[필수] 개인정보 수집ㆍ이용 동의</label>
                            <a href="javascript:showAdAgree();" class="btn_line">자세히 보기</a>
                        </div>
                        //table_notice -->
                        <!-- table_notice02 --><!-- 18.10.16 수정 -->
                        <div class="table_notice02">
                            <!-- 개인정보를 제3자에게 제공 -->
                            <div class="inner">
                                <h4 class="tit">신청하신 서비스를 처리하기 위해 개인정보를 제3자에게 제공하고 있습니다.</h4>
                                <div class="table_ty line">
                                    <table>
                                        <caption>개인정보를 제3자에게 제공</caption>
                                        <colgroup>
                                            <col span="4" style="width:25%;">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">개인정보를 제공받는자</th>
                                                <th scope="col">제공받는 자의 개인정보 이용목적</th>
                                                <th scope="col">제공하는 개인정보 항목</th>
                                                <th scope="col">제공받는 자의 보유 및 이용기간</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>케이파크매매단지 입점상사</td>
                                                <td>중고차 거래관련 상담 처리</td>
                                                <td>이름, 휴대폰번호, 지역, 이메일</td>
                                                <td>처리목적 달성시 파기</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- //개인정보를 제3자에게 제공 -->
                            
                            <!-- 입점상사 -->
                            <div class="inner">
                                <h4 class="tit">입점상사</h4>
                                <div class="box">
                                    <div>
                                    라온모터스 ,아주네트웍스 주식회사 ,써니카 ,오토그린모터스 ,(주)로이모터스 ,주식회사 트루카 ,주식회사 오토룩 ,알차 ,에이치씨에이에스 주식회사 인천지점 ,(주)해강모터스 ,(주)유카 ,주식회사 프랜드카 ,주식회사 소비 ,에이치투모터스 ,SK네트웍스 (주) ,참좋은모터스 ,올바른자동차 ,의리차차차 ,(주) 에스에이치모터스 ,굿딜러스 ,주식회사 제이파크 ,디앤피모터스 ,카플러스 자동차매매상사 ,오토피아자동차매매상사 ,주식회사 혜안모터스 ,주식회사 골드모터스 ,송도모터스 ,오토월드 ,탁월한선택 ,오토샵자동차매매상사 ,카누리모터스 ,스카이모터스자동차매매상사 ,(주)카스갤러리 ,아이엔지(ING) ,새마을자동차 ,타워자동차매매상사 ,딜카모터스 ,진솔모터스 ,카담파트너스 ,J모터스자동차매매상사 ,파크모터스 ,자동차1번지 자동차매매상사 ,패밀리카 ,카프라자자동차매매상사 ,주식회사 카누 ,한솔모터스자동차매매상사 ,OK모터스자동차매매상사 ,JP모터스자동차매매상사 ,S&amp;K모터스자동차매매상사 ,유레카모터스 ,원모터스 ,에스카(S CAR) ,주식회사 케이엠모터스 ,나눔모터스 ,범스카 ,비티(BT)모터스 ,주식회사 용일상사 ,주식회사 자동차나라 ,(주)케이비모터스 ,경원모터스 ,오토팰리스 ,제이비모터스 ,행운상사 ,주식회사 홍차 ,오토모티브 ,굿카대표 모터스 ,스마트상사 ,주식회사 굿프렌즈파트너스 ,오토프라임본점 ,오토플러스(주) 중앙특판지점 ,금성모터스 ,엘제이 모터스 ,(주)엔젤모터스 ,씨에스모터스 ,조이카모터스자동차매매상사 ,비비모터스매매상사 ,오토허브 엠파크지점 ,대한모터스 ,(주)국민상사 ,거안상사 ,에이치씨에이에스 주식회사 경인지점 ,주식회사 누리모터스 ,힘찬 중고차 ,두산모터스 ,(주)카앤카 ,원스탑모터스 주식회사 ,주식회사 카스테이션 ,주식회사 오토위드 ,하나모터스 ,(주)유일모터스자동차매매 ,주식회사 지후모터스 ,(주)에이엠지모터스 ,주식회사 타워모터스2 ,주식회사 하이카모터스자동차매매상사 ,주식회사 드림오토상사 ,케이엠파크 ,오토클럽자동차매매상사 ,(주)오토베이 ,더블에스모터스 ,주식회사 진모터스 ,(주)에스디모터스 ,(주)유카 인천타워지점 ,미추홀 자동차 ,(주)다경모터스 ,주식회사 시우자동차 ,잘팔카 ,한성자동차 (주) ,레드모터스 ,코리아모터스자동차매매상사 ,좋은차와사람들 자동차매매상사 ,에이치모터스 ,유원모터스 ,에쿠스자동차 ,비엠모터스 ,코카스모터스자동차매매상사 ,유성모터스 ,오토엠
                                        
                                    </div>
                                </div>
                                <ul class="table_info">
                                    <li>귀하는 홈페이지 이용에 필요한 최소한의 개인정보 수집·이용에 동의하지 않을 권리가 있으며, 미동의 시 거부한 내용에 대해 서비스가 제한 될 수 있습니다.</li>
                                </ul>
                            </div>
                            <!-- //입점상사 -->
                            
                            <!-- info -->
                            <div class="info">
                                <p class="txt">개인정보 제3자 제공에 동의하십니까?</p>
                                <ul>
                                    <li>
                                        <div class="ez-radio"><input type="radio" name="chk_agree" class="chk_ty ez-hide" id="chk_agree01"></div>
                                        <label for="chk_agree01">동의함</label>
                                    </li>
                                    <li class="chk_on">
                                        <div class="ez-radio ez-selected"><input type="radio" name="chk_agree" class="chk_ty ez-hide" id="chk_agree02" checked=""></div>
                                        <label for="chk_agree02">동의하지 않음</label>
                                    </li>
                                </ul>
                            </div>
                            <!-- //info -->
                        </div>
                        <!-- //table_notice02 --><!-- 18.10.16 수정 -->                        
                    </div>
                    <!-- //차량정보 -->
                        
                    <!-- btn_area -->
                    <ul class="btn_area">
                        <li>
                            <a href="#" onclick="addConsulting(); return false;" class="btn_m btn_ty btn_max">신청하기</a>
                        </li>
                    </ul>
                    <!-- //btn_area -->
                    </fieldset>
                </form>
            </article>
            <div class="table_ty list">
                    <table>
                        <caption>구매상담 목록</caption>
                        <colgroup>
                            <col span="1" style="width:8%;">
                            <col span="1" style="width:46%;">
                            <col span="1" style="width:10%;">
                            <col span="1" style="width:10%;">
                            <col span="1" style="width:13%;">
                            <col span="1" style="width:13%;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">제목</th>
                                <th scope="col">지역</th>
                                <th scope="col">신청자</th>
                                <th scope="col">신청일시</th>
                                <th scope="col">상담상태</th>
                            </tr>
                        </thead>
                        <tbody>
                        
                            <tr>
                                <td>6852</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        기아 더뉴쏘렌토 디젤2.0 4WD 마스터 스페셜</a></td>
                                <td>인천</td>
                                <td>박**</td>
                                <td>2020.10.23</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6850</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        현대 코나 1.6디젤 2WD 모던</a></td>
                                <td>인천</td>
                                <td>강**</td>
                                <td>2020.10.22</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6843</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        제네시스 G80(2세대) 2.5터보 2WD </a></td>
                                <td>인천</td>
                                <td>조**</td>
                                <td>2020.10.19</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6842</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        제네시스 G80(1세대)  </a></td>
                                <td>인천</td>
                                <td>조**</td>
                                <td>2020.10.19</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6839</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        대형버스(16인승이상) 그랜버드 뉴그랜버스 29인승</a></td>
                                <td>서울</td>
                                <td>홈**</td>
                                <td>2020.10.17</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6837</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        폭스바겐 아테온 2.0TDI </a></td>
                                <td>충남</td>
                                <td>김**</td>
                                <td>2020.10.16</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6822</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        기아 올뉴K7 3.0GDI 노블레스</a></td>
                                <td>전북</td>
                                <td>김**</td>
                                <td>2020.10.08</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6819</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        르노삼성 뉴SM5(신형)  </a></td>
                                <td>인천</td>
                                <td>김**</td>
                                <td>2020.10.06</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6818</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        스즈키 허슬러 허슬러 </a></td>
                                <td>충남</td>
                                <td>곽**</td>
                                <td>2020.10.06</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                            <tr>
                                <td>6807</td>
                                <td class="left">
                        
                                    <a href="#" onclick="alert('상담완료된 글입니다.'); return false;" class="link">
                        현대 쏘나타뉴라이즈 하이브리드 모던 </a></td>
                                <td>서울</td>
                                <td>김**</td>
                                <td>2020.09.23</td>
                                <td><strong class="t_point03">상담완료</strong></td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="paginate" id="paging_list"><a href="#" onclick="setLocation({gotoPage:1, params:''}); return false;" class="on">1</a><a href="#" onclick="setLocation({gotoPage:2, params:''}); return false;">2</a><a href="#" onclick="setLocation({gotoPage:3, params:''}); return false;">3</a><a href="#" onclick="setLocation({gotoPage:4, params:''}); return false;">4</a><a href="#" onclick="setLocation({gotoPage:5, params:''}); return false;">5</a><a href="#" onclick="setLocation({gotoPage:6, params:''}); return false;">6</a><a href="#" onclick="setLocation({gotoPage:7, params:''}); return false;">7</a><a href="#" onclick="setLocation({gotoPage:8, params:''}); return false;">8</a><a href="#" onclick="setLocation({gotoPage:9, params:''}); return false;">9</a><a href="#" onclick="setLocation({gotoPage:10, params:''}); return false;">10</a><a href="#" onclick="setLocation({gotoPage:1+1, params: ''}); return false;" class="next">다음</a><a href="#" onclick="setLocation({gotoPage:11, params: ''}); return false;" class="next02">다음</a></div>
  </div>
</body>
</html>