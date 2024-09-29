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

    $("#modalDeleteBtn").click(function () {
        location.href = "/dugout/cart";
    });
});

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

function updateCart(id) {
    let goodsId = id;
    let cartCount = $("." + id).val();

    const params = { goodsId, cartCount };

    $.ajax({
        url: "/dugout/cart/updateCart",
        method: "post",
        data: params,
        success: function (data) {
            console.log(data);
        }
    });
}

function deleteItem() {
    let selectCheck = [];

    $(".cart-checkbox:checked").each(function () {
        selectCheck.push($(this).data("goods-id"));
    });
    console.log("선택된 항목:", selectCheck);
    $.ajax({
        url: "/dugout/cart/deleteCart",
        method: "post",
        data: { checkList: selectCheck },
        traditional: true,
        success: function (data) {
            if (!data) {
                $("#modalDelete-body p").text("삭제할 항목을 체크해주세요.");
                $('#modalDelete').modal('show');
            } else {
                $("#modalDelete-body p").text("장바구니에서 삭제되었습니다.");
                $('#modalDelete').modal('show');
            }
        }
    });
}

function orderItem() {
    let orderList = [];
    let totalPrice = 0;

    $(".cart-checkbox:checked").each(function () {
        let goodsId = $(this).data("goods-id");
        let goodsName = $(this).closest(".cart-list").find("#product-name").text();
        let goodsQuantity = parseInt($(this).closest(".cart-list").find(".product-quantity").val(), 10);
        let goodsPrice = $(this).closest(".cart-list").find("#product-price").data("price");

        totalPrice += goodsQuantity * goodsPrice;

        orderList.push({
            goodsId: goodsId,
            goodsName: goodsName,
            goodsQuantity: goodsQuantity,
            goodsPrice: goodsPrice
        });
    });

    console.log(JSON.stringify(orderList, null, 2));

    let orderData = {
        orderList: orderList,
        totalPrice: totalPrice
    };

    $.ajax({
        url: "/dugout/order/orderItem",
        method: "post",
        contentType: "application/json",
        data: JSON.stringify(orderData),
        traditional: true,
        success: function (data) {
            if (!data) {
                $("#modalOrder-body p").text("상품을 선택해주세요.");
                $('#modalOrder').modal('show');
            } else {
                location.href = "/dugout/order/payment";
                console.log(data);
            }
        }
    });
}

function allOrderItem() {
    $(".cart-checkbox").prop("checked", true);
    orderItem();
}