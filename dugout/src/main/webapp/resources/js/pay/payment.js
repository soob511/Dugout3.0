$(document).ready(function() {
    $(".btn-secondary").click(function() {
        location.href = "/dugout/";
    });
});

function insertOrder() {
    let orderList = [];
    let totalPrice = 0;

    $(".product-wrapper").each(function() {
        let goodsId = $(this).find(".product-details").data("goods-id");
        let goodsName = $(this).find(".product-name").text();
        let goodsQuantity = parseInt($(this).find(".product-options").text().replace('개', ''));
        let goodsPrice = parseInt($(this).find(".product-price").text().replace('원', '').replace(/,/g, ''));

        totalPrice += goodsQuantity * goodsPrice;

        orderList.push({
            goodsId: goodsId,
            goodsName: goodsName,
            goodsQuantity: goodsQuantity,
            goodsPrice: goodsPrice
        });
    });

    let orderData = {
        orderList: orderList,
        totalPrice: totalPrice
    };

    console.log(orderData);

    $.ajax({
        url: "/dugout/order/insertOrder",
        method: "post",
        contentType: "application/json",
        data: JSON.stringify(orderData),
        success: function(data) {
            $('.modal').modal('show');
        }
    });
}
