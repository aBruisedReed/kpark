<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"
	href="${contextPath }/resources/css/adminSellForm.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>

	<div id="all">
		<div id="title">
			<h1>차량 판매 글 등록</h1>
			<p style="color: gray">관리자 페이지</p>
			<img id="sell_title_img"
				src="${contextPath }/resources/image/sell_title_img.png">
		</div>
		<div id="sellTable">
			<form name="sellForm" method="post" action="#"
				enctype="multipart/form-data">
				<table frame="void" width="70%" height="500">
					<tr>
						<td width="15%" class="formKey">차량 선택</td>
						<td width="35%" class="formValue"><select id="maker">
								<optgroup label="국산">
									<option value="hd">현대</option>
									<option value="kia">기아</option>
									<option value="she">쉐보레</option>
									<option value="ss">쌍용</option>
									<option value="len">르노</option>
								</optgroup>
								<optgroup label="수입">
									<option value="bmw">BMW</option>
									<option value="benz">벤츠</option>
									<option value="audi">아우디</option>
									<option value="volks">폭스바겐</option>
								</optgroup>
						</select> 
						<select id="model"></select> 
						<script type="text/javascript">
							$(document).ready(function() {
								loadXml($('#maker option:selected').text());
							});
					    	$('#maker').on('change', function() {
					    		loadXml($('#maker option:selected').text());
					    	})
					    	
					    	function loadXml(maker) {
								var req = new XMLHttpRequest();
								req.open("GET", "/kpark/resources/xml/car_maker_model.xml", true);
								req.send();
								req.onreadystatechange = function() {
									if (req.readyState == 4) {
										if (req.status >= 200 && req.status < 300) {
											updateList(req.responseXML, maker);
										}
									}
								}
							}
					    	
					    	function updateList(xml, maker) {
					    		$('#model').html("");
					    		var cars = xml.getElementsByTagName("car");
					    		for (var i = 0; i < cars.length; i++) { //지정된 제조사 모델만 남기기
					    			var str = cars[i].innerHTML;
					    			var idx = str.indexOf(maker);
					    			if (idx != -1) {
					    				str = str.substring(str.indexOf("<model>") + 7, str.indexOf("</model>"));
					    				$('#model').html($('#model').html() + "<option value='"+str+"'"+"> "+str+"</option>");
					    			}
					    		}
					    	}
					    	
					    </script>
					    <input id="detailModel" type="text" name="detailModel" placeholder="세부모델을 입력해주세요">
					    </td>
					    <td class="carType">차종</td>
							<td class="carTypeCont">
								<select name="carType">
									<option value="0">경차</option>
									<option value="1">소형차</option>
									<option value="2">준중형</option>
									<option value="3">중형</option>
									<option value="4">대형</option>
									<option value="5">스포츠카</option>
									<option value="6">SUV</option>
									<option value="7">RV</option>
									<option value="8">승합</option>
									<option value="9">화물</option>
									<option value="10">기타</option>
								</select>
							</td>
					</tr>
					<tr>
						<td width="15%" class="formKey">가격</td>
						<td width="35%" class="formValue"  colspan="3"><input type="text"
							name="price"><span>만원</span></td>
					</tr>
					<tr>
						<td class="formKey">차량 연식</td>
						<td class="formValue"><select name="year">
								<c:forEach var="i" begin="0" end="30">
									<option value="<c:out value="${2020-i}" />"><c:out value="${2020-i}" />년</option>
								</c:forEach>
						</select></td>
						<td class="formKey">차량 번호</td>
						<td class="formValue"><input type="text" name="carNum"></td>
					</tr>
					<tr>
						<td class="formKey">연료</td>
						<td class="formValue"><select name="fuel">
								<option value="gasoline">휘발유</option>
								<option value="diesel">경유</option>
								<option value="lpg">LPG</option>
								<option value="elec">전기</option>
								<option value="gasolineElec">휘발유+전기</option>
								<option value="dieselElec">경유+전기</option>
								<option value="lpgElec">LPG+전기</option>
								<option value="etc">기타</option>
						</select></td>
						<td class="formKey">색상</td>
						<td class="formValue"><input type="text" name="color"></td>
					</tr>
					<tr>
						<td class="formKey">주행 거리</td>
						<td class="formValue"><input type="text" name="distance"><span>km
								이하</span></td>
						<td class="formKey">변속기</td>
						<td class="formValue"><select name="gearbox">
								<option value="auto">자동</option>
								<option value="manual">수동</option>
								<option value="semi">세미오토</option>
								<option value="cvt">무단변속기(CVT)</option>
								<option value="etc">기타</option>
						</select></td>
					</tr>
					<tr>
						<td class="formKey">사고 여부</td>
						<td class="formValue"><select name="accident">
								<option value="no">무</option>
								<option value="yes">유</option>
						</select></td>
						<td class="formKey">단순 수리</td>
						<td class="formValue"><input type="number" name="simpleFix"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">침수 여부</td>
						<td class="formValue"><select name="flooding">
								<option value="no">무</option>
								<option value="yes">유</option>
						</select></td>
						<td class="formKey">수리 이력</td>
						<td class="formValue"><input type="number" name="fixHistory"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">내차 피해</td>
						<td class="formValue"><input type="number" name="damageMine"><span>회</span></td>
						<td class="formKey">타차 피해</td>
						<td class="formValue"><input type="number" name="damageOther"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">압류</td>
						<td class="formValue"><select name="seize">
								<option value="no">해당없음</option>
						</select></td>
						<td class="formKey">저당</td>
						<td class="formValue"><select name="security">
								<option value="no">해당없음</option>
						</select></td>
					</tr>
					<tr>
						<td class="formKey">주요 옵션</td>
						<td colspan="3" class="formValue" id="optionCheckbox"><label><input
								type="checkbox" name="option" value="option_nav">네비게이션</label> <label><input
								type="checkbox" name="option" value="option_blackbox">블랙박스</label>
							<label><input type="checkbox" name="option"
								value="option_backCam">후방카메라</label> <label><input
								type="checkbox" name="option" value="option_sunRoof">썬루프</label>
							<label><input type="checkbox" name="option"
								value="option_hotSeat">열선시트</label> <br> <label><input
								type="checkbox" name="option" value="option_ventSeat">통풍시트</label>
							<label><input type="checkbox" name="option"
								value="option_hotHandle">열선핸들</label> <label><input
								type="checkbox" name="option" value="option_hipass">하이패스</label>
							<label><input type="checkbox" name="option"
								value="option_smartKey">스마트키</label> <label><input
								type="checkbox" name="option" value="option_control">크루즈컨트롤</label>
						</td>
					</tr>
				</table>
				<textarea id="explanation" name="explanation" rows="20" cols="100"
					placeholder="상세 설명을 입력해주세요."></textarea>
				<div id="selectedImg">
					<img
						src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
					<img
						src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
					<img
						src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
					<img
						src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
				</div>
				<p id="imgBtnLine">
					<input type="file" name="selectImg" style="display: none"
						multiple="multiple" accept="image/*">
					<button id="imgBtn"
						onclick="onclick=document.sellForm.selectImg.click()">이미지
						선택...</button>
				</p>
				<div id="buttons">
					<input type="submit" value="등록" id="submit"> <input
						type="button" value="취소" onclick="#">
				</div>
			</form>
		</div>
	</div>

</body>
</html>