<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품 상세 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="ProductDetails.css" />

</head>
<body>
    <div class="ProductDetailsPage-container">
        <header id="main-header"></header>
        <div><hr style="color: black;"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a>Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">기아</li>
                        </ol>
                    </nav>

                    <div class="product-image">
                        <img src="../common/image/product/레플리카아이콘유니폼.jpg" alt="상품 이미지" class="img-fluid" />
                    </div>
                </div>

                
                <div class="col-md-6">
                    <div class="product-container">
                        <div class="product-detail">
                            <h2 class="product-title">기아 레플리카 아이콘 유니폼</h2>
                            <p class="product-price">53,000 <span>원</span></p>
                        </div>
                        <div class="product-options">
                            <select class="size-select">
                                <option>모든 사이즈</option>
                                <option>85</option>
                                <option>90</option>
                                <option>95</option>
                                <option>100</option>
                                <option>105</option>
                                <option>110</option>
                            </select>

                            <div class="quantity-control">
                                <label for="quantity" class="total">총 수량</label>
                                <div class="quantity-buttons">
                                    <button type="button" class="decrease">-</button>
                                    <input type="text" id="quantity" class="quantity-input" value="1" readonly />
                                    <button type="button" class="increase">+</button>
                                </div>
                            </div>
                        </div>

                        <div class="product-actions">
                            <button type="button" class="like-btn">찜</button>
                            <button type="button" class="shoppingcart-btn">장바구니</button>
                        </div>

                        <button type="button" class="purchase-btn">구매하기</button>
                    </div>
                </div>
            </div>
            <div class="productdetail-img" >
                <img src="../common/image/product/타이거즈-레플리카아이콘유니폼-상세.jpg">
            </div>
        </div>
        <footer id="main-footer"></footer>
    </div>
<script src="ProductDetails.js"> </script>
</body>
</html>
