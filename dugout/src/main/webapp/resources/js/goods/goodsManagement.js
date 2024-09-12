$(document).ready(function () {
  $("#main-header").load("HeaderManagement.html");
  $("#main-footer").load("../main/Footer.html");
  $("#content-section").load("../management/ProductManagement.html");

  $(".menu-item").click(function () {
    $(".menu-item").removeClass("active");
    $(this).addClass("active");

    var page = $(this).data("page");
    $("#content-section").load("../management/" + page);
  });
});
