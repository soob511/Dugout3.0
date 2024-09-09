<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/admin/mainManagement.css"  rel="stylesheet" />
    <script src="MainManagement.js"></script>
  </head>
  <body>
    <%-- <jsp:include page="/WEB-INF/views/common/header.jsp" /> --%>
    <hr />
    <div class="main-container">
      <div class="menu-section">
        <h2 class="section-title">관리자 페이지</h2>
        <div class="menu-item active" data-page="ProductManagement.html">
          상품 관리
        </div>
        <!-- <div class="menu-item" data-page="ProductAdd.html">상품 등록</div> -->
        <a href="product/productAdd">상품등록</a>
        <div class="menu-item" data-page="BannerManagement.html">베너 관리</div>
      </div>
      <div class="content-section" id="content-section"></div>
    </div>

     <%-- <jsp:include page="/WEB-INF/views/common/footer.jsp" /> --%>
  </body>
</html>
>