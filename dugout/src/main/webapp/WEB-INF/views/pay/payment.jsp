<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 페이지</title>
  <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
   <link href="${pageContext.request.contextPath}/resources/css/common/modal.css" rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/pay/payment.css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<form action="submit_form.php" method="post">
		<div class="section">
			<div class="section-title">구매자 정보</div>

			<div class="form-group">
				<label for="address">주소</label> <input type="text" id="address"
					name="address" value="${user.userAddress}">
			</div>

			<div class="form-group">
				<label for="name">이름</label> <input type="text" id="name"
					name="name" value="${user.userName}">
			</div>

			<div class="form-group">
				<label for="phone">전화번호</label> <input type="text" id="phone"
					name="phone" value="${user.userPhone}">
			</div>
		</div>

		<div class="section">
			<div class="section-title">주문 정보</div>
			<c:forEach items="${orderList}" var="item">
				<div class="product-wrapper">
					<img
						src="${pageContext.request.contextPath}/goods/getImg?goodsId=${item.goodsId}"
						alt="Product Image" class="product-image">
					<div class="product-details" data-goods-id="${item.goodsId}">
						<div class="product-name">${item.goodsName}</div>
						<div class="product-options">${item.goodsQuantity}개</div>
						<div class="product-price">
							<fmt:formatNumber value="${item.goodsPrice}" pattern="#,###" />
							원
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div class="section">
			<div class="section-title">최종 주문정보</div>
			<div class="info-row">
				<span class="info-label">즉시 구매가</span> <span class="info-value"><fmt:formatNumber
													value="${totalPrice}"
													pattern="#,###,###"></fmt:formatNumber>
												원</span>
			</div>
			<div class="total-row">
				<span class="total-label">총 결제금액</span> <span class="total-value"><fmt:formatNumber
													value="${totalPrice}"
													pattern="#,###,###"></fmt:formatNumber>
												원</span>
			</div>
		</div>
		<a onclick="insertOrder()" style="text-decoration: none;">
			<div class="pay-button">결제하기</div>
		</a>
	</form>

	<div class="modal" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">결제</h5>
				</div>
				<div class="modal-body">
					<p>주문이 완료되었습니다.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script>
	
	$(document).ready(function(){
		$(".btn-secondary").click(function(){
				
			location.href = "${pageContext.request.contextPath}/"

		})

	})
		function insertOrder() {
				let orderList = [];
				let totalPrice = 0;

				$(".product-wrapper").each(function() {
					let goodsId = $(this).find(".product-details").data("goods-id");
					let goodsName = $(this).find(".product-name").text();
					let goodsQuantity = parseInt($(this).find(".product-options").text().replace('개', ''));
					let goodsPrice = parseInt($(this).find(".product-price").text().replace('원', '').replace(/,/g, ''));
					
					
					totalPrice += goodsQuantity * goodsPrice;
					
					orderList.push({
						goodsId: goodsId,
						goodsName: goodsName,
						goodsQuantity: goodsQuantity,
						goodsPrice: goodsPrice
					});
				});

				let orderData = {
					orderList: orderList,
					totalPrice: totalPrice
				};
				
				console.log(orderData);

			$.ajax({
				url : "${pageContext.request.contextPath}/order/insertOrder",
				method : "post",
				contentType : "application/json",
				data : JSON.stringify(orderData),
				success : function(data) {
					$('.modal').modal('show');
				}

			})

		}
	</script>

</body>
</html>