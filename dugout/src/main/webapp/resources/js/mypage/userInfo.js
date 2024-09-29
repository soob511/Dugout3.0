function searchAddress() {
    new daum.Postcode({
        oncomplete: function (data) {
            let addr = "";
            let extraAddr = "";

            addr = data.userSelectedType === "R" ? data.roadAddress : data.jibunAddress;

            if (data.userSelectedType === "R") {
                if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                    extraAddr += data.bname;
                }
                if (data.buildingName !== "" && data.apartment === "Y") {
                    extraAddr += extraAddr !== "" ? ", " + data.buildingName : data.buildingName;
                }
                if (extraAddr !== "") {
                    extraAddr = " (" + extraAddr + ")";
                }
            }
            document.getElementById("inputAddress").value = addr + extraAddr;
            document.getElementById("inputAddress").focus();
        },
    }).open();
}

$(document).ready(function () {
    const checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    const checkPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]/;

    $("#inputPassword").on("input", function () {
        let password = $("#inputPassword").val().trim();
        const msg = $('.password-check');

        if (!password) {
            msg.css("opacity", "0");
        } else if ((password.length < 8) || password.length > 16) {
            msg.text("비밀번호는 8~16자로 작성해야 합니다.");
            msg.css("color", "red");
            msg.css("opacity", "1");
        } else if (checkKor.test(password) || !checkPassword.test(password)) {
            msg.text("비밀번호는 영어와 숫자를 포함해야 합니다.");
            msg.css("color", "red");
            msg.css("opacity", "1");
        } else {
            msg.text("사용가능한 비밀번호 입니다.");
            msg.css("color", "blue");
            msg.css("opacity", "1");
        }
    });

    $("#confirmPassword").on("input", function () {
        let confirmPassword = $("#confirmPassword").val().trim();
        let password = $("#inputPassword").val().trim();
        const msg = $('.wrong-password');

        if (confirmPassword === password) {
            msg.text("비밀번호가 일치합니다.");
            msg.css("color", "blue");
            msg.css("opacity", "1");
        } else {
            msg.text("비밀번호가 일치하지 않습니다.");
            msg.css("color", "red");
            msg.css("opacity", "1");
        }
    });

    $("#inputPhone").on("input", function () {
        let phone = $("#inputPhone").val().trim();
        const msg = $('.phone-check');

        if (phone && !phone.startsWith("010")) {
            msg.text("전화번호는 010으로 시작해야 합니다.");
            msg.css("color", "red");
            msg.css("opacity", "1");
        } else {
            msg.css("opacity", "0");
        }
    });

    $("#inputPassword, #confirmPassword, #inputName, #inputPhone, #inputEmail, #inputAddress").on("input", function () {
        var password = $("#inputPassword").val().trim();
        var cPassword = $("#confirmPassword").val().trim();
        var name = $("#inputName").val().trim();
        var email = $("#inputEmail").val().trim();
        var address = $("#inputAddress").val().trim();

        if (password !== "" && cPassword !== "" && name !== "" && email !== "" && address !== "") {
            $(".btnMember").prop("disabled", false);
        } else {
            $(".btnMember").prop("disabled", true);
        }
    });
});

$(document).ready(function () {
    $(".btn-secondary").click(function () {
        location.href = "/dugout/user/userInfo";
    });
});

function updateUser() {
    let userId = $("#inputId").val();
    let userPassword = $("#inputPassword").val();
    let userName = $("#inputName").val();
    let userPhone = $("#inputPhone").val();
    let userAddress = $("#inputAddress").val();
    let userEmail = $("#inputEmail").val();

    let userData = {
        userId: userId,
        userPassword: userPassword,
        userName: userName,
        userPhone: userPhone,
        userAddress: userAddress,
        userEmail: userEmail
    };

    $.ajax({
        url: "/dugout/user/updateUser",
        method: "post",
        contentType: "application/json",
        data: JSON.stringify(userData),
        success: function (response) {
            $('.modal').modal('show');
        }
    });
}

function deleteUser() {
    $.ajax({
        url: "deleteUser",
        method: "post",
        success: function () {
            location.href = "/dugout/logout";
        }
    });
}