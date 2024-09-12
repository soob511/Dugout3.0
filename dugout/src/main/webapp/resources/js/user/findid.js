$(document).ready(function(){
    $("#main-header").load("../main/Header.html");
    $("#main-footer").load("../main/Footer.html");

    $("#name, #phone").on("input", function() {
        var name = $("#name").val().trim();
        var phone = $("#phone").val().trim();

        if (name !== "" && phone !== "") {
            $(".findid-btn").prop("disabled", false);
        } else {
            $(".findid-btn").prop("disabled", true);
        }
    });

    $(".findid-form").submit(function(e){
        e.preventDefault(); 

        var name = $("#name").val().trim();
        var phone = $("#phone").val().trim();

        var users = JSON.parse(localStorage.getItem("users")) || [];

        var foundUser = users.find(function(user){
            return user.name === name && user.phone === phone;
        });

        if (foundUser) {
            $("#result").text(foundUser.name+"님의 아이디는 " + foundUser.id+" 입니다.");
        } else {
            $("#result").text("해당 정보로 등록된 아이디가 없습니다.");
        }
    });
});