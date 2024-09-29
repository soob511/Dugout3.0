$(document).ready(function() {
    $("#userID, #phone").on("input", function() {
        var userID = $("#userID").val().trim();
        var phone = $("#phone").val().trim();

        if (userID !== "" && phone !== "") {
            $(".findPassword-btn").prop("disabled", false);
        } else {
            $(".findPassword-btn").prop("disabled", true);
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

function findPassword() {
    let userId = $("#userID").val();
    let userPhone = $("#phone").val();

    $.ajax({
        url: "/dugout/user/findPassword",
        method: "post",
        data: {
            userId,
            userPhone
        },
        success: function(data) {
            if (!data) {
                $(".modal-body p").text("일치하는 회원정보가 없습니다.");
            } else {
                $(".modal-body p").text("입력하신 이메일로 임시 비밀번호가 발급되었습니다.");
            }
            $('.modal').modal('show');
        }
    });
}
