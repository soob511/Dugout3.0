$(document).ready(function () {
  var loginSuccess = localStorage.getItem("login");
  var userAdmin = localStorage.getItem("userAdmin");
  if (loginSuccess) {
    $(".login")
      .text("로그아웃")
      .attr("href", "#")
      .on("click", function () {
        localStorage.removeItem("login");
        localStorage.removeItem("userAdmin");
        location.href = "../main/Main.html";
      });
    $(".member").css("visibility", "hidden");
  } else {
    $(".login").text("로그인");
  }
  if (userAdmin === "true") {
    $("header").load("../management/HeaderManagement.html");
  }
});
