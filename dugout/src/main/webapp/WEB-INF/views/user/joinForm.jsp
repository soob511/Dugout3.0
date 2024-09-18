<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원가입</title>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/user/joinForm.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" />
<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>

<link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/common/footer.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/user/joinForm.css" rel="stylesheet" />
</head>
<body class="join-body">
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	
	<hr class="join-hr" />
	<main id="member-form">
	<section class="title">
	<span class="join">JOIN</span>
	</section>
	<form class="row g-3" method="post" action="join">
		<fieldset class="col-12">
			<div class="mb-3 form-group">
				<label for="inputId" class="form-label">아이디</label> 
				<div class="d-flex">
					<input type="text" class="form-control" id="inputId" placeholder="예) dugout (영문 또는 숫자 4~12자리)" 
							  name="userId" />
					<button type="button" class="id-check ms-3" onclick="idCheck()" >중복확인</button>
				</div>
				<span class="message username-message"></span>
			</div>
			<div class="mb-3 form-group">
				<label for="inputPassword" class="form-label">비밀번호</label> 
				<input type="password" class="form-control" id="inputPassword" placeholder="영문, 숫자 조합 8 ~ 16자" 
						  name="userPassword" value="${userDto.password}" /> 
				<span class="message password-check"></span>
			</div>
			<div class="mb-3 form-group">
				<label for="confirmPassword" class="form-label">비밀번호 확인</label> 
				<input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호 확인" /> 
				<span class="message wrong-password"></span>
			</div>
			<div class="mb-3">
				<label for="inputName" class="form-label">이름</label> 
				<input type="text" class="form-control" id="inputName" name="userName" />
			</div>
			<div class="mb-3 form-group">
				<label for="inputPhone" class="form-label">전화번호</label> 
				<input type="text" class="form-control" id="inputPhone"  name="userPhone"/>
				<span class="message email-check"></span>
			</div>
			<div class="mb-3">
				<label for="inputEmail" class="form-label">이메일</label> 
				<input type="text" class="form-control" id="inputEmail" name="userEmail" />
			</div>
			<div class="mb-3">
				<label for="inputAddress" class="form-label">주소</label> 
				<div class="d-flex">
					<input type="text" class="form-control" id="inputAddress" name="userAddress"/>
					<button type="button" class="searchAddress ms-3" onclick="searchAddress()">주소검색</button>
				</div>
			</div>
			<button class="btnMember"  disabled>회원가입</button>
		</fieldset>
	</form>
	</main>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script>
		function idCheck() {
			let inputId = $("#inputId").val();
			
			$.ajax({
				url: "idCheck",
				method: "post",
		        data: { inputId: inputId },
				success: function(data) {
					const msg = $('.username-message');
					msg.css("opacity", "1")
					if(data) {
						msg.text("사용 가능한 아이디입니다.");
						msg.css("color", "blue");
					} else {
						msg.text("이미 존재하는 아이디입니다.");
						msg.css("color", "red");
					}
				}
			});
		}
	</script>
</body>
</html>
