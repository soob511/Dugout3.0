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
				  location.href = "/dugout/user/loginForm";
			  }else{ 
				  if(isLiked){
					  $(".modal-body p").text("관심목록에 등록되었습니다.");		
					  $('.modal').modal('show');	  
				  }else{
					  $(".modal-body p").text("관심목록에서 해제되었습니다.");		
					  $('.modal').modal('show');			  
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

