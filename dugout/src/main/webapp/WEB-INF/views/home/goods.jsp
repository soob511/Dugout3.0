<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/css/home/goods.css"  rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<section class="section-top">
	<div class="d-flex align-items-center">
		<div class="col-6">
			<p class="product count">
				<span>${totalRows}</span>개의 상품 검색
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

	<div class="container d-flex justify-content-center">
		<div class="row d-flex justify-content-start gap-4" >
		<c:forEach items="${list}" var ="goods">
			<div class="card col-3" style="width: 300px; height: 500px">
				<a href="${pageContext.request.contextPath}/goods/goodsDetail?goodsId=${goods.goodsId}">
				<img
					class="card-img-top"
					src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}"
					height="150" /></a> <i class="bi bi-heart"></i>
				<div class="card-body">
					<p class="card-title">[${goods.goodsTeam}] ${goods.goodsName}</p>
					<p class="card-text">${goods.goodsCategory}</p>
					<p class="card-text2">${goods.goodsPrice}원</p>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>   
       <nav aria-label="Page navigation example" class="d-flex justify-content-center">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="?pageNo=1" aria-label="First">
			        <span aria-hidden="true"><i class="bi bi-chevron-double-left"></i></span>
			      </a>
			    </li>
			    
			    <li class="page-item">
			    	<c:if test="${pager.groupNo>1}">
              		<a class="page-link" href="?pageNo=${pager.startPageNo - 1}" aria-label="Previous">
			        	<span aria-hidden="true"><i class="bi bi-chevron-left"></i></span>
			      	</a>
              		</c:if>
			    </li>
			
			    <c:forEach begin="${pager.startPageNo}" end="${pager.endPageNo}" step="1" var="i">
			      <c:if test="${pager.pageNo == i}">
			        <li class="page-item active"><a href="?pageNo=${i}" class="page-link">${i}</a></li>
			      </c:if>
			      <c:if test="${pager.pageNo != i}">
			        <li class="page-item"><a href="?pageNo=${i}" class="page-link">${i}</a></li>
			      </c:if>    
			    </c:forEach>
			
			    <li class="page-item">
			    <c:if test="${pager.groupNo<pager.totalGroupNo}">
              		<a class="page-link" href="?pageNo=${pager.endPageNo + 1}" aria-label="Next">
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
