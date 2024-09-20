<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
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
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
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
			
			<c:forEach items="${likeList}" var="item">			
				<section class="heart-list-section">
					<div class="heart-list">
						<div class="heart-imgbox">
							<a href="${pageContext.request.contextPath}/goods/goodsDetail?goodsId=${item.goodsId}">
							<img	src="${pageContext.request.contextPath}/goods/getImg?goodsId=${item.goodsId}"
								class="heart-img">
							</a>
						</div>
						<div class="heart-info">
							<span>[${item.goodsTeam}] ${item.goodsName}</span><br>
							<span><fmt:formatNumber value="${item.goodsPrice}" pattern="#,###" />원</span>
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
			</c:forEach>
	<c:if test="${!empty likeList}">			
			<nav aria-label="Page navigation example"
				class="d-flex justify-content-center">
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="?pageNo=1" aria-label="First"> 
						<span aria-hidden="true"><i class="bi bi-chevron-double-left"></i></span>
						</a>
					</li>
	
					<li class="page-item">
						<c:if test="${pager.groupNo>1}">
							<a class="page-link" href="?pageNo=${pager.startPageNo - 1}"	aria-label="Previous"> 
								<span aria-hidden="true"><i class="bi bi-chevron-left"></i></span>
							</a>
						</c:if>
					</li>
	
					<c:forEach begin="${pager.startPageNo}" end="${pager.endPageNo}" step="1" var="i">
						<c:if test="${pager.pageNo == i}">
							<li class="page-item active">
								<a href="?pageNo=${i}"	class="page-link">${i}</a>
							</li>
						</c:if>
						<c:if test="${pager.pageNo != i}">
							<li class="page-item">
								<a href="?pageNo=${i}"	 class="page-link">${i}</a>
							</li>
						</c:if>
					</c:forEach>
	
					<li class="page-item">
						<c:if	test="${pager.groupNo<pager.totalGroupNo}">
							<a class="page-link" href="?pageNo=${pager.endPageNo + 1}"	aria-label="Next">
								<span aria-hidden="true"><i class="bi bi-chevron-right"></i></span>
							</a>
						</c:if>
					</li>
	
					<li class="page-item">
						<a class="page-link" href="?pageNo=${pager.totalPageNo}" aria-label="Last">
							<span aria-hidden="true"><i class="bi bi-chevron-double-right"></i></span>
						</a>
					</li>
				</ul>
			</nav>
		</c:if>

			<c:if test="${empty likeList}">
				<div class="empty-cart">
					<i class="bi bi-exclamation-circle-fill"></i>
					<h5>관심내역이 없습니다.</h5>
				</div>
			</c:if>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>