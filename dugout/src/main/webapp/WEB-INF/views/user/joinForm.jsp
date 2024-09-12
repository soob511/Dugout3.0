<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Join Form</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" />
<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>

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
				<input type="text" class="form-control" id="inputId" placeholder="예) dugout (영문 또는 숫자 4~12자리)" 
						  name="userId" value="${joinFormDto.userId}"/>
				<button type="button" class="id-check">중복확인</button>
				<span class="message username-message">이미 존재하는 아이디입니다.</span>
				<span class="text-danger"><form:errors path="joinFormDto.userId" /></span>
			</div>
			<div class="mb-3 form-group">
				<label for="inputPassword" class="form-label">비밀번호</label> 
				<input type="password" class="form-control" id="inputPassword" placeholder="영문, 숫자 조합 8 ~ 16자" 
						  name="password" value="${joinFormDto.password}" /> 
				<span class="message password-check">비밀번호 형식이 올바르지 않습니다.</span>
				<span class="text-danger"><form:errors path="joinFormDto.password"/></span>
			</div>
			<div class="mb-3 form-group">
				<label for="confirmPassword" class="form-label">비밀번호 확인</label> 
				<input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호 확인" /> 
				<span class="message wrong-password">비밀번호가 일치하지	않습니다.</span>
			</div>
			<div class="mb-3">
				<label for="inputName" class="form-label">이름</label> 
				<input type="text" class="form-control" id="inputName" />
			</div>
			<div class="mb-3">
				<label for="inputPhone" class="form-label">전화번호</label> 
				<input type="text" class="form-control" id="inputPhone"  name="phone" value="${joinFormDto.phone}"/>
				<span class="text-danger"><form:errors path="joinFormDto.phone"/></span>
			</div>
			<div class="mb-3">
				<label for="inputEmail" class="form-label">이메일</label> 
				<input type="text" class="form-control" id="inputEmail" />
			</div>
			<div class="mb-3">
				<label for="inputAddress" class="form-label">주소</label> 
				<input type="text" class="form-control" id="inputAddress" />
				<button type="button" class="searchAddress">주소검색</button>
			</div>
			<!-- <button type="button" class="btnMember" onclick="joinAjax()">회원가입</button> --> <!-- joinAjax 처리 -->
			<button class="btnMember" >회원가입</button>
		</fieldset>
	</form>
	
	<script>
	function joinAjax() {
		var userId = $("#inputId").val();	
		var password = $("#inputPassword").val();
		var name = $("#inputName").val();
		var phone = $("#inputPhone").val();
		var email = $("#inputEmail").val();
		var address = $("#inputAddress").val();
		
		const params = {userId: userId, password: password, name, phone, email, address};
		
		$.ajax({
			url: "joinAjax",
			type: "post",
			data: params,
			success: function(data) {
				console.log(data);
			}
		});
	}
	</script>
	</main>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
