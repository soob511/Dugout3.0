<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>구매 내역</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/mypage/orderList.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/common/header.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/common/footer.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/mypage/orderList.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<hr>
	<div class="main-container">
		<%@ include file="/WEB-INF/views/mypage/mypageMenu.jsp"%>

		<div class="purchase-history">
			<div class="orderList-box">
				<h2 class="orderList-title">구매 내역</h2>
			</div>

			<div class="purchase-period-buttons">
				<a href="${pageContext.request.contextPath}/order/orderList">
					<button
						class="recent6-month-btn 
            			${param.recentMonth == null || param.recentMonth == '6' ? 'active' : ''}">최신6개월</button></a> <a
					href="${pageContext.request.contextPath}/order/orderList?recentMonth=12">
					<button class="recent1-year-btn ${param.recentMonth == '12' ? 'active' : ''}">최신1년</button></a>
			</div>


			<c:forEach items="${orderList}" var="item" varStatus="status">
				<div class="accordion accordion-flush" id="accordionFlushExample">
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#flush-collapse${item.orderId}"
								aria-expanded="false"
								aria-controls="flush-collapse${item.orderId}">
								<div style="width: 830px;">
									<div class="purchase-item-details">
										<div class="purchase-date">[ No. ${item.orderId} ]</div>
										<div class="d-flex justify-content-between">
											<div class="purchase-item-price mt-2 me-5">
												주문일자 :
												<fmt:formatDate value="${item.orderDate}"
													pattern="yyyy.MM.dd." />
											</div>
											<div class="mb-0 btn btn-dark btn-sm">
												<c:choose>
													<c:when test="${item.orderStatus == 0}">배송대기</c:when>
													<c:when test="${item.orderStatus == 1}">배송중</c:when>
													<c:when test="${item.orderStatus == 2}">배송완료</c:when>
													<c:otherwise>상태 없음</c:otherwise>
												</c:choose>
											</div>
										</div>
										<div class="purchase-item-price">
											주문금액 : 총
											<fmt:formatNumber value="${item.orderTotalPrice}"
												pattern="#,###,###"></fmt:formatNumber>
											원
										</div>
									</div>
								</div>
							</button>
						</h2>
						<div id="flush-collapse${item.orderId}"
							class="accordion-collapse collapse">
							<div class="accordion-body">

								<c:forEach items="${orderItemList[status.index]}" var="order">
									<div class="purchase-item">
										<img
											src="${pageContext.request.contextPath}/goods/getImg?goodsId=${order.goodsId}">
										<div class="purchase-item-details">
											<div class="purchase-date">[${order.goodsTeam}]
												${order.goodsName}</div>
											<div class="purchase-item-price">
												<fmt:formatNumber value="${order.orderItemPrice}"
													pattern="#,###,###"></fmt:formatNumber>
												원 / ${order.orderItemCount}개
											</div>
											<div class="purchase-item-price">
												<fmt:formatNumber
													value="${order.orderItemPrice * order.orderItemCount}"
													pattern="#,###,###"></fmt:formatNumber>
												원
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script>
    $(document).ready(function() {
        $('.purchase-period-buttons button').on('click', function() {
            
            $('.purchase-period-buttons button').removeClass('active');

            $(this).addClass('active');
        });
    });
</script>
</body>
</html>
