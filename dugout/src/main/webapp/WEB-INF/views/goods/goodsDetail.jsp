<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품 상세 페이지</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/goods/goodsDetail.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/goods/goodsDetail.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <link href="${pageContext.request.contextPath}/resources/css/common/modal.css" rel="stylesheet" />
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    <hr />
    <div class="goodsDetail-container d-flex">
        <div class="col-md-7">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a>Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">${goods.goodsTeam}</li>
                </ol>
            </nav>
            <div class="product-image">
                <img src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}" />
            </div>
            <div class="productdetail-img">
                <img src="${pageContext.request.contextPath}/goods/getDetailImg?goodsId=${goods.goodsId}" />
            </div>
        </div>
        <div class="product-container">
            <div class="product-box">
                <div class="product-detail">
                    <p>${goods.goodsTeam}</p>
                    <h2 class="product-title">${goods.goodsName}</h2>
                </div>
                <hr />
                <div class="quantity-control">
                    <span class="sm-text sale-price">판매가</span>
                    <p class="product-price">
                        <span><fmt:formatNumber value="${goods.goodsPrice}" pattern="###,###" /></span> <span>원</span>
                    </p>
                </div>
                <div class="product-options">
                    <div class="quantity-control">
                        <label for="quantity" class="total sm-text">총수량</label>
                        <div class="quantity-buttons">
                            <button type="button" class="decrease" onclick="decrease(this, ${goods.goodsPrice})">-</button>
                            <input type="text" id="quantity" class="quantity-input" value="1" readonly />
                            <button type="button" class="increase" onclick="increase(this, ${goods.goodsPrice});">+</button>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="d-flex quantity-control mt-3">
                    <span class="sm-text">구매 예상금액</span>
                    <p class="product-price">
                        <span id="total-price"><fmt:formatNumber value="${goods.goodsPrice}" pattern="###,###" /></span> <span>원</span>
                    </p>
                </div>
                <div class="product-actions d-flex">
                    <button type="button" class="like-btn col-2">
                        <i class="bi bi-heart" data-goods-id="${goods.goodsId}"></i>
                    </button>
                    <c:if test="${goods.goodsStatus != 0}">
                        <button class="shoppingcart-btn col-5" onclick="addCart(${goods.goodsId})">장바구니</button>
                    </c:if>
                    <c:if test="${goods.goodsStatus == 0}">
                        <button class="shoppingcart-btn col-5" disabled>장바구니</button>
                    </c:if>
                    <c:if test="${goods.goodsStatus != 0}">
                        <button type="button" class="purchase-btn col-5" onclick="orderItem(${goods.goodsId},'${goods.goodsName}',${goods.goodsPrice})">구매하기</button>
                    </c:if>
                    <c:if test="${goods.goodsStatus == 0}">
                        <button type="button" class="purchase-btn col-5" id="soldOutBtn" disabled>SOLD OUT</button>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" id="modalLike">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">관심상품 추가</h5>
                </div>
                <div class="modal-body" id="modalLike-body">
                    <p></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" id="modalCart">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">장바구니 추가</h5>
                </div>
                <div class="modal-body" id="modalCart-body">
                    <p></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="modalCartBtn" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
