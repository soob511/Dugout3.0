$(document).ready(function() {
    $(".bi-heart, .bi-heart-fill").each(function() {
        let goodsId = $(this).data("goods-id");
        $.ajax({
            url: "/dugout/goodsLike/checkLike",
            method: "POST",
            data: { goodsId: goodsId },
            success: function(data) {
                if (data) {
                    $("i[data-goods-id='" + goodsId + "']").removeClass("bi-heart").addClass("bi-heart-fill");
                } else {
                    $("i[data-goods-id='" + goodsId + "']").removeClass("bi-heart-fill").addClass("bi-heart");
                }
            }
        });
    });
    
    $("#modalCartBtn").click(function(){
        location.href = "/dugout/goods/goodsDetail?goodsId=" + goodsId;
    });
});

function increase(button, goodsPrice) {
	 let quantityPlus = $(button).prev(".quantity-input");
     let productCount = parseInt(quantityPlus.val());
     quantityPlus.val(productCount + 1);
     let totalPrice =goodsPrice * $("#quantity").val();
     $("#total-price").text(totalPrice.toLocaleString());
}

function decrease(button, goodsPrice) {
	  let quantityMinus = $(button).next(".quantity-input");
      let productCount = parseInt(quantityMinus.val());
      if (productCount > 1) {
    	  quantityMinus.val(productCount - 1); 
      }
      let totalPrice = goodsPrice * $("#quantity").val();
      $("#total-price").text(totalPrice.toLocaleString());
}

$(document).on("click", ".bi-heart, .bi-heart-fill", function () {
	  $(this).toggleClass("bi-heart bi-heart-fill");
	  

	  let goodsId = $(this).data("goods-id");
	  
	  let isLiked = $(this).hasClass("bi-heart-fill");
	  
	  $.ajax({
		  url : "/dugout/goodsLike/like",
		  method: "post",
		  data:   {
			  goodsId: goodsId,
			  isLiked: isLiked		  
		  },
		  success:function(data){
			  if(!data){
				  location.href = "/dugout/user/loginForm";
			  }else{ 
				  if(isLiked){
					  $("#modalLike-body p").text("관심목록에 등록되었습니다.");		
					  $('#modalLike').modal('show');		  
				  }else{
					  $("#modalLike-body p").text("관심목록에서 삭제 되었습니다.");		
					  $('#modalLike').modal('show');		  
				  }
			   }
		  }
	  })
	  
	});

function addCart(id) {
    let goodsId = id;
    let cartCount = $("#quantity").val();
    const params = {goodsId, cartCount};
    $.ajax({
        url: "/dugout/cart/addCart",
        method: "post",
        data: params,
        success: function(data) {
            if(data == false) {
                location.href = "/dugout/user/loginForm";
            } else {
                $("#modalCart-body p").text("장바구니에 담겼습니다.");
                $('#modalCart').modal('show');
            }
        }
    });
}

function orderItem(id,name,price) {
    let orderList = [{
        goodsId: id,
        goodsName: name,
        goodsQuantity: $("#quantity").val(),
        goodsPrice: price
    }];
    let totalPrice = $("#quantity").val() * price;
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
        success: function() {
            location.href = "/dugout/order/payment";
        }
    });
}



