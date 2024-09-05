
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="../resources/css/findPw.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="findidpage-container">
		<header id="main-header"></header>
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
				<a href="${pageContext.request.contextPath}/Member/login">로그인</a>
			</div>
			<div id="result" style="color: #688efe; margin-top: 20px;"></div>
		</div>
		<footer id="main-footer"></footer>
	</div>
	<script>
		$(document).ready(function() {
			$("#main-header").load("../main/Header.html");
			$("#main-footer").load("../main/Footer.html");
			
			$("#userID, #name").on("input", function() {
                var userID = $("#userID").val().trim();
                var name = $("#name").val().trim();

                if (userID !== "" && name !== "") {
                    $(".findid-btn").prop("disabled", false);
                } else {
                    $(".findid-btn").prop("disabled", true);
                }
            });
			
			$(".findid-form").submit(function(e){
                e.preventDefault(); 

                var userID = $("#userID").val().trim();
                var name = $("#name").val().trim();

                var users = JSON.parse(localStorage.getItem("users")) || [];

                var foundUser = users.find(function(user){
                    return user.id === userID && user.name === name;
                });

                if (foundUser) {
                    $("#result").text(foundUser.name+"님의 비밀번호는 " + foundUser.password+" 입니다.");
                } else {
                    $("#result").text("해당 정보로 등록된 아이디가 없습니다.");
                }
            });
		});
	</script>
</body>
</html>