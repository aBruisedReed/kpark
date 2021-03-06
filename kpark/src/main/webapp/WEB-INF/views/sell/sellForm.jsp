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
			window.location.href='${contextPath}';
		}
		
		$(document).ready(function(){
			$("#submit").on("click", function(){
				if($("#detailModel").val()==""){
					alert("세부 모델을 입력해주세요.");
					$("#detailModel").focus();
					return false;
				}
				if($("#price").val()==""){
					alert("가격을 입력해주세요.");
					$("#price").focus();
					return false;
				}
				if($("#cc").val()==""){
					alert("배기량 입력해주세요.");
					$("#cc").focus();
					return false;
				}
				if($("#carNumber").val()==""){
					alert("차량 번호를 입력해주세요.");
					$("#carNumber").focus();
					return false;
				}
				if($("#color").val()==""){
					alert("색상을 입력해주세요.");
					$("#color").focus();
					return false;
				}
				if($("#distance").val()==""){
					alert("주행 거리를 입력해주세요.");
					$("#distance").focus();
					return false;
				}
				if($("#carRepair").val()==""){
					alert("단순 수리를 입력해주세요.");
					$("#carRepair").focus();
					return false;
				}
				if($("#history").val()==""){
					alert("수리 이력을 입력해주세요.");
					$("#history").focus();
					return false;
				}
				if($("#dam").val()==""){
					alert("내차 피해를 입력해주세요.");
					$("#dam").focus();
					return false;
				}
				if($("#damOther").val()==""){
					alert("타차 피해를 입력해주세요.");
					$("#damOther").focus();
					return false;
				}
				if($("#explanation").val()==""){
					alert("상세 설명을 입력해주세요.");
					$("#explanation").focus();
					return false;
				}
			});
		})
		/* function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function (e) {
					$('#preview').attr('src', e.target.result);
					$('#preview').attr('style', "display: inline;")
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		function readURL1(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function (e) {
					$('#preview1').attr('src', e.target.result);
					$('#preview1').attr('style', "display: inline;")
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		function readURL2(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function (e) {
					$('#preview2').attr('src', e.target.result);
					$('#preview2').attr('style', "display: inline;")
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		function readURL3(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function (e) {
					$('#preview3').attr('src', e.target.result);
					$('#preview3').attr('style', "display: inline;")
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		 
		var cnt=1;
		function fn_addFile() {
			if(cnt==4) {
				alert('더이상 추가할 수 없습니다.');
				return;
			}
			$("#imgBtnLine").append("<label for='inputImg"+cnt+"'>이미지"+(cnt+1)+" 선택</label>");
			$("#imgBtnLine").append("<input id='inputImg"+cnt+"' type='file' name='file" + cnt + "' accept='image/*' onchange='readURL"+cnt+"(this);' />");
			$("#selectedImg").append("<img id='preview"+cnt+"' style='display: none;'>");
			cnt++;
		} */
		
	</script>
