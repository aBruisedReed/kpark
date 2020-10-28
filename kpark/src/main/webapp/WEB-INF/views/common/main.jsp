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
<link rel="stylesheet" href="${contextPath }/resources/css/main.css">
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=en"></script> 
<meta charset="UTF-8">
<title>kpark 공식 사이트</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<%@include file="/WEB-INF/views/common/sidebar.jsp" %>
<div class="wrap">
   
      <section class="recommand">
          <div class="rc_img">
          <a  href=""><img src="${contextPath}/resources/image/2.jpeg"></a>
        </div>
      </section>
    <section class="container">
        <ul class="theme_main-car">
            <li class="list">
        
            <div class="car-list">
                <div class="car_img">
             <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                </div>
                <div class="car_box">
                 <p>현대 LF쏘나타</p>
                 <p>LPI스마트</p>
                 <p>2320만원</p>
                </div>
            </div>
                </li>
            
                <li class="list">
            <div class="car-list">
                <div class="car_img">
             <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                </div>
                <div class="car_box">
                 <p>현대 LF쏘나타</p>
                 <p>LPI스마트</p>
                 <p>2320만원</p>
                </div>
            </div>
                </li>

                <li class="list">
                    <div class="car-list">
                        <div class="car_img">
                     <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                        </div>
                        <div class="car_box">
                         <p>현대 LF쏘나타</p>
                         <p>LPI스마트</p>
                         <p>2320만원</p>
                        </div>
                    </div>
                        </li>
                        <li class="list">
                            <div class="car-list">
                                <div class="car_img">
                             <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                                </div>
                                <div class="car_box">
                                 <p>현대 LF쏘나타</p>
                                 <p>LPI스마트</p>
                                 <p>2320만원</p>
                                </div>
                            </div>
                                </li>
                         
                            </ul>

                            <section class="container">
        <ul class="theme_main-car">
            <li class="list">
        <div class="car-list">
            <div class="car-list">
                <div class="car_img">
             <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                </div>
                <div class="car_box">
                 <p>현대 LF쏘나타</p>
                 <p>LPI스마트</p>
                 <p>2320만원</p>
                </div>
            </div>
                </li>
            
                <li class="list">
            <div class="car-list">
                <div class="car_img">
             <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                </div>
                <div class="car_box">
                 <p>현대 LF쏘나타</p>
                 <p>LPI스마트</p>
                 <p>2320만원</p>
                </div>
            </div>
                </li>

                <li class="list">
                    <div class="car-list">
                        <div class="car_img">
                     <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                        </div>
                        <div class="car_box">
                         <p>현대 LF쏘나타</p>
                         <p>LPI스마트</p>
                         <p>2320만원</p>
                        </div>
                    </div>
                        </li>
                        <li class="list">
                            <div class="car-list">
                                <div class="car_img">
                             <a href=""><img src="${contextPath}/resources/image/1.jpg"></a>
                                </div>
                                <div class="car_box">
                                 <p>현대 LF쏘나타</p>
                                 <p>LPI스마트</p>
                                 <p>2320만원</p>
                                </div>
                            </div>
                                </li>
                         
        </ul>
  </section>
  <div class="news_title">
  <label ><h1>자동차 뉴스</h1></label>
</div>
  <section class="news">
    <div class="news_img">
     <img src="${contextPath}/resources/image/4.jpg">
    </div>
    

    
    <ul class="news-car">
      <a href=""> <li class="news-list1"><h1>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h1></li></a>
      <a href=""> <li class="news-list2"><h1>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h1></li></a>
      <a href=""> <li class="news-list3"><h1>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h1></li></a>
      <a href=""> <li class="news-list4"><h1>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h1></li></a>
      <a href=""> <li class="news-list4"><h1>전기차 가격 2024년까지 엔진차 수준으로 떨어진다</h1></li></a>

    </ul>

  </section>
  <br>
  <script> 
  function initialize() { 
var myLatlng = new google.maps.LatLng(37.571034, 126.992643); // 좌표값
  var mapOptions = { 
        zoom: 14, // 지도 확대레벨 조정
        center: myLatlng, 
        mapTypeId: google.maps.MapTypeId.ROADMAP 
  } 
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions); 
  var marker = new google.maps.Marker({ 
position: myLatlng, 
map: map, 
title: "kpark" // 마커에 마우스를 올렸을때 간략하게 표기될 설명글
}); 
  } 
window.onload = initialize;
</script>

  <section class="kpark_loc">
      <div class="kpark_loc1">
      <label>kpark 오시는길</label>
    </div>
    <div id="map_canvas" style="width: 100%; height: 400px; margin:0px;"></div>
<!--     <div class="kpark_img"> -->

<!--     </div> -->
  </section>
</div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>