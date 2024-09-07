<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>관리자헤더</title>
    <link href="../common/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="../common/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="../common/jquery/jquery.min.js"></script>
    <!-- <link href="Header.css" rel="stylesheet"> -->
    
    <link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/admin/headerManagement.css"  rel="stylesheet" />
    <script src="HeaderManagement.js"></script>
  </head>
  <body id="header-body">
    <div class="logo-container">
      <div class="logo-div">
        <a href="../main/Main.html"
          ><img class="logo" src="../common/image/logo/logo.png"
        /></a>
      </div>
      <div class="rights">
        <a href="#" class="login">로그아웃</a>
        <a href="../management/MainManagement.html" class="myPage"
          ><img src="../common/image/logo/myPage.png" />
          <span>관리자페이지</span>
        </a>
      </div>
    </div>
  </body>
</html>
