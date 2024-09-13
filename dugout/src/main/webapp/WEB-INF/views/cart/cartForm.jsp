<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<!-- <script src="../common/jquery/jquery.min.js"></script> -->
<!-- <script src="../common/bootstrap/bootstrap.bundle.min.js"></script> -->
<link href="../common/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/cartForm.css"  rel="stylesheet" />
	
<script src="CartForm.js"></script> 
</head>
<body id="cart-body">
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
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
					<span id="product-price" data-price="25000">25,000원</span><br>	
					<button type="button" class="btn btn-light minus">-</button>
					<button id="boxbox" type="button" class="btn btn-light cnt">1</button>
					<button type="button" class="btn btn-light plus">+</button>	
					</div>			
				</div>
				
				<div class="cart-list">
					<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault" class="checkboxes">
					<label class="form-check-label"for="flexCheckDefault"></label>
					<a href="#"><img src="../common/image/product/[삼성라이온즈] 레플리카 원정 유니폼.png"></a>		
					<div class="box">
					<span id="product-name">[삼성라이온즈] 레플리카 원정 유니폼</span>	<br>						
					<span id="product-price" data-price="79000">79,000원</span><br>	
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
					<span id="product-price" data-price="65000">65,000원</span><br>	
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
					<span id="product-price" data-price="25000">25,000원</span><br>	
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
					<span id="total-price">0원</span>
					</div>
					<div class="delivery-pay">
					<span>총 배송비</span>
					<span>무료</span>
					</div>
				</div>
				<hr>
				<div class="total-money">
					<span>결제예정금액</span>
					<span id="pay-price">0원</span>
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
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script></script>
</body>
</html>