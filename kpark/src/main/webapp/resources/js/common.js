/*------------*/
/* 상단 검색  */
/*------------*/
function headMakerChanged(makerCode) {
    $("#headModelCode").html("<option value=\"\">모델</option>");
    $("#headModelDetailCode").html("<option value=\"\">세부모델</option>")
    if(makerCode != "") {
        $.ajax({
            type: "post",
            url: "/2018_renew/include/load_code_new.asp",
            data: {gubun:"ModelList",MakerCode: $("#headMakerCode").val(), ResultType: "select" },
            success: function(result) {
                $("#headModelCode").append(result);

                $("#headModelCode").trigger("mousedown");
            }
        });
    }
}
function headModelChanged(modelCode) {
    $("#headModelDetailCode").html("<option value=\"\">세부모델</option>")
    if(modelCode != "") {
        $.ajax({
            type: "post",
            url: "/2018_renew/include/load_code_new.asp",
            data: {gubun:"ModelDetailList", MakerCode: $("#headMakerCode").val(), ModelCode: $("#headModelCode").val(), ResultType: "select" },
            success: function(result) {
                $("#headModelDetailCode").append(result);

                $("#headModelDetailCode").trigger("click");
            }
        });
    }
}
function headSearch() {
    var carNo = $("#hCarNo").val();
    var makerCode = $("#headMakerCode").val();
    var modelCode = $("#headModelCode").val();
    var modelDetailCode = $("#headModelDetailCode").val();

    if(carNo == "" && makerCode == "" && modelCode == "" && modelDetailCode == "") {
        alert("차량명 또는 차량번호를 입력하거나 차종을 선택하세요.")
    } else {
        if(carNo != "") {
            location.href = "/buy/search_car_list.asp?sCarName="+carNo;
        } else {
            location.href = "/buy/my_car_list.asp?sSearch=1&sMakerCode="+makerCode+"&sModelCode="+modelCode+"&sModelDetailCode="+modelDetailCode;
        }
    }
}
function headSearchReset() {
    $("#headMakerCode").val("");
    $("#headModelCode").html("<option value=\"\">모델</option>");
    $("#headModelDetailCode").html("<option value=\"\">세부모델</option>")
}

/*------------*/
/*  메인 검색 */
/*------------*/
function mMakerChanged(obj) {
    $("#mModelList").html("");
    $("#mModelTitle").text("모델");
    $("#mModelDetailList").html("");
    $("#mModelDetailTitle").text("세부모델");

    if($("#mMakerList :checked").val() != "") {
        mcChkSearch(1);
        $("#mMakerTitle").text($("#mMakerList :checked").parentsUntil("li").parent().find("label").text());
        $.ajax({
            type: "post",
            url: "/2018_renew/include/load_code_new.asp",
            data: {gubun: "ModelList", MakerCode: $("#mMakerList :checked").val(), ResultType: "data"},
            success: function(result) {
                var codes = JSON.parse(result);

                $.each(codes, function(k, v) {
                    var html = "<li>\n";
                    html += "<input type=\"radio\" name=\"mModelCode\" id=\"mModelCode"+k+"\" value=\""+v.Code+"\" onclick=\"mModelChanged(this);\">\n";
                    html += "<label for=\"mModelCode"+k+"\">"+v.CodeName+"</label>\n";
                    html += "</li>\n";
                    $("#mModelList").append(html);
                });
                $("#mModelList :radio").ezMark();

                $("#mModelTitle").trigger("click");
            }
        });
    }
}
function mModelDetailChanged(obj) {
    if($("#mModelDetailCode :checked").val() != "") {
        mcChkSearch(3);
        $("#mModelDetailTitle").text($("#mModelDetailList :checked").parentsUntil("li").parent().find("label").text());
    } else {
        $("#mModelDetailTitle").text("세부모델");
    }
}
function mModelChanged(obj) {
    $("#mModelDetailList").html("");
    $("#mModelDetailTitle").text("세부모델");

    if($("#mModelList :checked").val() != "") {
        mcChkSearch(2);
        $("#mModelTitle").text($("#mModelList :checked").parentsUntil("li").parent().find("label").text());
        $.ajax({
            type: "post",
            url: "/2018_renew/include/load_code_new.asp",
            data: {gubun: "ModelDetailList", MakerCode: $("#mMakerList :checked").val(), ModelCode: $("#mModelList :checked").val(), ResultType: "data"},
            success: function(result) {
                var codes = JSON.parse(result);

                $.each(codes, function(k, v) {
                    var html = "<li>\n";
                    html += "<input type=\"radio\" name=\"mModelDetailCode\" id=\"mModelDetailCode"+k+"\" value=\""+v.Code+"\" onclick=\"mModelDetailChanged(this);\">\n";
                    html += "<label for=\"mModelDetailCode"+k+"\">"+v.CodeName+"</label>\n";
                    html += "</li>\n";
                    $("#mModelDetailList").append(html);
                });
                $("#mModelDetailList :radio").ezMark();

                $("#mModelDetailTitle").trigger("click");
            }
        });
    }
}
function mSearch() {
    var makerCode = "";
    var modelCode = "";
    var modelDetailCode = "";

    if($("#mMakerList :checked").val() != undefined) {
        makerCode = $("#mMakerList :checked").val();
    }
    if($("#mModelList :checked").val() != undefined) {
        modelCode = $("#mModelList :checked").val();
    }
    if($("#mModelDetailList :checked").val() != undefined) {
        modelDetailCode = $("#mModelDetailList :checked").val();
    }

    if(makerCode == "" && modelCode == "" && modelDetailCode == "") {
        alert("차종을 선택하세요.");
    } else {
        $("#mMakerList :checked").prop("checked", false).change();
        $("#mModelList").html("");
        $("#mModelDetailList").html("");
        $("#mMakerTitle").text("제조사");
        $("#mModelTitle").text("모델");
        $("#mModelDetailTitle").text("세부모델");
        location.href = "/buy/my_car_list.asp?sMakerCode="+makerCode+"&sModelCode="+modelCode+"&sModelDetailCode="+modelDetailCode;
    }
}

function doCarlist() {
	var con = coument.getElementByid("carList");
	if(con.style.display == 'none'){
		con.style.display = 'block';
	}else{
		con.style.display ='none';
	}
	
}