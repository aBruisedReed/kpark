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
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="${contextPath }/resources/css/adminSellForm.css">
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
			<img id="sell_title_img" src="${contextPath }/resources/image/sell_title_img.png">
		</div>
		<div id="sellTable">
			<form name="sellForm" method="post" action="#" enctype="multipart/form-data">
				<table frame="void" width="70%" height="500">
				  <tr>
				    <td width="15%" class="formKey">차량 선택</td>
				    <td width="35%" class="formValue">
					    <select name="company">
					    	<option>제조사</option>
					    </select>
					    <select name="model">
					    	<option>모델</option>
					    </select>
				    </td>
				    <td width="15%" class="formKey">가격</td>
				    <td width="35%" class="formValue"><input type="text" name="price"><span>만원</span></td>
				  </tr>
				  <tr>
				    <td class="formKey">차량 연식</td>
				    <td class="formValue">
				    	<select name="year">
				    		<option>2020년</option>
				    	</select>
				    </td>
				    <td class="formKey">차량 번호</td>
				    <td class="formValue"><input type="text" name="carNum"></td>
				  </tr>
				  <tr>
				    <td class="formKey">연료</td>
				    <td class="formValue">
				    	<select name="fuel">
				    		<option>선택</option>
				    	</select>
				    </td>
				    <td class="formKey">색상</td>
				    <td class="formValue"><input type="text" name="color"></td>
				  </tr>
				  <tr>
				    <td class="formKey">주행 거리</td>
				    <td class="formValue"><input type="text" name="distance"><span>km 이하</span></td>
				    <td class="formKey">변속기</td>
				    <td class="formValue">
				    	<select name="gearbox">
				    		<option>선택</option>
				    	</select>
					</td>
				  </tr>
				  <tr>
				    <td class="formKey">사고 여부</td>
				    <td class="formValue">
				    	<select name="accident">
				    		<option>선택</option>
				    	</select>
				    </td>
				    <td class="formKey">단순 수리</td>
				    <td class="formValue"><input type="text" name="simpleFix"><span>회</span></td>
				  </tr>
				  <tr>
				    <td class="formKey">침수</td>
				    <td class="formValue">
				    	<select name="flooding">
				    		<option>선택</option>
				    	</select>
				    </td>
				    <td class="formKey">수리 이력</td>
				    <td class="formValue"><input type="text" name="fixHistory"><span>회</span></td>
				  </tr>
				  <tr>
				    <td class="formKey">내차 피해</td>
					<td class="formValue"><input type="text" name="damageMine"><span>회</span></td>
				    <td class="formKey">타차 피해</td>
				    <td class="formValue"><input type="text" name="damageOther"><span>회</span></td>
				  </tr>
				  <tr>
				    <td class="formKey">압류</td>
				    <td class="formValue">
				    	<select name="seize">
				    		<option>선택</option>
				    	</select>
				    </td>
				    <td class="formKey">저당</td>
				    <td class="formValue">
				    	<select name="security">
				    		<option>선택</option>
				    	</select>
				    </td>
				  </tr>
				  <tr>
				    <td class="formKey">주요 옵션</td>
				    <td colspan="3" class="formValue" id="optionCheckbox">
				    	<label><input type="checkbox" name="option" value="option_nav">네비게이션</label>
				    	<label><input type="checkbox" name="option" value="option_blackbox">블랙박스</label>
				    	<label><input type="checkbox" name="option" value="option_backCam">후방카메라</label>
				    	<label><input type="checkbox" name="option" value="option_sunRoof">썬루프</label>
				    	<label><input type="checkbox" name="option" value="option_hotSeat">열선시트</label>
				    	<br>
				    	<label><input type="checkbox" name="option" value="option_ventSeat">통풍시트</label>
				    	<label><input type="checkbox" name="option" value="option_hotHandle">열선핸들</label>
				    	<label><input type="checkbox" name="option" value="option_hipass">하이패스</label>
				    	<label><input type="checkbox" name="option" value="option_smartKey">스마트키</label>
				    	<label><input type="checkbox" name="option" value="option_control">크루즈컨트롤</label>
				    </td>
				  </tr>
				</table>
				<textarea id="explanation" name="explanation" rows="20" cols="100" placeholder="상세 설명을 입력해주세요."></textarea>
				<div id="selectedImg">
					<img src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
					<img src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
					<img src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
					<img src="https://www.hyundai.com/content/dam/hyundai/ww/en/images/find-a-car/all-vehicles/azera-ig-fl-side-view-white-cream.png">
				</div>
				<p id="imgBtnLine">
					<input type="file" name="selectImg" style="display: none" multiple="multiple" accept="image/*">
					<button id="imgBtn" onclick="onclick=document.sellForm.selectImg.click()">이미지 선택...</button>
				</p>
				<div id="buttons">
					<input type="submit" value="등록" id="submit">
					<input type="button" value="취소" onclick="#">
				</div>
			</form>
		</div>
	</div>

</body>
</html>