<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품 상세 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/goods/goodsDetail.css"  rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/goods/goodsDetail.js"></script>
</head>
<body>
       <jsp:include page="/WEB-INF/views/common/header.jsp" /> 
    <div class="ProductDetailsPage-container">
        <div><hr style="color: black;"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a>Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">${goods.goodsTeam}</li>
                        </ol>
                    </nav>

                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}" alt="상품 이미지" class="img-fluid" />
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="product-container">
                        <div class="product-detail">
                            <h2 class="product-title">${goods.goodsName}</h2>
                            <p class="product-price">${goods.goodsPrice}<span>원</span></p>
                        </div>
                        <div class="product-options">
                            <div class="quantity-control">
                                <label for="quantity" class="total">총 수량</label>
                                <div class="quantity-buttons">
                                    <button type="button" class="decrease">-</button>
                                    <input type="text" id="quantity" class="quantity-input" value="1" readonly />
                                    <button type="button" class="increase">+</button>
                                </div>
                            </div>
                        </div>
					<div class = "product-actions d-flex">
						<button type="button" class="like-btn col-5">찜</button>
						<button class="shoppingcart-btn col-5" onclick="addCart()">장바구니</button>
					</div>
					<button type="button" class="purchase-btn col-12">구매하기</button>
                    </div>
                </div>
            </div>
            <div class="productdetail-img" >
                <img src="${pageContext.request.contextPath}/goods/getDetailImg?goodsId=${goods.goodsId}">
            </div>
        </div>
        <script>
        	function addCart() {
    			let goodsId = ${goods.goodsId};
    			let cartCount = $("#quantity").val();
    	
    			const params = {goodsId, cartCount};
    			
    			$.ajax({
    				url: "${pageContext.request.contextPath}/cart/addCart",
    				method: "post",
    		        data: params,
    				success: function(data) {
    					let url = `${pageContext.request.contextPath}/goods/goodsDetail?goodsId=${goods.goodsId}`;
    					location.href = url;
    				}
    			});
        	}
        </script>
       <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    </div>
</body>
</html>
