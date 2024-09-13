/* 카카오주소 api */
function searchAddress() {
  new daum.Postcode({
    oncomplete: function (data) {
      let addr = "";
      let extraAddr = "";

      addr =
        data.userSelectedType === "R" ? data.roadAddress : data.jibunAddress;

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

function idCheckFn() {
	
}

/* 회원가입 Form 유효성 검사 */
$(document).ready(function () {
  const checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
  const checkPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]/;

  $("#inputId").on("input", function () {
	let inputId = $("#inputId").val().trim();
    const msg = $('.username-message');
    
    if (inputId.length < 4 || inputId.length > 12 || checkKor.test(inputId)) {
    	msg.text("아이디는 영문 또는 숫자 4~12자로 작성해야 합니다.");
		msg.css("opacity", "1");
    } else {
    	msg.css("opacity", "0");
    }
  });

  $("#inputPassword").on("input", function () {
    var password = $("#inputPassword").val().trim();
    if (password.length < 8 || password.length > 16) {
      console.log("비밀번호는 8~16자리 사이입니다.");
    } else if (!checkPassword.test(password)) {
      console.log("비밀번호는 영어와 숫자를 포함해야 합니다.");
    } else {
      console.log("비밀번호 사용가능");
    }
  });

  $("#confirmPassword").on("input", function () {
    var confirmPassword = $("#confirmPassword").val().trim();
    var password = $("#inputPassword").val().trim();
    if (confirmPassword === password) {
      console.log("비밀번호가 일치합니다.");
    } else {
      console.log("비밀번호가 틀렸습니다.");
    }
  });

  $("#inputPhone").on("input", function () {
    var phone = $("#inputPhone").val().trim();
    if (!phone.startsWith("010")) {
      console.log("전화번호는 010으로 시작해야 합니다.");
    }
  });
});
