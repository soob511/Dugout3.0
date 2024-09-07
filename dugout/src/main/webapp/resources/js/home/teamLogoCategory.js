document.querySelectorAll(".logo-item").forEach((item) => {
  item.addEventListener("click", function () {
    document.querySelectorAll(".logo-item").forEach((otherItem) => {
      otherItem.classList.add("dimmed");
    });

    this.classList.remove("dimmed");
  });
});

$(document).ready(function () {
  $("#all").click(function () {
    $("article.product").load("Product.html", function () {
      initializePagination();
    });
  });
  $("#dusan").click(function () {
    $("article.product").load("DusanDetail.html");
  });
  function initializePagination() {
    $(".pagination .page-item").on("click", function () {
      $(".pagination .page-item").removeClass("active");
      $(this).addClass("active");
    });
  }
});
