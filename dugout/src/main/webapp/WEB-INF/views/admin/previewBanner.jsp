<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>배너미리보기</title>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>

</head>
 <body>
     <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img id="firstBannerPreview" src="${pageContext.request.contextPath}/banner/bannerImg?bannerId=1" class="d-block w-100" style="height: 12cm;" alt="첫번째 배너">
      </div>
      <div class="carousel-item">
        <img id="secondBannerPreview" src="${pageContext.request.contextPath}/banner/bannerImg?bannerId=2" class="d-block w-100" style="height: 12cm;" alt="두번째 배너">
      </div>
      <div class="carousel-item">
        <img id="thirdBannerPreview" src="${pageContext.request.contextPath}/banner/bannerImg?bannerId=3" class="d-block w-100" style="height: 12cm;" alt="세번째 배너">
      </div>
    </div>
  </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
  </body>
</html>