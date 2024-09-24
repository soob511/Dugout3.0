$(document).on("click", ".bi-heart, .bi-heart-fill", function () {
	  $(this).toggleClass("bi-heart bi-heart-fill");
	  

	  let goodsId = $(this).data("goods-id");
	  
	  let isLiked = $(this).hasClass("bi-heart-fill");
	  
	  $.ajax({
		  url : "/dugout/goodsLike/like",
		  method: "post",
		  data:   {
			  goodsId: goodsId,
			  isLiked: isLiked		  
		  },
		  success:function(data){
			  if(!data){
				  alert("로그인 후 이용하시기 바랍니다.");
				  location.href = "user/loginForm";
			  }else{ 
				  if(isLiked){
					  alert("관심목록에 추가되었습니다.");			  
				  }else{
					  alert("관심목록에서 해제되었습니다.");			  
				  }
			   }
		  }
	  })
	  
	});

$(document).ready(function() {
    $(".bi-heart, .bi-heart-fill").each(function() {
        let goodsId = $(this).data("goods-id");
        
        $.ajax({
            url: "/dugout/goodsLike/checkLike",
            method: "POST",
            data: { goodsId: goodsId },
            success: function(data) {
                if (data) {
                    $("i[data-goods-id='" + goodsId + "']").removeClass("bi-heart").addClass("bi-heart-fill");
                } else {
                    $("i[data-goods-id='" + goodsId + "']").removeClass("bi-heart-fill").addClass("bi-heart");
                }
            }
        });
    });
});

