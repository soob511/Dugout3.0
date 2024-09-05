
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../resources/css/login.css" />
  </head>
  <body>
    <div class="loginpage-container">
      <header id="main-header"></header>
      <hr style="color: black" />
      <div
        class="login-container"
        style="margin-top: 50px; margin-bottom: 50px"
      >
        <h1>LOG-IN</h1>
        <form id="loginForm">
          <div class="form-group">
            <label for="username">아이디</label>
            <input type="text" id="username" class="form-control" />
            <div id="usernameError" style="color: red; display: none"></div>
          </div>
          <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" class="form-control" />
            <div id="passwordError" style="color: red; display: none"></div>
          </div>
          <button type="submit" class="login-btn" disabled>로그인</button>
          <button type="button" class="signup-btn">회원가입</button>
        </form>
        <div class="options">
          <a href="${pageContext.request.contextPath}/Member/findId">아이디 찾기</a>
          <a href="${pageContext.request.contextPath}/Member/findPw">비밀번호 찾기</a>
        </div>
        <div id="result"></div>
      </div>
      <footer id="main-footer"></footer>
    </div>
    <script>
      $(document).ready(function () {
        $("#main-header").load("../main/Header.html");
        $("#main-footer").load("../main/Footer.html");

        var users = JSON.parse(localStorage.getItem("users")) || [];
        localStorage.removeItem("login");
        localStorage.removeItem("userAdmin");
        var loginSuccess = false;
        var userAdmin = false;

        if (users.length === 0) {
          users.push(
            {
              id: "kosaOTI",
              password: "12341234",
              name: "김코사",
              phone: "01012345678",
              address: "서울특별시 종로구 창경궁로 254 동원빌딩 402호 ",
            },
            {
              id: "admin",
              password: "12341234",
              name: "관리자",
              phone: "01012345678",
              address: "서울특별시 종로구 창경궁로 254 동원빌딩 402호 ",
            }
          );

          localStorage.setItem("users", JSON.stringify(users));
        }

        $("#username,#password").on("input", function () {
          var id = $("#username").val().trim();
          var password = $("#password").val().trim();

          if (id !== "" && password !== ""&&password.length>=8&&password.length<=16) {
            $(".login-btn").prop("disabled", false);
          } else {
            $(".login-btn").prop("disabled", true);
          }
        });

        $("#password").on("input", function () {
          var password = $("#password").val().trim();
          if (password.length < 8 || password.length > 16) {
            passwordError.textContent = "비밀번호의 길이는 8~16자입니다.";
            passwordError.style.display = "block";
          } else {
            passwordError.style.display = "none";
          }
        });
        
        $("#loginForm").submit(function (e) {
          e.preventDefault();

          var id = $("#username").val().trim();
          var password = $("#password").val().trim();
          console.log(id);
          console.log(password);
          var isfindLogin = users.find(function (user) {
            return user.id === id && user.password === password;
          });

          if (isfindLogin) {
            if (id === "admin") {
              userAdmin = true;
            }
            loginSuccess = true;
            localStorage.setItem("login", loginSuccess);
            localStorage.setItem("userAdmin", userAdmin);
            location.href = "../main/Main.html";
          } else {
            alert("일치하는 회원정보가 없습니다.");
            location.href = "../login/Login.html";
          }
        });

        $("button").click(function () {
          location.href = "../join/JoinForm.html";
        });
      });
    </script>
  </body>
</html>
