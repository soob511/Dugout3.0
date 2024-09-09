<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>관리자헤더</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <!-- <link href="Header.css" rel="stylesheet"> -->
   
	<link href="${pageContext.request.contextPath}/resources/css/admin/headerManagement.css"  rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/admin/headerManagement.js"></script>
  </head>
  <body>
<div id="header-body">
  <div class="members">
    <a href="${pageContext.request.contextPath}/notice/noticeList" class="notice" style="margin-right: 16px">공지사항</a> 
    <a href="${pageContext.request.contextPath}/member/login" class="login">로그아웃</a>
  </div>
  <div class="logo-icons-section">
    <div class="logo-div">
      <a href="${pageContext.request.contextPath}/">
      	<img class="logo" src="${pageContext.request.contextPath}/resources/image/logo/logo.png" />
      </a>
    </div>
    <div class="icons">
		<a href="${pageContext.request.contextPath}/admin" class="myPage"
          ><img src="${pageContext.request.contextPath}/resources/image/logo/myPage.png" />
         <br> <span>관리자페이지</span>
        </a>
    </div>
  </div>
</div>
  </body>
</html>
