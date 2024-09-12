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