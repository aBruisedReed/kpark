$(document).ready(updateValue);

var slider = document.getElementById("price_range");
var min = document.getElementById("min_p")
var min2 = document.getElementById("min_upper");
var remain = document.getElementById("remain");
var result = document.getElementById("result");


slider.addEventListener("input", updateValue, false);
$('input[name="chk_1"]').change(updateValue);
$('input[name="chk_2"]').change(updateValue);

function updateValue() {
	var value1 = $('input[name="chk_1"]:checked').val();
	var value2 = $('input[name="chk_2"]:checked').val();

	var m = slider.value;
	var r = slider.max - m;
	var res = (r*10000)
	
	res = pmt(value2/12, value1, r*10000);
	res = Math.floor(Math.abs(res)*(1/10))*10;
	
	min.innerHTML = m;
	min2.innerHTML = m;
	remain.innerHTML = r;
	result.innerHTML = numberWithCommas(res);
}

// 월 상환금 계산 함수
function pmt(rate, nper, pv, fv, type) {
	if (!fv) fv = 0;
	if (!type) type = 0;

	if (rate == 0) return -(pv + fv)/nper;
	
	var pvif = Math.pow(1 + rate, nper);
	var pmt = rate / (pvif - 1) * -(pv * pvif + fv);

	if (type == 1) {
		pmt /= (1 + rate);
	};

	return pmt;
}

//3자리 마다 콤마(금액) 표시를 위한 정규표현식 반환 함수
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

