<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>

<div id="header-body">
  <div class="members">
    <a href="${pageContext.request.contextPath}/member/login" class="login">로그인</a>
    <a href="${pageContext.request.contextPath}/member/joinForm" class="member">회원가입</a>
  </div>
  <div class="logo-icons-section">
    <div class="logo-div">
      <a href="${pageContext.request.contextPath}/"
        ><img class="logo" src="${pageContext.request.contextPath}/resources/image/logo/logo.png"
      /></a>
    </div>
    <div class="icons">
      <a href="${pageContext.request.contextPath}/mypage" class="myPage">
        <img
          src="${pageContext.request.contextPath}/resources/image/logo/myPage.png"
          class="myPage-img"
        /><br />
        <span>마이페이지</span>
      </a>
      <a href="${pageContext.request.contextPath}/cart" class="cart">
        <img src="${pageContext.request.contextPath}/resources/image/logo/cart.png" class="cart-img" /><br />
        <span>장바구니</span>
        <span class="cart-badge">0</span>
      </a>
    </div>
  </div>
</div>
