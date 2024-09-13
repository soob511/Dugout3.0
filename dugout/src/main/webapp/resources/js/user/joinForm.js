/* 카카오주소 api */
function searchAddress() {
  new daum.Postcode({
    oncomplete: function (data) {
      let addr = "";
      let extraAddr = "";

      addr = data.userSelectedType === "R" ? data.roadAddress : data.jibunAddress;

      if (data.userSelectedType === "R") {
        if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
          extraAddr += data.bname;
        }
        if (data.buildingName !== "" && data.apartment === "Y") {
          extraAddr +=
            extraAddr !== "" ? ", " + data.buildingName : data.buildingName;
        }
        if (extraAddr !== "") {
          extraAddr = " (" + extraAddr + ")";
        }
      }
      document.getElementById("inputAddress").value = addr + extraAddr;
      document.getElementById("inputAddress").focus();
    },
  }).open();
}

/* 회원가입 Form 유효성 검사 */
$(document).ready(function () {
	const checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	const checkPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]/;
	
	$("#inputId").on("input", function () {
		let inputId = $("#inputId").val().trim();
		const msg = $('.username-message');
		
		if ((inputId && inputId.length < 4) || inputId.length > 12 || checkKor.test(inputId)) {
			msg.text("아이디는 영문 또는 숫자 4~12자로 작성해야 합니다.");
			msg.css("opacity", "1");
			msg.css("color", "red");
		} else {
			msg.css("opacity", "0");
		    }
	  });

  $("#inputPassword").on("input", function () {
    let password = $("#inputPassword").val().trim();
    const msg = $('.password-check');
    	if (!password) {
    		msg.css("opacity", "0");
    	} else if ((password.length < 8) || password.length > 16) {
	    	msg.text("비밀번호는 8~16자로 작성해야 합니다.");
	    	msg.css("color", "red");
	    	msg.css("opacity", "1");
	    } else if (checkKor.test(password) || !checkPassword.test(password)) {
	    	msg.text("비밀번호는 영어와 숫자를 포함해야 합니다.");
	    	msg.css("color", "red");
	    	msg.css("opacity", "1");
	    } else {
	    	msg.text("사용가능한 비밀번호 입니다.");
	    	msg.css("color", "blue");
	    	msg.css("opacity", "1");
	    }
  });

  $("#confirmPassword").on("input", function () {
	  let confirmPassword = $("#confirmPassword").val().trim();
	  let password = $("#inputPassword").val().trim();
	  const msg = $('.wrong-password');
      if (confirmPassword == password) {
    	msg.text("비밀번호가 일치합니다.");
    	msg.css("color", "blue");
    	msg.css("opacity", "1");
    } else {
    	msg.text("비밀번호가 일치하지 않습니다.");
    	msg.css("color", "red");
    	msg.css("opacity", "1");
    }
  });

  $("#inputPhone").on("input", function () {
    let phone = $("#inputPhone").val().trim();
    const msg = $('.email-check');
    if (phone && !phone.startsWith("010")) {
		msg.text("전화번호는 010으로 시작해야 합니다.");
	  	msg.css("color", "red");
	  	msg.css("opacity", "1");
    } else {
    	msg.css("opacity", "0");
    }
  });
});
