<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="${pageContext.request.contextPath}/resources/css/admin/adminMenu.css" rel="stylesheet" />

<div class="menu-section">
    <h2 class="section-title">마이 페이지</h2>
    
    <div class="menu-item">
        <a href="${pageContext.request.contextPath}/order/orderList">구매 내역</a>
    </div>
    
    <div class="menu-item">
        <a href="${pageContext.request.contextPath}/user/userInfo">회원 정보</a>
    </div>
    
    <div class="menu-item">
        <a href="${pageContext.request.contextPath}/goodsLike/goodsLikeList">관심 내역</a>
    </div>
</div>