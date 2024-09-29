$(document).ready(function() {
    $("#modalLikeBtn").click(function() {
        location.href = "/dugout/goodsLike/goodsLikeList";
    });
});

function addCart(itemId) {
    const params = { goodsId: itemId, cartCount: 1 };
    $.ajax({
        url: "/dugout/cart/addCart",
        method: "post",
        data: params,
        success: function(data) {
            $("#modalCart-body p").text("장바구니에 담겼습니다.");
            $('#modalCart').modal('show');
        }
    });
};

function deleteLike(itemId) {
    const params = { goodsId: itemId };
    $.ajax({
        url: "/dugout/goodsLike/deleteLike",
        method: "post",
        data: params,
        success: function(data) {
            $("#modalLike-body p").text("관심목록에서 삭제 되었습니다.");
            $('#modalLike').modal('show');
        }
    });
};

function deleteAllLikes(likeList) {
    var goodsIds = [];
    
    for(let item of likeList)
    	goodsIds.push(item.goodsId);

    $.ajax({
        url: "/dugout/goodsLike/deleteAllLikes",
        method: "post",
        data: { goodsIds: goodsIds },
        traditional: true,
        success: function(data) {
            $("#modalLike-body p").text("관심목록이 전체 삭제 되었습니다.");
            $('#modalLike').modal('show');
        }
    });
};