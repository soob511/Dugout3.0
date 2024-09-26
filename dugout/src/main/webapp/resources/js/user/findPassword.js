$(document).ready(function() {
    $("#main-header").load("../main/Header.html");
    $("#main-footer").load("../main/Footer.html");
    
    $("#userID, #phone").on("input", function() {
        var userID = $("#userID").val().trim();
        var phone = $("#phone").val().trim();

        if (userID !== "" && phone !== "") {
            $(".findPassword-btn").prop("disabled", false);
        } else {
            $(".findPassword-btn").prop("disabled", true);
        }
    });
  
});