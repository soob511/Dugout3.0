<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/member/findPassword.css"  rel="stylesheet" />
</head>
<body>
	<div class="findidpage-container">
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
		<hr style="color: black;">
		<div class="findid-container"
			style="margin-top: 50px; margin-bottom: 50px;">
			<h1>Find PW</h1>
			<form class="findid-form">
				<div class="form-group">
					<label for="userID">아이디</label> <input type="text" id="userID"
						class="form-control" placeholder="아이디를 입력하세요">
				</div>
				<div class="form-group">
					<label for="name">이름</label> <input type="text" id="name"
						class="form-control" placeholder="이름을 입력하세요">
				</div>
				<button type="submit" class="findid-btn" disabled>확인</button>
			</form>
			<div class="options">
				<a href="${pageContext.request.contextPath}/member/login">로그인</a>
			</div>
			<div id="result" style="color: #688efe; margin-top: 20px;"></div>
		</div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</div>
</body>
</html>