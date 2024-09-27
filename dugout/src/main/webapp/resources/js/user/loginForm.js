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
  });