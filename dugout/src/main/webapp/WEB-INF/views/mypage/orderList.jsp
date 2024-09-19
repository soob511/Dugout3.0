<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>구매 내역</title>
	<link	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/mypage/orderList.js"></script>
		<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/mypage/orderList.css"  rel="stylesheet" />
	</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
    <hr>
	<div class="main-container">
	    <%@ include file="/WEB-INF/views/mypage/mypageMenu.jsp" %>
	    
		<div class="purchase-history">
			<div class="orderList-box">
				<h2 class="orderList-title">구매 내역</h2>
			</div>
			
			<div class="purchase-period-buttons">
				<button class="recent6-month-btn active">최신 6개월</button>
				<button class="recent1-year-btn">최신 1년</button>
			</div>
			
			<div class="purchase-item">
				<img src="../common/image/product/호걸이망토담요.jpg" alt="상품 이미지">
				<div class="purchase-item-details">
					<div class="purchase-date">2024년 08월 06일</div>
					<div>[KIA타이거즈]호걸이 망토담요</div>
					<div class="purchase-item-price">33,000원</div>
				</div>
			</div>
			<div class="purchase-item">
				<img src="../common/image/product/어센틱원정유니폼오더.jpg" alt="상품 이미지">
				<div class="purchase-item-details">
					<div  class="purchase-date" >2024년 06월 23일</div>
					<div>[두산베어스]어센틱 원정 유니폼 오더</div>
					<div class="purchase-item-price">90,000원</div>
				</div>
			</div>
			<div class="purchase-item">
				<img src="../common/image/product/레플리카아이콘유니폼.jpg" alt="상품 이미지">
				<div class="purchase-item-details">
					<div  class="purchase-date">2024년 05월 01일</div>
					<div>[KIA타이거즈]레플리카 아이콘 유니폼</div>
					<div class="purchase-item-price">69000원</div>
				</div>
			</div>
			<div class="purchase-item">
				<img src="../common/image/product/로고볼.jpg" alt="상품 이미지">
				<div class="purchase-item-details">
				<div  class="purchase-date">2024년 04월 11일</div>
				<div>[NC다이노스]로고볼</div>
				<div class="purchase-item-price">5000원</div>
				</div>
			</div>
		</div>
    </div>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>