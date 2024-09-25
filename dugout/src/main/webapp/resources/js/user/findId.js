$(document).ready(function(){
    $("#name, #phone").on("input", function() {
        var name = $("#name").val().trim();
        var phone = $("#phone").val().trim();

        if (name !== "" && phone !== "") {
            $(".findid-btn").prop("disabled", false);
        } else {
            $(".findid-btn").prop("disabled", true);
        }
    });
});