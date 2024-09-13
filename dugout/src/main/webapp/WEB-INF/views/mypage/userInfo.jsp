<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/mypage/userInfo.css"  rel="stylesheet" />
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<hr>
	<div class=main-container>
	    <%@ include file="/WEB-INF/views/mypage/mypageMenu.jsp" %>
		<div class="member-information">
			<div class="product-insert-box">
				<h2 class="product-insert-title">회원 정보</h2>
			</div>
			<div class="membership board">
				<div class="member-id ">
					<span>아이디</span> <input type="text" class="form-control"
						id="inputId" placeholder="${user.userId}">
				</div>
				<div class="member-password">
					<span>비밀번호</span> <input type="password" class="form-control"
						id="exampleInputPassword1" >
				</div>
				<div class="member-password-again">
					<span>비밀번호 확인</span> <input type="password" id="username"
						class="form-control" />
				</div>
				<div class="member-name">
					<span>이름</span> <input type="text" id="username"
						class="form-control" placeholder="${user.userName}" />
				</div>
				<div class="member-phone-number">
					<span>전화번호</span>
					<input type="number" id="userPhone"
						class="form-control" placeholder="${user.userPhone}" />
					</div>
				<div class="member-email">
					<span>이메일</span> <input type="email" id="userEmail"
						class="form-control" placeholder="${user.userEmail}" />
				</div>
				<div class="member-address">
					<span>주소</span> <input type="text" id="userAddress"
						class="form-control" placeholder="${user.userAddress}" />
				</div>
				<div></div>
				<button type="submit" class="btnMember" disabled>회원정보 수정</button>
				<br>
				<button type="button" class="withdrawal-btn">회원탈퇴</button>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>