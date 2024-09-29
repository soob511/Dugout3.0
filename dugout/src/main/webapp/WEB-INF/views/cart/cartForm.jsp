<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cart/cartForm.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/cart/cartForm.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/common/modal.css" rel="stylesheet" />
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
                <input class="form-check-input checkbox" type="checkbox" value="" id="flexCheckDefault-all">
                <label class="form-check-label all" for="flexCheckDefault">전체</label>
                <button type="button" value="삭제" id="btnDelete" onclick="deleteItem()">삭제</button>

                <c:forEach items="${cartItems}" var="item">
                    <div class="cart-list">
                        <input class="form-check-input cart-checkbox" type="checkbox" id="flexCheckDefault" data-goods-id="${item.goodsId}">
                        <label class="form-check-label" for="flexCheckDefault"></label>
                        <a href="${pageContext.request.contextPath}/goods/goodsDetail?goodsId=${item.goodsId}">
                            <img src="${pageContext.request.contextPath}/goods/getImg?goodsId=${item.goodsId}">
                        </a>
                        <div class="box">
                            <span id="product-name">[${item.goodsTeam}] ${item.goodsName}</span>
                            <br>
                            <span id="product-price" data-price="${item.goodsPrice}">
                                <fmt:formatNumber value="${item.goodsPrice * item.cartCount}" pattern="#,###" />원
                            </span>
                            <br>
                            <button type="button" class="btn btn-light minus" onclick="minus(this); updateCart(${item.goodsId})">-</button>
                            <input id="boxbox" class="btn btn-light cnt product-quantity ${item.goodsId}" value="${item.cartCount}" />
                            <button type="button" class="btn btn-light plus" onclick="plus(this); updateCart(${item.goodsId})">+</button>
                        </div>
                    </div>
                </c:forEach>

                <c:if test="${empty cartItems}">
                    <div class="empty-cart">
                        <i class="bi bi-exclamation-circle-fill"></i>
                        <h5>장바구니에 담긴 상품이 없습니다.</h5>
                    </div>
                </c:if>
            </div>
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
                <button type="submit" id="pay-all" onclick="allOrderItem()">전체상품주문</button>
            </div>
            <div class="pay-select">
                <button type="submit" id="pay-select" onclick="orderItem()">선택상품주문</button>
            </div>
        </aside>

        <div class="modal" tabindex="-1" id="modalDelete">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">장바구니 삭제</h5>
                    </div>
                    <div class="modal-body" id="modalDelete-body">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" id="modalDeleteBtn" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal" tabindex="-1" id="modalOrder">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상품주문</h5>
                    </div>
                    <div class="modal-body" id="modalOrder-body">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <div style="clear: both;"></div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>