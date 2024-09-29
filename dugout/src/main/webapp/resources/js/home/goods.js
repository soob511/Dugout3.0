$(document).on("click", ".bi-heart, .bi-heart-fill", function() {
    $(this).toggleClass("bi-heart bi-heart-fill");

    let goodsId = $(this).data("goods-id");
    let isLiked = $(this).hasClass("bi-heart-fill");

    $.ajax({
        url: "/dugout/goodsLike/like",
        method: "POST",
        data: {
            goodsId: goodsId,
            isLiked: isLiked
        },
        success: function(data) {
            if (!data) {
                location.href = "/dugout/user/loginForm";
            } else {
                let message = isLiked ? "관심목록에 등록되었습니다." : "관심목록에서 해제되었습니다.";
                $(".modal-body p").text(message);
                $('.modal').modal('show');
            }
        }
    });
});

$(document).ready(function() {
    $(".bi-heart, .bi-heart-fill").each(function() {
        let goodsId = $(this).data("goods-id");

        $.ajax({
            url: "/dugout/goodsLike/checkLike",
            method: "POST",
            data: {
                goodsId: goodsId
            },
            success: function(data) {
                let selector = "i[data-goods-id='" + goodsId + "']";
                if (data) {
                    $(selector).removeClass("bi-heart").addClass("bi-heart-fill");
                } else {
                    $(selector).removeClass("bi-heart-fill").addClass("bi-heart");
                }
            }
        });
    });
});
