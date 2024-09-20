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
	});
