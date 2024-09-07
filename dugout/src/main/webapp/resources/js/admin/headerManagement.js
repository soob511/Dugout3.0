$(document).ready(function () {
  $(".login").on("click", function () {
    localStorage.removeItem("login");
    localStorage.removeItem("userAdmin");
    location.href = "../main/Main.html";
  });
});
