$(document).ready(function () {
    $("#main-header").load("../main/Header.html");
    $("#main-footer").load("../main/Footer.html");
    $(".increase").click(function(){
        let quantityPlus = $(this).prev(".quantity-input");
        let productCount = parseInt(quantityPlus.val());
        quantityPlus.val(productCount + 1);
        
    })
    $(".decrease").click(function(){
        let quantityMinus = $(this).next(".quantity-input");
        let productCount = parseInt(quantityMinus.val());
    if (productCount > 1) {
        quantityMinus.val(productCount - 1);
    }
    });  

    $(".like-btn").click(function(){
        alert("관심목록에 담겼습니다.");
    })

    $(".shoppingcart-btn").click(function(){
        alert("장바구니에 담겼습니다.");
    })

    $(".purchase-btn").click(function(){
        location.href="../payment/Payment.html";
    })

});