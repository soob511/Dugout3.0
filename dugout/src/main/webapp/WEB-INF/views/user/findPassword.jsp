<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
	<link
	href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/user/findPassword.css"  rel="stylesheet" />
		<script src="${pageContext.request.contextPath}/resources/js/user/findPassword.js"></script>
			<link href="${pageContext.request.contextPath}/resources/css/common/modal.css"  rel="stylesheet" />
</head>
<body>
	<div class="findPasswordPage-container">
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
		<hr>
		<div class="findPassword-container"
			style="margin-top: 50px; margin-bottom: 50px;">
			<h1>Find PW</h1>
			<form class="findPassword-form">
				<div class="form-group">
					<label for="userID">아이디</label> <input type="text" id="userID"
						class="form-control" placeholder="아이디를 입력하세요">
				</div>
				<div class="form-group">
					<label for="phone">전화번호</label> <input type="text" id="phone"
						class="form-control" placeholder="전화번호를 입력하세요">
				</div>
				<button type="button" class="findPassword-btn" onclick="findPassword()" disabled>확인</button>
			</form>
			<div class="options">
				<a href="${pageContext.request.contextPath}/user/loginForm">로그인</a>
			</div>
			<div id="result" style="color: #688efe; margin-top: 20px;"></div>
		</div>
		
		<div class="modal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">비밀번호 찾기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<p></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</div>
	
	<script>
		function findPassword(){
			
			let userId = $("#userID").val();
			let userPhone = $("#phone").val();
			
			
			$.ajax({
				
				url : "${pageContext.request.contextPath}/user/findPassword",
				method : "post",
				data : {
					userId, userPhone
				},
				
				success : function(data){
					if(!data){
						 $(".modal-body p").text("일치하는 회원정보가 없습니다.");		
					}else{
						 $(".modal-body p").text("입력하신 이메일로 임시 비밀번호가 발급되었습니다.");	
					}
					  $('.modal').modal('show');
				}

			})

		}

	</script>
</body>
</html>