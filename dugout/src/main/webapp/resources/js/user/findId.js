$(document).ready(function() {
    $("#name, #phone").on("input", function() {
        var name = $("#name").val().trim();
        var phone = $("#phone").val().trim();

        if (name !== "" && phone !== "") {
            $(".findid-btn").prop("disabled", false);
        } else {
            $(".findid-btn").prop("disabled", true);
        }
    });

    $("#phone").on("input", function() {
        let phone = $("#phone").val().trim();
        const msg = $('.phone-check');
        if (phone && !phone.startsWith("010")) {
            msg.text("전화번호는 010으로 시작해야 합니다.");
            msg.css("color", "red");
            msg.css("opacity", "1");
        } else {
            msg.css("opacity", "0");
        }
    });
});

function findId() {
    let userName = $("#name").val();
    let userPhone = $("#phone").val();

    $.ajax({
        url: "/dugout/user/findId",
        method: "post",
        data: {
            userName,
            userPhone
        },
        success: function(response) {
            console.log(response);
            if (response == "null") {
                $(".modal-body p").text("일치하는 회원정보가 없습니다.");
            } else {
                $(".modal-body p").text("회원님의 아이디는 " + response + " 입니다.");
            }
            $('.modal').modal('show');
        }
    });
}
