<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>배너 관리</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
    
    <link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/admin/bannerManagement.css"  rel="stylesheet" />
<!--     <script src="BannerManagement.js"></script> -->
  </head>
  <body>
  <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <div class="product-insert-box">
      <h2 class="product-insert-title">배너 관리</h2>
    </div>

    <div class="content-section" style="width: 100%">
      <div class="banner-group">
        <label for="firstBanner">첫번째 배너</label>
        <input type="file" class="form-control" id="firstBanner" />
      </div>
      <div class="banner-group">
        <label for="secondBanner">두번째 배너</label>
        <input type="file" class="form-control" id="secondBanner" />
      </div>
      <div class="banner-group">
        <label for="thirdBanner">세번째 배너</label>
        <input type="file" class="form-control" id="thirdBanner" />
      </div>
      <div class="action-buttons">
        <button class="preview-button" >미리보기</button>
        <button class="save-button" >저장하기</button>
      </div>
    </div>
     <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
