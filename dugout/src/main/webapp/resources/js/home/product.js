document.addEventListener("DOMContentLoaded", function () {
  const paginationItems = document.querySelectorAll(".pagination .page-item ");
  paginationItems.forEach((item) => {
    item.addEventListener("click", function () {
      paginationItems.forEach((i) => i.classList.remove("active"));
      this.classList.add("active");
    });
  });
});
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
  $("footer").css({
    width: "100%",
  });
});
