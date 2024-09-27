$(document).ready(function() {
    $("#userID, #phone").on("input", function() {
        var userID = $("#userID").val().trim();
        var phone = $("#phone").val().trim();

        if (userID !== "" && phone !== "") {
            $(".findPassword-btn").prop("disabled", false);
        } else {
            $(".findPassword-btn").prop("disabled", true);
        }
    });
    
    $("#phone").on("input", function () {
        let phone = $("#phone").val().trim();
        const msg = $('.phone-check');
        if (phone && !phone.startsWith("010")) {
    		msg.text("전화번호는 010으로 시작해야 합니다.");
    	  	msg.css("color", "red");
    	  	msg.css("opacity", "1");
        } else {
        	msg.css("opacity", "0");
        }
      });
  
});