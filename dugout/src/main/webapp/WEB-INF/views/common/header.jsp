<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>Header</title>
    <link href="../common/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="../common/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="../common/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="../main/Header.css" />
    <script src="Header.js"></script>
  </head>
  <body>
    <div id="header-body">
      <div class="members">
        <a href="../login/Login.html" class="login">로그인</a>
        <a href="../join/JoinForm.html" class="member">회원가입</a>
      </div>
      <div class="logo-icons-section">
        <div class="logo-div">
          <a href="../main/Main.html"
            ><img class="logo" src="../common/image/logo/logo.png"
          /></a>
        </div>
        <div class="icons">
          <a href="../mypage/MainMyPage.html" class="myPage">
            <img
              src="../common/image/logo/myPage.png"
              class="myPage-img"
            /><br />
            <span>마이페이지</span>
          </a>
          <a href="../cart/CartForm.html" class="cart">
            <img src="../common/image/logo/cart.png" class="cart-img" /><br />
            <span>장바구니</span>
            <span class="cart-badge">0</span>
          </a>
        </div>
      </div>
    </div>
  </body>
</html>
