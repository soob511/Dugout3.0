$(document).ready(function () {
  $("#pay-all").click(function () {
    location.href = "../payment/Payment.html";
  });
  $("#pay-select").click(function () {
    location.href = "../payment/Payment.html";
  });
});

$(document).ready(function () {
  $("footer").load("../main/Footer.html");
  $("header").load("../main/Header.html");

  $(".plus").click(function () {
    let product = $(this).closest(".cart-list");
    let productPlus = $(this).prev(".cnt");
    let cartCount = parseInt(productPlus.text());
    productPlus.text(cartCount + 1);

    let productPrice = product.find("#product-price");
    let price = parseInt(productPrice.data("price"));
    const originPrice = parseInt(productPrice.data("price"));

    price = originPrice * (cartCount + 1);
    productPrice.text(price.toLocaleString() + "원");

    totalPriceOper();
  });

  $(".minus").click(function () {
    let product = $(this).closest(".cart-list");
    let productMinus = $(this).next(".cnt");
    let cartCount = parseInt(productMinus.text());
    if (cartCount > 1) {
      productMinus.text(cartCount - 1);
      let productPrice = product.find("#product-price");
      let price = parseInt(productPrice.data("price"));
      const originPrice = parseInt(productPrice.data("price"));

      price = originPrice * (cartCount - 1);
      productPrice.text(price.toLocaleString() + "원");
    }
    totalPriceOper();
  });

  $("#flexCheckDefault-all").on("click", function () {
    console.log("클릭됨");
    $(".cart-list .form-check-input").prop("checked", $(this).prop("checked"));
    totalPriceOper();
  });

  $(".cart-list .form-check-input").on("click", function () {
    let allChecked =
      $(".cart-list .form-check-input").length ===
      $(".cart-list .form-check-input:checked").length;
    $("#flexCheckDefault-all").prop("checked", allChecked);
    totalPriceOper();
  });
});

/* 결제 가격 계산 */
function totalPriceOper() {
  let checked = $("input.form-check-input:checked:not(#flexCheckDefault-all)");
  let itemList = [];
  let priceList = [];
  for (let el of checked) itemList.push($(el).closest(".cart-list"));
  for (let el of itemList) priceList.push(el.find("#product-price"));

  let totalPrice = 0;
  for (let el of priceList) {
    totalPrice += parseInt(el.text().replace(/,|원/g, ""));
  }

  $("#total-price").text(totalPrice.toLocaleString() + "원");
  $("#pay-price").text(totalPrice.toLocaleString() + "원");
}
