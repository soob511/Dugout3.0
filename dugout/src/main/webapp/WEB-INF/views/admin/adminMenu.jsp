<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<link href="${pageContext.request.contextPath}/resources/css/admin/adminMenu.css"  rel="stylesheet" />

<div class="menu-section">
	<h2 class="section-title">관리자 페이지</h2>
	<div class="menu-item">
		<a href="${pageContext.request.contextPath}/admin">상품 관리</a>
	</div>	
	<div class="menu-item">
	  <a href="${pageContext.request.contextPath}/goods/goodsAdd">상품 등록</a>
	</div>	
	<div class="menu-item">
	  <a href="${pageContext.request.contextPath}/admin/bannerManagement">배너 관리</a>
	</div>
</div>