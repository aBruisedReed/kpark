<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<style>
		header:before {
			position: absolute;
			left: 0;
			top: 80px;
			width: 100%;
			height: 1px;
			background: #CDCDCD;
			content: "";
		}
		header {
			position: relative;
			margin: 0;
			padding: 0;
		}		
		.header_content {
			position: relative;
			width: 1280px;
			height: 141px;
			margin: 0 auto;
		}
		header h1.logo {
			height: 80px;
			width: 111px;
			position: absolute;
			left: 0;
			top: 0;
			background: #FFE4F3;
			margin: 0;
		}
		.searchbox {
			width: 405px; height: 40px;
			border: 3px solid #9E7BFF;
			background: white;
			margin: 20px auto;
		}
		.searchbox .search_text {
			width: 365px; height: 40px;
			margin-left: 5px;
			border: 0;
			line-height: 21px;
			font-weight: bold;
			font-size: 14px;
			outline: none;
		}
		.searchbox .search_button {
			height: 30px;
			width: 30px;
			background: url("resources/image/search.png") no-repeat;
			background-size: contain;
			border: 0;
			outline: none;
			float: right;
			margin: 5px 5px 5px 0;
		}
		.header_nav {
			position: absolute;
			right: 5px;
			top: 20px;
		}
		.header_nav ul {
			float: left;
			margin-top: 14px;
		}
		.header_nav li {
			position: relative;
			float: left;
		}
	</style>
</head>
<body>
<header>
	<div class="header_content">
		<h1 class="logo">
			<a href="home">LOGO</a>
		</h1>
		<div class="searchbox">
			<input class="search_text" type="text" placeholder="모델명을 검색해주세요.">
			<input class="search_button" type="button">
		</div>
		<nav class="header_nav">
			<ul>
				<li><a href="login">로그인</a></li>
				<li><a href="login">회원가입</a></li>
				<li><a href="login">고객센터</a></li>
				<!-- <li><a href="login">마이페이지</a></li>
				<li><a href="login">관리자메뉴</a></li> -->
			</ul>
		</nav>
	</div>
	
</header>
</body>
</html>
