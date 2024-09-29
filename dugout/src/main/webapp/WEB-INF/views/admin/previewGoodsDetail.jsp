<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품 등록 미리보기</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/goods/goodsDetail.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/goods/goodsDetail.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
    <div class="goodsDetail-container d-flex">
        <div class="col-md-7 mt-5">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a>Home</a></li>
                    <li class="breadcrumb-item active previewGoodsTeam" aria-current="page"></li>
                </ol>
            </nav>
            <div class="product-image">
                <img src="" id="previewMainImg" />
            </div>
            <div class="productdetail-img">
                <img src="" id="previewDetailImg" />
            </div>
        </div>
        <div class="product-container mt-5">
            <div class="product-box">
                <div class="product-detail">
                    <p class="previewGoodsTeam"></p>
                    <h2 class="product-title" id="previewGoodsName"></h2>
                </div>
                <hr>
                <div class="quantity-control">
                    <span class="sm-text sale-price">판매가</span>
                    <p class="product-price previewGoodsPrice"></p>
                </div>
                <div class="product-options">
                    <div class="quantity-control">
                        <label for="quantity" class="total sm-text">총수량</label>
                        <div class="quantity-buttons">
                            <button type="button" class="decrease">-</button>
                            <input type="text" id="quantity" class="quantity-input" value="1" readonly />
                            <button type="button" class="increase">+</button>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="d-flex quantity-control mt-3">
                    <span class="sm-text">구매 예상금액</span>
                    <p class="product-price previewGoodsPrice"></p>
                </div>
                <div class="product-actions d-flex">
                    <button type="button" class="like-btn col-2"><i class="bi bi-heart"></i></button>
                    <button class="shoppingcart-btn col-5">장바구니</button>
                    <button type="button" class="purchase-btn col-5">구매하기</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
