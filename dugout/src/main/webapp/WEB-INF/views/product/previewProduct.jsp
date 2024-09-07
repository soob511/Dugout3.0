<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>상품등록미리보기</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>

    <link href="common/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="common/bootstrap/bootstrap.min.js.map"></script>
    <script src="common/bootstrap/jquery.min.js.map"></script>
    <link rel="stylesheet" href="PreviewProduct.css" />
  </head>
  <body>
    <div class="ProductDetailsPage-container">
      <header id="main-header"></header>
      <div>
        <hr style="color: black" />
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a>Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">
                  국가대표
                </li>
              </ol>
            </nav>

            <div class="product-image">
              <img
                src="../common/image/product/국가대표 1.png"
                alt="상품 이미지"
                class="img-fluid"
              />
            </div>
          </div>

          <div class="col-md-6">
            <div class="product-container">
              <div class="product-detail">
                <h2 class="product-title">국가대표 유니폼</h2>
                <p class="product-price">53,000 <span>원</span></p>
              </div>
              <div class="product-options">
                <select class="size-select">
                  <option>모든 사이즈</option>
                </select>

                <div class="quantity-control">
                  <label for="quantity" class="total">총 수량</label>
                  <div class="quantity-buttons">
                    <button type="button" class="decrease">-</button>
                    <input
                      type="text"
                      id="quantity"
                      class="quantity-input"
                      value="1"
                      readonly
                    />
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
        <div class="productdetail-img">
          <img src="../common/image/product/국가대표 1.1.png" />
        </div>
      </div>
      <footer id="main-footer"></footer>
    </div>
  </body>
</html>
