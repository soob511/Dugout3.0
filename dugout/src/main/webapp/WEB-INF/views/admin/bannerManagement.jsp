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
  <hr>
  <div class="main-container">
  <%@ include file="/WEB-INF/views/admin/adminMenu.jsp" %>
  	<div class="containers">
    <div class="product-insert-box">
      <h2 class="product-insert-title">배너 관리</h2>
    </div>

    <form action="updateBanner" method="post" enctype="multipart/form-data" class="content-section" style="width: 100%">
    <div class="banner-group">
        <label for="firstBanner">첫번째 배너</label>
        <input type="file" class="form-control" id="firstBanner" name="firstBanner" />
    </div>
    <div class="banner-group">
        <label for="secondBanner">두번째 배너</label>
        <input type="file" class="form-control" id="secondBanner" name="secondBanner" />
    </div>
    <div class="banner-group">
        <label for="thirdBanner">세번째 배너</label>
        <input type="file" class="form-control" id="thirdBanner" name="thirdBanner" />
    </div>
    <div class="action-buttons">
        <button type="button" class="preview-button" onclick="openBanner()">미리보기</button>
        <button type="submit" class="save-button">저장하기</button>
    </div>
</form>

    
    </div>
    </div>
     <jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script>
  function openBanner() {
   
    var previewWindow = window.open('${pageContext.request.contextPath}/admin/previewBanner', '배너미리보기', 'width=1200,height=600');
    
   
    previewWindow.onload = function() {
      var firstBanner = document.getElementById('firstBanner').files[0];
      var secondBanner = document.getElementById('secondBanner').files[0];
      var thirdBanner = document.getElementById('thirdBanner').files[0];
      
      if (firstBanner) {
        var reader = new FileReader();
        reader.onload = function (e) {
          previewWindow.document.getElementById("firstBannerPreview").src = e.target.result;
        };
        reader.readAsDataURL(firstBanner);
      }
      
      if (secondBanner) {
        var reader = new FileReader();
        reader.onload = function (e) {
          previewWindow.document.getElementById("secondBannerPreview").src = e.target.result;
        };
        reader.readAsDataURL(secondBanner);
      }
      
      if (thirdBanner) {
        var reader = new FileReader();
        reader.onload = function (e) {
          previewWindow.document.getElementById("thirdBannerPreview").src = e.target.result;
        };
        reader.readAsDataURL(thirdBanner);
      }
    };
  }
</script>

  </body>
</html>