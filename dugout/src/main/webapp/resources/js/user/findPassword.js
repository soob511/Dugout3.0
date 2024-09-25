$(document).ready(function() {
    $("#main-header").load("../main/Header.html");
    $("#main-footer").load("../main/Footer.html");
    
    $("#userID, #email").on("input", function() {
        var userID = $("#userID").val().trim();
        var name = $("#email").val().trim();

        if (userID !== "" && name !== "") {
            $(".findPassword-btn").prop("disabled", false);
        } else {
            $(".findPassword-btn").prop("disabled", true);
        }
    });
  
});