$(document).ready(function () {
    $("#username,#password").on("input", function () {
      var id = $("#username").val().trim();
      var password = $("#password").val().trim();

      if (id !== "" && password !== ""&&password.length>=8&&password.length<=16) {
        $(".login-btn").prop("disabled", false);
      } else {
        $(".login-btn").prop("disabled", true);
      }
    });

    $("#password").on("input", function () {
      var password = $("#password").val().trim();
      if (password.length < 8 || password.length > 16) {
        passwordError.textContent = "비밀번호의 길이는 8~16자입니다.";
        passwordError.style.display = "block";
      } else {
        passwordError.style.display = "none";
      }
    });

  });