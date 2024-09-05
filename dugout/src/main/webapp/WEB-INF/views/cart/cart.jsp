
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script src="../common/jquery/jquery.min.js"></script>
<link href="../common/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="../common/bootstrap/bootstrap.bundle.min.js"></script>
<link href="CartForm.css" rel="stylesheet">
</head>
<body id="cart-body">
	<header></header>
	<hr>
	<main id="cart-main">
		<section id="title">
			<span>장바구니</span>
		</section>
		<article>
			<div class="cart-box">
				<input class="form-check-input checkbox" type="checkbox" value=""id="flexCheckDefault-all">
				<label class="form-check-label all"for="flexCheckDefault">전체</label>
				<button type="button" value="삭제" id="btnDelete">삭제</button>
				<div class="cart-list">
					<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault">
					<label class="form-check-label"for="flexCheckDefault"></label>
					<a href="#"><img src="../common/image/product/[KIA타이거즈] 마킹키트 (홈) (개별판매용).jpg"></a>		
					<div class="box">
					<span id="product-name">[KIA타이거즈] 마킹키트 (홈) (개별판매용)</span>	<br>						
					<span id="product-price">25,000원</span><br>	
					<button type="button" class="btn btn-light minus">-</button>
					<button id="boxbox" type="button" class="btn btn-light cnt">1</button>
					<button type="button" class="btn btn-light plus">+</button>	
					</div>			
				</div>
				
				<div class="cart-list">
					<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault">
					<label class="form-check-label"for="flexCheckDefault"></label>
					<a href="#"><img src="../common/image/product/[삼성라이온즈] 레플리카 원정 유니폼.png"></a>		
					<div class="box">
					<span id="product-name">[삼성라이온즈] 레플리카 원정 유니폼</span>	<br>						
					<span id="product-price">79,000원</span><br>	
					<button type="button" class="btn btn-light minus">-</button>
					<button id="boxbox" type="button" class="btn btn-light cnt">1</button>
					<button type="button" class="btn btn-light plus">+</button>	
					</div>			
				</div>
				<div class="cart-list">
					<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault">
					<label class="form-check-label"for="flexCheckDefault"></label>
					<a href="#"><img src="../common/image/product/[한화이글스]블랙 에어포스 레플리카 유니폼.png"></a>		
					<div class="box">
					<span id="product-name">[한화이글스]블랙 에어포스 레플리카 유니폼</span>	<br>						
					<span id="product-price">65,000원</span><br>	
					<button type="button" class="btn btn-light minus">-</button>
					<button id="boxbox" type="button" class="btn btn-light cnt">1</button>
					<button type="button" class="btn btn-light plus">+</button>	
					</div>			
				</div>
				
				<div class="cart-list">
					<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault">
					<label class="form-check-label"for="flexCheckDefault"></label>		
					<a href="#"><img src="../common/image/product/[두산베어스] 오리지널 벨크로 캡.jpg"></a>		
					<div class="box">
					<span id="product-name">[두산베어스] 오리지널 벨크로 캡</span>	<br>						
					<span id="product-price">25,000원</span><br>	
					<button type="button" class="btn btn-light minus">-</button>
					<button id="boxbox" type="button" class="btn btn-light cnt">1</button>
					<button type="button" class="btn btn-light plus">+</button>	
					</div>			
				</div>
					<hr>
		</article>
		<aside class="pay-side">
			<div class="pay-form">
				<div class="product-call">
				<span>주문상품</span>
				</div>
				<hr>
				<div class="money-kind">
					<div class="products-pay">
					<span>총 상품 가격</span>
					<span>194,000원</span>
					</div>
					<div class="delivery-pay">
					<span>총 배송비</span>
					<span>무료</span>
					</div>
				</div>
				<hr>
				<div class="total-money">
					<span>결제예정금액</span>
					<span>194,000원</span>
				</div>
			</div>
			<div class="pay-all">
				<button type="submit" id="pay-all">전체상품주문</button>
			</div>
			<div class="pay-select">
				<button type="submit" id="pay-select">선택상품주문</button>
			</div>
		</aside>
	</main>
	<footer></footer>
<script>
$(document).ready(function(){
$("#pay-all").click(function(){
		location.href ="../payment/Payment.html";
	})
$("#pay-select").click(function(){
		location.href ="../payment/Payment.html";
})
})
$(document).ready(function () {
	$("footer").load("../main/Footer.html");
	$("header").load("../main/Header.html");

	$(".plus").click(function(){
		let productPlus = $(this).prev(".cnt");
		let cartCount = parseInt(productPlus.text());
		productPlus.text(cartCount + 1); 
	})
	$(".minus").click(function(){
		let productMinus = $(this).next(".cnt");
		let cartCount = parseInt(productMinus.text());
	if (cartCount > 1) {
		productMinus.text(cartCount - 1);
	}
	});	
	 $("#flexCheckDefault-all").on("click", function() {
		console.log("클릭됨");
        $(".cart-list .form-check-input").prop("checked", $(this).prop("checked"));
    });

    $(".cart-list .form-check-input").on("click", function() {
        let allChecked = $(".cart-list .form-check-input").length === $(".cart-list .form-check-input:checked").length;
        $("#flexCheckDefault-all").prop("checked", allChecked);
    });
}); 
	</script>
</body>
</html>