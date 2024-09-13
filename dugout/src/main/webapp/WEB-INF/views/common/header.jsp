<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
<div id="header-body">
  <div class="members">
    <a href="${pageContext.request.contextPath}/notice/noticeList" class="notice">공지사항</a> 
    
    <sec:authorize access="isAnonymous()">
    <a href="${pageContext.request.contextPath}/user/loginForm" class="login">로그인</a>    
    <a href="${pageContext.request.contextPath}/user/joinForm" class="member">회원가입</a>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
    <a href="${pageContext.request.contextPath}/logout" class="logout">로그아웃</a>   
    </sec:authorize>
    
  </div>
  <div class="logo-icons-section">
    <div class="logo-div">
      <a href="${pageContext.request.contextPath}/">
      	<img class="logo" src="${pageContext.request.contextPath}/resources/image/logo/logo.png" />
      </a>
    </div>
 
	<sec:authorize access="isAnonymous()">
    <div class="icons">
      <a href="${pageContext.request.contextPath}/mypage" class="myPage">
        <img src="${pageContext.request.contextPath}/resources/image/logo/myPage.png" class="myPage-img" /><br />
        <span>마이페이지</span>
      </a>
      <a href="${pageContext.request.contextPath}/cart" class="cart">
        <img src="${pageContext.request.contextPath}/resources/image/logo/cart.png" class="cart-img" /><br />
        <span>장바구니</span>
        <span class="cart-badge">0</span>
      </a>
    </div>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER') and !hasRole('ROLE_ADMIN')">
    <div class="icons">
      <a href="${pageContext.request.contextPath}/mypage" class="myPage">
        <img src="${pageContext.request.contextPath}/resources/image/logo/myPage.png" class="myPage-img" /><br />
        <span>마이페이지</span>
      </a>
      <a href="${pageContext.request.contextPath}/cart" class="cart">
        <img src="${pageContext.request.contextPath}/resources/image/logo/cart.png" class="cart-img" /><br />
        <span>장바구니</span>
        <span class="cart-badge">0</span>
      </a>
    </div>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN') and isAuthenticated()">
    <div class="icons">
      <a href="${pageContext.request.contextPath}/goods/goodsManagement" class="myPage">
        <img src="${pageContext.request.contextPath}/resources/image/logo/myPage.png" />
        <br> <span>관리자페이지</span>
      </a>
    </div>
</sec:authorize>

    
  </div>
</div>
