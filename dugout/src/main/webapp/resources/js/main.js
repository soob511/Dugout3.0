$(document).ready(function () {
  $("header").load("Header.html");
  $("nav").load("Nav.html");
  $("section.banner-section").load("Banner.html");
  $("article.category").load("TeamLogoCategory.html");
  $("article.product").load("Product.html", function () {
    initializePagination();
  });
  $("footer").load("Footer.html");
});
function initializePagination() {
  $(".pagination .page-item").on("click", function () {
    $(".pagination .page-item").removeClass("active");
    $(this).addClass("active");
  });
}
