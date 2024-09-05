
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
   <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
      <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
<link rel="stylesheet" href="ProductAdd.css">
</head>
<body id="product-insert-body">
	<main>
		<section>
			<div class="product-insert-box">
				<h2 class="product-insert-title">상품 등록</h2>
			</div>
			<form enctype="multipart/form-data" name="insertForm" method="get"
				id="insertForm">
				<div class="form-group">
					<span>분류</span> <select class="team-insert-list">
						<option selected="selected">팀 선택</option>
						<option>기아 타이거즈</option>
						<option>두산 베어스</option>
						<option>한화 이글스</option>
						<option>옌씨 다이노스</option>
						<option>키움 히어로즈</option>
						<option>엘지 트윈스</option>
						<option>SSG 랜더스</option>
						<option>케이티 위즈</option>
						<option>롯데 자이언츠</option>
						<option>삼성 라이온즈</option>
						<option>국가대표</option>
					</select> <select class="product-kind-insert">
						<option selected="selected">상품 종류</option>
					</select>
				</div>
				<div class="product-group">
					<label for="firstImg">메인 이미지</label> <input type="file"
						class="form-control" id="mainImage">
				</div>
				<div class="product-group">
					<label for="secondBanner">상세 이미지</label> <input type="file"
						class="form-control" id="detailImage">
				</div>
				<div class="product-group">
					<label for="thirdBanner">상품이름</label> <input type="text"
						class="form-control" id="thirdBanner">
				</div>
				<div class="product-group">
					<label for="thirdBanner">가격</label> <input type="text"
						class="form-control" id="thirdBanner">
				</div>
				<div class="product-group">
					<label for="thirdBanner">재고</label> <input type="text"
						class="form-control" id="thirdBanner">
				</div>
				<div class="action-buttons">
					<button class="preview-button" onclick="openPreview()">미리보기</button>
					<button class="save-button" onclick="showSaveAlert()">저장하기</button>
				</div>
			</form>
		</section>
	</main>
	<script>
		function openPreview() {
			window.open('PreviewProduct.html', '_blank',
					'width=1600,height=1200');
		}
		function showSaveAlert() {
		    alert('저장되었습니다');
		}
	</script>
</body>
</html>