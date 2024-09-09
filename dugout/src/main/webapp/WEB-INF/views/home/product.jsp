<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/css/home/product.css"  rel="stylesheet" />
<section class="section-top">
	<div class="d-flex align-items-center">
		<div class="col-6">
			<p class="product count">
				<span>315</span>개의 상품 검색
			</p>
		</div>
		<div class="col-6 d-flex justify-content-end">
			<div class="me-3">
				<button type="button" class="btn dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false">
					상품정렬</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#"><i
							class="bi bi-check2"></i>가격 높은 순</a></li>
					<li><a class="dropdown-item" href="#"><i
							class="bi bi-check2"></i>가격 낮은 순</a></li>
					<li><a class="dropdown-item" href="#"><i
							class="bi bi-check2"></i>많이 팔린 순</a></li>
					<li><a class="dropdown-item" href="#"><i
							class="bi bi-check2"></i>인기 순</a></li>
					<li><a class="dropdown-item" href="#"><i
							class="bi bi-check2"></i>최신 순</a></li>
				</ul>
			</div>
			<div>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder=""
						aria-label="Search" />
					<button class="search-btn" type="submit">
						<i class="bi bi-search"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
</section>

	<div class="container">
		<div class="row d-flex justify-content-between">
		<c:forEach items="${list}" var ="goods">
			<div class="card col-3" style="width: 300px; height: 500px">
				<a href="${pageContext.request.contextPath}/resource"><img
					class="card-img-top"
					src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}"
					height="150" /></a> <i class="bi bi-heart"></i>
				<div class="card-body">
					<p class="card-title">[${goods.goodsTeam}]${goods.goodsName}</p>
					<p class="card-text">${goods.goodsName}</p>
					<p class="card-text2">${goods.goodsPrice}</p>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>

<nav aria-label="..." class="d-flex justify-content-center">
	<ul class="pagination">
		<li class="page-item active"><a class="page-link">1</a></li>
		<li class="page-item"><a class="page-link">2</a></li>
		<li class="page-item"><a class="page-link">3</a></li>
	</ul>
</nav>
