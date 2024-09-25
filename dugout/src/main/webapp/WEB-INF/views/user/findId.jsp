<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디 찾기</title>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/user/findId.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/resources/js/user/findId.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common/modal.css"  rel="stylesheet" />
</head>
<body>
	<div class="findidpage-container">
		<jsp:include page="/WEB-INF/views/common/header.jsp" />
		<hr />
		<div class="findid-container"
			style="margin-top: 50px; margin-bottom: 50px;">
			<h1>Find ID</h1>
			<form class="findid-form">
				<div class="form-group">
					<label for="name">이름</label> <input type="text" id="name"
						name="userName" class="form-control" placeholder="이름을 입력하세요">
				</div>
				<div class="form-group">
					<label for="phone">전화번호</label> <input type="text" id="phone"
						name="userPhone" class="form-control" placeholder="전화번호를 입력하세요">
				</div>
				<button type="button" class="findid-btn" onclick="findId()" disabled>확인</button>
			</form>
			<div class="options">
				<a href="${pageContext.request.contextPath}/user/loginForm">로그인</a>
				<a href="${pageContext.request.contextPath}/user/findPasswordForm">비밀번호
					찾기</a>
			</div>
			<div id="result" style="color: #688efe; margin-top: 20px;"></div>
		</div>

		<div class="modal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">아이디 찾기</h5>
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

    function findId(){
    		
    		let userName = $("#name").val();
    		let userPhone = $("#phone").val();
    	
    	$.ajax({
    		url: "${pageContext.request.contextPath}/user/findId",
    		method: "post",
    		data:{
    				userName,
    				userPhone    				
    		},
    		   success: function(response) {
    			   
    			   console.log(response);
                  	if(response=="null"){
	                   $(".modal-body p").text("일치하는 회원정보가 없습니다.");		
                  	}else{	
	                   $(".modal-body p").text("회원님의 아이디는 "+response+ " 입니다.");		
                  	}
                   
                   $('.modal').modal('show');
               }
    	})
    	
    	
    	
    	
    }
    
    
    
    </script>


</body>
</html>
