<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>추천상품</title>

     <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" />
	<link href="${pageContext.request.contextPath}/resources/css/goods/goodsTotal.css"  rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/js/home/goods.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common/modal.css"  rel="stylesheet" />
  </head>
  <body>
    	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	   <jsp:include page="/WEB-INF/views/common/nav.jsp" />
	   <hr>
    <nav>
    </nav>
    <section class="section-top">
	<div class="d-flex align-items-center">
		<div class="col-6">
			<p class="product count">
				<span>${limitRows}</span>개의 상품 검색
			</p>
		</div>
		<div class="col-6 d-flex justify-content-end">
			<div class="dropdown me-3">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="true">상품정렬</button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingGoods?kind=rec&sort=가격높은순">가격 높은 순</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingGoods?kind=rec&sort=가격낮은순">가격 낮은 순</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingGoods?kind=rec&sort=많이팔린순">많이 팔린 순</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingGoods?kind=rec&sort=인기순">인기 순</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingGoods?kind=rec&sort=최신순">최신 순</a></li>
                </ul>
            </div>
		</div>
	</div>
</section>


		<div class="container d-flex justify-content-center">
			<div class="row d-flex justify-content-start gap-4">
				<c:forEach items="${list}" var="goods">
					<div class="card col-3" style="width: 300px; height: 500px">
						<a href="${pageContext.request.contextPath}/goods/goodsDetail?goodsId=${goods.goodsId}"><img
							class="card-img-top" id="card-img"
							src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}"
							height="150" /></a> <i class="bi bi-heart" data-goods-id="${goods.goodsId}"></i>
						<div class="card-body">
							<p class="card-title">[${goods.goodsTeam}] ${goods.goodsName}</p>
							<p class="card-text">${goods.goodsCategory}</p>
							<p class="card-text2"><span><fmt:formatNumber value="${goods.goodsPrice}"
								pattern="###,###" /></span> <span>원</span></p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="?pageNo=1&kind=${param.kind}&sort=${param.sort}" aria-label="First">
                    <span aria-hidden="true"><i class="bi bi-chevron-double-left"></i></span>
                </a>
            </li>
            <li class="page-item">
                <c:if test="${pager.groupNo > 1}">
                    <a class="page-link" href="?pageNo=${pager.startPageNo - 1}&kind=${param.kind}&sort=${param.sort}" aria-label="Previous">
                        <span aria-hidden="true"><i class="bi bi-chevron-left"></i></span>
                    </a>
                </c:if>
            </li>
            <c:forEach begin="${pager.startPageNo}" end="${pager.endPageNo}" step="1" var="i">
                <li class="page-item <c:if test="${pager.pageNo == i}">active</c:if>">
                    <a href="?pageNo=${i}&kind=${param.kind}&sort=${param.sort}" class="page-link">${i}</a>
                </li>
            </c:forEach>
            <li class="page-item">
                <c:if test="${pager.groupNo < pager.totalGroupNo}">
                    <a class="page-link" href="?pageNo=${pager.endPageNo + 1}&kind=${param.kind}&sort=${param.sort}" aria-label="Next">
                        <span aria-hidden="true"><i class="bi bi-chevron-right"></i></span>
                    </a>
                </c:if>
            </li>
            <li class="page-item">
                <a class="page-link" href="?pageNo=${pager.totalPageNo}&kind=${param.kind}&sort=${param.sort}" aria-label="Last">
                    <span aria-hidden="true"><i class="bi bi-chevron-double-right"></i></span>
                </a>
            </li>
        </ul>
    </nav>
    
		
		<div class="modal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">관심상품 추가</h5>
					</div>
					<div class="modal-body">
						<p></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
     
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>
