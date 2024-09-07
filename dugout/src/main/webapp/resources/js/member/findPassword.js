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