</head>
<body>

	<div id="all">
		<div id="title">
			<h1>차량 판매 상담 신청</h1>
			<p style="color: gray">간편하고 빠르게 차량 판매 상담을 신청하세요.</p>
			<img id="sell_title_img"
				src="${contextPath }/resources/image/sell_title_img.png">
		</div>
		<div id="sellTable">
			<form name="sellForm" method="post" action="${contextPath }/sell/addSell.do"
				enctype="multipart/form-data">
				<input type="hidden" name="id" value="${member.user_id}">
				<input type="hidden" name="name" value="${member.user_name }">
				<table frame="void" width="70%" height="500">
					<tr>
						<td width="15%" class="formKey">차량 선택</td>
						<td width="35%" class="formValue">
						<select id="maker" name="maker">
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
						</select> 
						<select id="model" name="carModel"></select> 
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
					    <input id="detailModel" type="text" name="subModel" placeholder="세부모델을 입력해주세요">
					    </td>
					    <td class="carType">차종</td>
							<td class="carTypeCont">
								<select name="carType">
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
								</select>
							</td>
					</tr>
					<tr>
						<td width="15%" class="formKey">가격</td>
						<td width="35%" class="formValue"><input type="text"
							name="price" id="price"><span>만원</span></td>
						<td width="15%" class="formKey">배기량</td>
						<td width="35%" class="formValue"><input type="text"
							name="cc" id="cc"><span>cc</span></td>
					</tr>
					<tr>
						<td class="formKey">차량 연식</td>
						<td class="formValue"><select name="carYear">
								<c:forEach var="i" begin="0" end="30">
									<option value="<c:out value="${2020-i}" />"><c:out value="${2020-i}" />년</option>
								</c:forEach>
						</select></td>
						<td class="formKey">차량 번호</td>
						<td class="formValue"><input type="text" name="carNumber" id="carNumber"></td>
					</tr>
					<tr>
						<td class="formKey">연료</td>
						<td class="formValue"><select name="fuel">
								<option value="휘발유">휘발유</option>
								<option value="경유">경유</option>
								<option value="LPG">LPG</option>
								<option value="전기">전기</option>
								<option value="휘발유+전기">휘발유+전기</option>
								<option value="경유+전기">경유+전기</option>
								<option value="LPG+전기">LPG+전기</option>
								<option value="기타">기타</option>
						</select></td>
						<td class="formKey">색상</td>
						<td class="formValue"><input type="text" name="color" id="color"></td>
					</tr>
					<tr>
						<td class="formKey">주행 거리</td>
						<td class="formValue"><input type="text" name="distance" id="distance"><span>km
								이하</span></td>
						<td class="formKey">변속기</td>
						<td class="formValue"><select name="gear">
								<option value="자동">자동</option>
								<option value="수동">수동</option>
								<option value="세미오토">세미오토</option>
								<option value="무단변속기(CVT)">무단변속기(CVT)</option>
								<option value="기타">기타</option>
						</select></td>
					</tr>
					<tr>
						<td class="formKey">사고 여부</td>
						<td class="formValue"><select name="acc">
								<option value="무">무</option>
								<option value="유">유</option>
						</select></td>
						<td class="formKey">단순 수리</td>
						<td class="formValue"><input type="number" name="carRepair" id="carRepair" placeholder="0"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">침수 여부</td>
						<td class="formValue"><select name="flood">
								<option value="무">무</option>
								<option value="유">유</option>
						</select></td>
						<td class="formKey">수리 이력</td>
						<td class="formValue"><input type="number" name="history" id="history" placeholder="0"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">내차 피해</td>
						<td class="formValue"><input type="number" name="dam" id="dam" placeholder="0"><span>회</span></td>
						<td class="formKey">타차 피해</td>
						<td class="formValue"><input type="number" name="damOther" id="damOther" placeholder="0"><span>회</span></td>
					</tr>
					<tr>
						<td class="formKey">압류</td>
						<td class="formValue"><select name="seize">
								<option value="해당없음">해당없음</option>
						</select></td>
						<td class="formKey">저당</td>
						<td class="formValue"><select name="mortgage">
								<option value="해당없음">해당없음</option>
						</select></td>
					</tr>
					<tr>
						<td class="formKey">주요 옵션</td>
						<td colspan="3" class="formValue" id="optionCheckbox">
							<label><input type="checkbox" name="option1" value="option_nav">네비게이션</label>
							<label><input type="checkbox" name="option2" value="option_blackbox">블랙박스</label> 
							<label><input type="checkbox" name="option3" value="option_backCam">후방카메라</label>
							<label><input type="checkbox" name="option4" value="option_sunRoof">썬루프</label> 
							<label><input type="checkbox" name="option5" value="option_hotSeat">열선시트</label>
							<br> 
							<label><input type="checkbox" name="option6" value="option_ventSeat">통풍시트</label> 
							<label><input type="checkbox" name="option7" value="option_hotHandle">열선핸들</label>
							<label><input type="checkbox" name="option8" value="option_hipass">하이패스</label> 
							<label><input type="checkbox" name="option9" value="option_smartKey">스마트키</label>
							<label><input type="checkbox" name="option10" value="option_control">크루즈컨트롤</label>
							</td>
						<input id="hiddenOpt" type="hidden" name="carOption" value="">
						<script>
							var option="0000000000";
							var pre = 'if($("input:checkbox[name=option';
							var suf = ']").is(":checked") == true) { option+="1";} else { option+="0";}';
							$('#optionCheckbox').change(function() {
								option = ""
								for(var i=1; i<=10; i++) {
									eval(pre+i+suf);
								}
								$('#hiddenOpt').attr('value', option);
							})
						</script>
					</tr>
				</table>
				<input id="serialDummy" type="hidden" name="serial" value="777777">
				<textarea id="explanation" name="explanation" rows="20" cols="100"
					placeholder="상세 설명을 입력해주세요."></textarea>
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
					<input type="submit" value="등록" id="submit"> 
					<input type="button" value="취소" onclick="backToMain();">
				</div>
			</form>
		</div>
	</div>

</body>
</html>