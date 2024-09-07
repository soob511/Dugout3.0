<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/mypage/mainMyPage.css"  rel="stylesheet" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
    <header id="main-header"></header>
    <hr>
    <div class="main-container">
        <div class="menu-section">
            <h2 class="section-title">마이 페이지</h2>
            <div class="menu-item active" data-page="PurchaseHistory.html">구매 내역</div>
            <div class="menu-item" data-page="MemberInformation.html">회원 정보</div>
            <div class="menu-item" data-page="HeartListForm.html">관심 목록</div>
        </div>
        <div class="content-section" id="content-section">
        </div>
    </div>
    
    <footer id="main-footer"></footer>
    
    <script src="MainMyPage.js">
      
    </script>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>