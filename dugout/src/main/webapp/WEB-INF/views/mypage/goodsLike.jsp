<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>관심 목록</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
		rel="stylesheet">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/mypage/goodsLike.js"></script>
		<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/mypage/goodsLike.css"  rel="stylesheet" />
	</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<hr>
	<div class="main-container">
	    <%@ include file="/WEB-INF/views/mypage/mypageMenu.jsp" %>
		<div id="heartlist-container">
			<section>
				<div class="heart-title-box">
					<h2 class="product-insert-title">관심 목록</h2>
					<button type="button" class="heart-delete-all">전체 삭제</button>
				</div>
			</section>
			<section class="heart-list-section">
				<div class="heart-list">
					<div class="heart-imgbox">
						<a href="../productDetails/PoductDetails.html"><img
							src="../common/image/product/[한화이글스]블랙 에어포스 레플리카 유니폼.png"
							class="heart-img"></a>
					</div>
					<div class="heart-info">
						<span>[한화이글스]블랙 에어포스 레플리카 유니폼</span> <br> <span>65,000원</span>
					</div>
				</div>
				<div class="heart-btns">
					<div class="cart-to">
						<button type="submit" class="btn-to-cart">장바구니 담기</button>
					</div>
					<div class="heart-delete">
						<button type="submit" class="btn-heart-delete">삭제</button>
					</div>
				</div>
			</section>
			<section class="heart-list-section">
				<div class="heart-list">
					<div class="heart-imgbox">
						<a href="../productDetails/PoductDetails.html"><img
							src="../common/image/product/[한화이글스]썸머 블루 원정 레플리카 유니폼.png"
							class="heart-img"></a>
					</div>
					<div class="heart-info">
						<span>[한화이글스]썸머 블루 원정 레플리카 유니폼</span> <br> <span>79,000원</span>
					</div>
				</div>
				<div class="heart-btns">
					<div class="cart-to">
						<button type="submit" class="btn-to-cart">장바구니 담기</button>
					</div>
					<div class="heart-delete">
						<button type="submit" class="btn-heart-delete">삭제</button>
					</div>
				</div>
			</section>
			<section class="heart-list-section">
				<div class="heart-list">
					<div class="heart-imgbox">
						<a href="../productDetails/PoductDetails.html"><img
							src="../common/image/product/[키움히어로즈] 스페셜 유니폼.png"
							class="heart-img"></a>
					</div>
					<div class="heart-info">
						<span>[키움히어로즈] 스페셜 유니폼</span> <br> <span>59,000원</span>
					</div>
				</div>
				<div class="heart-btns">
					<div class="cart-to">
						<button type="submit" class="btn-to-cart">장바구니 담기</button>
					</div>
					<div class="heart-delete">
						<button type="submit" class="btn-heart-delete">삭제</button>
					</div>
				</div>
			</section>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>