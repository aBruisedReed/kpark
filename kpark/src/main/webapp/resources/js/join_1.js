 $(document).ready(function(){
    
            $("#nextBtn").click(function(){    
                if($("#agree1").is(":checked") == false){
                    alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
                    return;
                }else if($("#agree2").is(":checked") == false){
                    alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                    return;
                }else{
                	location.href = 'join_2';
                }
            });    
        });

function noagree() {
	window.location.href = 'http://localhost:8080/kpark/';
}
