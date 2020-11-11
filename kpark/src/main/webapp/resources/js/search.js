$(document).ready(function() { //onload()
	console.log("onload")
	var tab1 = document.getElementById("tab1");
	var tab2 = document.getElementById("tab2");
	var tab3 = document.getElementById("tab3");

	var maker_menu = document.getElementById("maker_menu");
	var model_menu = document.getElementById("model_menu");

});

$('#hd').click(function(event) {
	loadXml("현대");
});
$('#kia').click(function(event) {
	loadXml("기아");
});
$('#che').click(function(event) {
	loadXml("쉐보레");
});
$('#ss').click(function(event) {
	loadXml("쌍용");
});
$('#len').click(function(event) {
	loadXml("르노");
});
$('#bmw').click(function(event) {
	loadXml("BMW");
});
$('#benz').click(function(event) {
	loadXml("벤츠");
});
$('#audi').click(function(event) {
	loadXml("아우디");
});
$('#volks').click(function(event) {
	loadXml("폭스바겐");
});

tab1.onclick = function() {
	tab1.setAttribute("class", "active");
	tab2.setAttribute("class", "");
	tab3.setAttribute("class", "");
	$(".makerTab").show();
	$(".typeTab").hide();
	$(".modelTab").hide();
}
tab2.onclick = function() {
	tab1.setAttribute("class", "");
	tab2.setAttribute("class", "active");
	tab3.setAttribute("class", "");
	$(".makerTab").hide();
	$(".typeTab").show();
	$(".modelTab").hide();
}
tab3.onclick = function() {
	tab1.setAttribute("class", "");
	tab2.setAttribute("class", "");
	tab3.setAttribute("class", "active");
	$(".makerTab").hide();
	$(".typeTab").hide();
	$(".modelTab").show();
}

function toggleMaker() {
	$('#sel_maker').attr('class', 'on');
	$('#sel_model').attr('class', '');
	$('.maker_menu').show();
	$('.model_menu').hide();
}

function toggleModel() {
	$('#sel_model').attr('class', 'on');
	$('#sel_maker').attr('class', '');
	$('.model_menu').show();
	$('.maker_menu').hide();
}





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
	// xml = xml.responseXML;

	model_menu.innerHTML = ""; //모델메뉴 비우기
	var cars = xml.getElementsByTagName("car");
	for (var i = 0; i < cars.length; i++) { //지정된 제조사 모델만 남기기
		var str = cars[i].innerHTML;
		var idx = str.indexOf(maker);
		if (idx != -1) {
			str = str.substring(str.indexOf("<model>") + 7, str.indexOf("</model>"));
			model_menu.innerHTML += '<li onclick="setModel(\'' + str + '\')"><p>' + str + '</p></li>';
		}
	}
	$('#sel_maker').html(maker);
	toggleModel();
}

function setModel(model) {
	$('#sel_model').html(model);
	$('.model_menu').hide();
	$('#sel_model').attr('class', '');
}
