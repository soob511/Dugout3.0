<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<link href="${pageContext.request.contextPath}/resources/css/common/nav.css"  rel="stylesheet" />
<nav>
<div class="nav-container d-flex justify-content-evenly">
	  <a href="${pageContext.request.contextPath}/">전체상품</a>
	  <a href="${pageContext.request.contextPath}/goods/newGoods">신상품</a>
	  <a href="${pageContext.request.contextPath}/goods/recommendGoods">추천상품</a>
	  <a href="${pageContext.request.contextPath}/goods/bestGoods">BEST상품</a>
	  <div>
		<form class="d-flex" method="post"
			action="${pageContext.request.contextPath}/goods/searchGoods">
			<input class="form-control me-2" type="search" placeholder=""
					  aria-label="Search" name="inputKeyword" />
			<button class="search-btn" type="submit">
				<i class="bi bi-search"></i>
			</button>
		</form>
	</div>
</div>
</nav>