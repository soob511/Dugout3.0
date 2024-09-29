$(document).ready(function() {
	$.ajax({
		url : "/dugout/cart/cartCount",
		method : "GET",
		success : function(data) {

			if (data) {
				console.log(data);
				$(".cart-badge").text(data);
			} else {
				$(".cart-badge").text(0);
			}
		}
	});
});
