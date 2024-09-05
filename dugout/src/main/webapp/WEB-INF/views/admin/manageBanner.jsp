
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>배너 관리</title>
   <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
      <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="product-insert-box">
		<h2 class="product-insert-title">배너 관리</h2>
	</div>

	<div class="content-section" style="width: 100%;">
		<div class="banner-group">
			<label for="firstBanner">첫번째 배너</label> <input type="file"
				class="form-control" id="firstBanner">
		</div>
		<div class="banner-group">
			<label for="secondBanner">두번째 배너</label> <input type="file"
				class="form-control" id="secondBanner">
		</div>
		<div class="banner-group">
			<label for="thirdBanner">세번째 배너</label> <input type="file"
				class="form-control" id="thirdBanner">
		</div>
		<div class="action-buttons">
			<button class="preview-button" onclick="openPreview()">미리보기</button>
			<button class="save-button" onclick="showSaveAlert()">저장하기</button>
		</div>
	</div>

	<script>
    function openPreview() {         
        window.open('PreviewBanner.html', '_blank', 'width=1600,height=1200');
    }
	function showSaveAlert() {
	    alert('저장되었습니다');
	}
    </script>
</body>
</html>
