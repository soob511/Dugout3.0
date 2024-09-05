
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="Payment.css">
</head>
<body>
	<header id="main-header"></header>
	<form action="submit_form.php" method="post">
		<div class="section">
			<div class="section-title">구매자 정보</div>

			<div class="form-group">
				<label for="address">주소</label> <input type="text" id="address"
					name="address" value="서울 종로구 창경궁로 254 7층">
			</div>

			<div class="form-group">
				<label for="name">이름</label> <input type="text" id="name"
					name="name" value="김코사">
			</div>

			<div class="form-group">
				<label for="phone">전화번호</label> <input type="text" id="phone"
					name="phone" value="01098761234">
			</div>
		</div>

		<div class="section">
			<div class="section-title">주문 정보</div>
			<div class="product-wrapper">
				<img src="../common/image/teamLogo/doosanTeamLogo.png"
					alt="Product Image" class="product-image">
				<div class="product-details">
					<div class="product-name">두산 어웨이 어센틱 유니폼</div>
					<div class="product-options">사이즈: M &nbsp;&nbsp;&nbsp; 수량: 2개</div>
					<div class="product-price">89,000원</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="section-title">최종 주문정보</div>
			<div class="info-row">
				<span class="info-label">즉시 구매가</span> <span class="info-value">89,000원</span>
			</div>
			<div class="total-row">
				<span class="total-label">총 결제금액</span> <span class="total-value">89,000원</span>
			</div>
		</div>
		<a href="../main/Main.html" style="text-decoration: none;">
			<div class="pay-button">결제하기</div>
		</a>
	</form>
	<footer id="main-footer"></footer>

	<script>
		$(document).ready(function() {
			$("#main-header").load("../main/Header.html");
			$("#main-footer").load("../main/Footer.html");
		});
	</script>
</body>
</html>