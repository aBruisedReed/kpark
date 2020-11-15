<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet"
		href="${contextPath }/resources/css/adminSellForm.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		
		function backToMain() {
			window.location.href="${contextPath}/admin/adminSellList.do";
		}
		
	</script>
</head>
<body>

	<div id="all">
		<div id="title">
			<h1>차량 판매 글 상세 보기</h1>
			<p style="color: gray">관리자 페이지</p>
			<img id="sell_title_img"
				src="${contextPath }/resources/image/sell_title_img.png">
		</div>
		<div id="sellTable">
			<form name="sellForm" id="sellForm" method="post" action=""
				enctype="multipart/form-data">
				작성자  <input type="text" name="id" value="${sellVO.id}" readonly="readonly">
				<table frame="void" width="70%" height="500">
					<tr>
						<td width="15%" class="formKey">차량 선택</td>
						<td width="35%" class="formValue">
						<!-- <select id="maker" name="maker">
								<optgroup label="국산">
									<option value="현대">현대</option>
									<option value="기아">기아</option>
									<option value="쉐보레">쉐보레</option>
									<option value="쌍용">쌍용</option>
									<option value="르노">르노</option>
								</optgroup>
								<optgroup label="수입">
									<option value="BMW">BMW</option>
									<option value="벤츠">벤츠</option>
									<option value="아우디">아우디</option>
									<option value="폭스바겐">폭스바겐</option>
								</optgroup>
						</select>  -->
						<input id="maker" name="maker" value="${sellVO.maker }" readonly>
						<input id="model" name="carModel" value="${sellVO.carModel }" readonly>
						<!-- <select id="model" name="carModel"></select> 
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
					    	
					    </script> -->
					    <input id="detailModel" type="text" name="subModel" value="${sellVO.subModel }" readonly="readonly">
					    </td>
					    <td class="carType">차종</td>
							<td class="carTypeCont">
								<!-- <select name="carType">
									<option value="경차">경차</option>
									<option value="소형차">소형차</option>
									<option value="준중형">준중형</option>
									<option value="중형">중형</option>
									<option value="대형">대형</option>
									<option value="스포츠카">스포츠카</option>
									<option value="SUV">SUV</option>
									<option value="RV">RV</option>
									<option value="승합">승합</option>
									<option value="화물">화물</option>
									<option value="기타">기타</option>
								</select> -->
								<input id="carType" name="carType" value="${sellVO.carType }" readonly="readonly">
							</td>
					</tr>
					<tr>
						<td width="15%" class="formKey">가격</td>
						<td width="35%" class="formValue"><input type="text"
							name="price" value="${sellVO.price }" readonly="readonly"><span>만원</span></td>
						<td width="15%" class="formKey">배기량</td>
						<td width="35%" class="formValue"><input type="text"
							name="cc" value="${sellVO.cc }" readonly="readonly"><span>cc</span></td>
					</tr>
					<tr>
						<td class="formKey">차량 연식</td>
						<td class="formValue">
						<%-- <select name="carYear">
								<c:forEach var="i" begin="0" end="30">
									<option value="<c:out value="${2020-i}" />"><c:out value="${2020-i}" />년</option>
								</c:forEach>
						</select> --%>
						<input id="carYear" name="carYear" value="${sellVO.carYear }" readonly="readonly">
						</td>
						<td class="formKey">차량 번호</td>
						<td class="formValue"><input type="text" name="carNumber" value="${sellVO.carNumber }" readonly="readonly"></td>
					</tr>
					<tr>
						<td class="formKey">연료</td>
						<td class="formValue">
						<!-- <select name="fuel">
								<option value="휘발유">휘발유</option>
								<option value="경유">경유</option>
								<option value="LPG">LPG</option>
								<option value="전기">전기</option>
								<option value="휘발유+전기">휘발유+전기</option>
								<option value="경유+전기">경유+전기</option>
								<option value="LPG+전기">LPG+전기</option>
								<option value="기타">기타</option>
						</select> -->
						<input id="fuel" name="fuel" value="${sellVO.fuel }" readonly="readonly">
						</td>
						<td class="formKey">색상</td>
						<td class="formValue"><input type="text" name="color" value="${sellVO.color }" readonly="readonly"></td>
					</tr>
					<tr>
						<td class="formKey">주행 거리</td>
						<td class="formValue"><input type="text" name="distance" value="${sellVO.distance }" readonly="readonly"><span>km
								이하</span></td>
						<td class="formKey">변속기</td>
						<td class="formValue">
						<!-- <select name="gear">
								<option value="자동">자동</option>
								<option value="수동">수동</option>
								<option value="세미오토">세미오토</option>
								<option value="무단변속기(CVT)">무단변속기(CVT)</option>
								<option value="기타">기타</option>
						</select> -->
						<input id="gear" name="gear" value="${sellVO.gear }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td class="formKey">사고 여부</td>
						<td class="formValue">
						<!-- <select name="acc">
								<option value="무">무</option>
								<option value="유">유</option>
						</select> -->
						<input id="acc" name="acc" value="${sellVO.acc }" readonly="readonly">
						</td>
						<td class="formKey">단순 수리</td>
						<td class="formValue"><input type="number" name="carRepair" value="${sellVO.carRepair }" readonly="readonly"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">침수 여부</td>
						<td class="formValue">
						<!-- <select name="flood">
								<option value="무">무</option>
								<option value="유">유</option>
						</select> -->
						<input id="flood" name="flood" value="${sellVO.flood }" readonly="readonly">
						</td>
						<td class="formKey">수리 이력</td>
						<td class="formValue"><input type="number" name="history" value="${sellVO.history }" readonly="readonly"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">내차 피해</td>
						<td class="formValue"><input type="number" name="dam" value="${sellVO.dam }" readonly="readonly"><span>회</span></td>
						<td class="formKey">타차 피해</td>
						<td class="formValue"><input type="number" name="damOther" value="${sellVO.damOther }" readonly="readonly"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">압류</td>
						<td class="formValue">
							<!-- <select name="seize">
									<option value="해당없음">해당없음</option>
							</select> -->
							<input id="seize" name="seize" value="${sellVO.seize }" readonly="readonly">
						</td>
						<td class="formKey">저당</td>
						<td class="formValue">
							<!-- <select name="mortgage">
									<option value="해당없음">해당없음</option>
							</select> -->
							<input id="mortgage" name="mortgage" value="${sellVO.mortgage }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td class="formKey">주요 옵션</td>
						<td colspan="3" class="formValue" id="optionCheckbox">
							<label><input type="checkbox" id="option1" name="option1" value="option_nav" onclick="return false;">네비게이션</label>
							<label><input type="checkbox" id="option2" name="option2" value="option_blackbox" onclick="return false;">블랙박스</label> 
							<label><input type="checkbox" id="option3" name="option3" value="option_backCam" onclick="return false;">후방카메라</label>
							<label><input type="checkbox" id="option4" name="option4" value="option_sunRoof" onclick="return false;">썬루프</label> 
							<label><input type="checkbox" id="option5" name="option5" value="option_hotSeat" onclick="return false;">열선시트</label>
							<br> 
							<label><input type="checkbox" id="option6" name="option6" value="option_ventSeat" onclick="return false;">통풍시트</label> 
							<label><input type="checkbox" id="option7" name="option7" value="option_hotHandle" onclick="return false;">열선핸들</label>
							<label><input type="checkbox" id="option8" name="option8" value="option_hipass" onclick="return false;">하이패스</label> 
							<label><input type="checkbox" id="option9" name="option9" value="option_smartKey" onclick="return false;">스마트키</label>
							<label><input type="checkbox" id="option10" name="option10" value="option_control" onclick="return false;">크루즈컨트롤</label>
							</td>
						<input id="hiddenOpt" type="hidden" name="carOption" value="${sellVO.carOption }">
						<script>
							$(document).ready(function() {
								var option = '<c:out value="${sellVO.carOption}" />'
								if(option==null) {
									option= "0000000000";
								}
								for(var i=1; i<11; i++) {
									if(option[i-1]=="1") {
										eval("$('#option"+i+"').prop('checked', true);");
									}
								}
							})
						</script>
					</tr>
				</table>
				<input id="serialDummy" type="hidden" name="serial" value="777777">
				<textarea id="explanation" name="explanation" rows="20" cols="100"
					placeholder="상세 설명을 입력해주세요." readonly="readonly">${sellVO.explanation }</textarea>
				<div id="selectedImg">
					<img id="preview" style="display: none;">
				</div>
				<!-- <div id="imgBtnLine">
					<label for="inputImg">이미지1 선택</label>
					<input id="inputImg" type="file" name="imageFileName" onchange="readURL(this);" accept="image/*">
				</div>
				<div id="fileAddDiv">
				<input id="addBtn" type="button" value="파일 추가" onclick="fn_addFile()">
				</div> -->
				<div id="buttons">
					<!-- <input type="submit" value="등록" id="submit"> --> 
					<input type="button" value="목록" onclick="backToMain();">
				</div>
			</form>
		</div>
	</div>

</body>
</html>