<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="${pageContext.request.contextPath}/resources/css/common/nav.css" rel="stylesheet" />

<nav>
    <div class="navbar-container d-flex justify-content-between align-items-center">
        <div class="dropdown me-3">
            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"  data-bs-toggle="dropdown" aria-expanded="true">
                <i class="bi bi-list"></i> 카테고리
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/category?val=1">유니폼</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/category?val=2">의류</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/category?val=3">모자</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/category?val=4">응원용품</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/category?val=5">잡화</a></li>
            </ul>
        </div>

        <div class="d-flex align-items-center">
            <a href="${pageContext.request.contextPath}/">전체상품</a>
            <a href="${pageContext.request.contextPath}/goods/newGoods">신상품</a>
            <a href="${pageContext.request.contextPath}/goods/recommendGoods">추천상품</a>
            <a href="${pageContext.request.contextPath}/goods/bestGoods">BEST상품</a>
        </div>
        
        <div>
            <form class="d-flex" method="post" action="${pageContext.request.contextPath}/goods/searchGoods">
                <input class="form-control me-2" type="search" placeholder="검색" aria-label="Search" name="inputKeyword" />
                <button class="search-btn" type="submit">
                    <i class="bi bi-search"></i>
                </button>
            </form>
        </div>
    </div>
</nav>
