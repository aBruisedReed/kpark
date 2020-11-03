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
	<title>차량 정보 - 브랜드 리스트</title>
	<link rel="stylesheet" href="${contextPath }/resources/css/brandList.css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		/* methods */
	</script>
</head>
<body>
	<div id="all">
		<h1 id="infoTitle">차량 정보</h1>
		<div class="title">국산차</div>
		<table id="domestic">
			<tr>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20180529_88/auto_1527592677868AxMTJ_PNG/20180529201748_nbVe4EOk.png?type=f40_40"><p>현대</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20170707_181/auto_149940895782493s0w_PNG/20170707152915_q71wMr3r.png?type=f40_40"><p>기아</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20200210_175/auto_15813076774623FdaV_PNG/20200210130752_EvOsbnkP.png?type=f40_40"><p>쉐보레</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20170707_290/auto_14994089867715m7Kc_PNG/20170707152945_ov1NwuMf.png?type=f40_40"><p>쌍용</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20170707_188/auto_14994089761732i2AM_PNG/20170707152934_4UQVPJ4f.png?type=f40_40"><p>르노</p></a></td>
			</tr>
		</table>
		<div class="title">수입차</div>
		<table id="income">
			<tr>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20200310_214/auto_1583815678479PKzIr_PNG/20200310134752_3hMT5CTc.png?type=f40_40"><p>BMW</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20170707_151/auto_1499404806991Xuw2o_PNG/20170707142004_4ANaTv3h.png?type=f40_40"><p>벤츠</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20170707_207/auto_1499404828979BICft_PNG/20170707142026_ovRGcdML.png?type=f40_40"><p>아우디</p></a></td>
				<td><a href="brandInfo.do"><img src="https://imgauto-phinf.pstatic.net/20200422_10/auto_15875288567367G6VE_PNG/20200422131406_lmRMWJht.png?type=f40_40"><p>폭스바겐</p></a></td>
			</tr>
		</table>
	</div>
</body>
</html>