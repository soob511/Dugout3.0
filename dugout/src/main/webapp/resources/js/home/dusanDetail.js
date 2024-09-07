var i = 0;
$(".bi-heart").on("click", function () {
  if (i == 0) {
    $(this).removeClass("bi-heart");
    $(this).addClass("bi-heart-fill");
    i++;
  } else if (i == 1) {
    $(this).removeClass("bi-heart-fill");
    $(this).addClass("bi-heart");
    i--;
  }
});
$(document).ready(function () {
  $("header").load("../main/Header.html");
  $("nav").load("../main/Nav.html");
  $("footer").load("../main/Footer.html", function () {
    initializeFooter();
  });
});
function initializeFooter() {
  $("footer").css({
    width: "100%",
  });
}
