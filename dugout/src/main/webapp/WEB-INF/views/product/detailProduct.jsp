
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품 상세 페이지</title>
      <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
      <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="../resources/css/detailProduct.css" />

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
                        <img src="../resources/image/product/레플리카아이콘유니폼.jpg" alt="상품 이미지" class="img-fluid" />
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
                <img src="../resources/image/product/타이거즈-레플리카아이콘유니폼-상세.jpg">
            </div>
        </div>
        <footer id="main-footer"></footer>
    </div>
<script>
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
</script>
</body>
</html>
