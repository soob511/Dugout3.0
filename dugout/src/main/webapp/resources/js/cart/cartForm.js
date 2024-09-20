function plus(button) {
    let product = $(button).closest(".cart-list");
    let productPlus = $(button).prev(".cnt");
    let cartCount = parseInt(productPlus.val());
    productPlus.val(cartCount + 1);

    let productPrice = product.find("#product-price");
    let price = parseInt(productPrice.data("price"));
    const originPrice = parseInt(productPrice.data("price"));

    price = originPrice * (cartCount + 1);
    productPrice.text(price.toLocaleString() + "원");

    totalPriceOper();
	}

function minus(button) {
    let product = $(button).closest(".cart-list");
    let productMinus = $(button).next(".cnt");
    let cartCount = parseInt(productMinus.val());
    if (cartCount > 1) {
      productMinus.val(cartCount - 1);
      let productPrice = product.find("#product-price");
      let price = parseInt(productPrice.data("price"));
      const originPrice = parseInt(productPrice.data("price"));

      price = originPrice * (cartCount - 1);
      productPrice.text(price.toLocaleString() + "원");
    }
    totalPriceOper();
}

$(document).ready(function () {
  $("#flexCheckDefault-all").on("click", function () {
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
