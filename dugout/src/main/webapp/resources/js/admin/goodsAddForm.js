$(document).ready(function(){
		$("#goodsSaveBtn").click(function(){
			  $('.modal').modal('show');
		})
})
    
    	function openPreview() {
    		let previewWindow = window.open('/dugout/goods/previewGoodsDetail', '상품등록미리보기', 'width=1400,height=1600');
    	       
    	    previewWindow.onload = function() {
    	      const mainImg = document.getElementById('mainImg').files[0];
    	      const detailImg = document.getElementById('detailImg').files[0];
    	      const goodsName = document.getElementById('goodsName').value;
    	      const goodsPrice = parseInt(document.getElementById('goodsPrice').value);
    	      const goodsTeam = document.querySelector('.team-insert-list').value;
    	      console.log(goodsTeam);
    	    
    	      if(goodsName) {
    	    	  previewWindow.document.getElementById("previewGoodsName").textContent = goodsName;
    	      }
    	      
    	      if(goodsPrice) {
    	    	  const goodsPrices = previewWindow.document.getElementsByClassName("previewGoodsPrice");
    	    	  for (let el of goodsPrices)
    	                el.textContent = goodsPrice.toLocaleString() + ' 원';
    	      }
    	      
    	      if(goodsTeam) {
    	    	  const goodsTeams = previewWindow.document.getElementsByClassName("previewGoodsTeam");
    	    	  for (let el of goodsTeams)
    	                el.textContent = goodsTeam;
    	      }
    	      
    	      if (mainImg) {
    	    	  let reader = new FileReader();
    	    	  reader.onload = function (e) {
    	    	    previewWindow.document.getElementById("previewMainImg").src = e.target.result;
    	    	  };
    	    	  reader.readAsDataURL(mainImg);
    	    	}

    	      if (detailImg) {
    	    	  let reader = new FileReader();
    	        reader.onload = function (e) {
    	          previewWindow.document.getElementById("previewDetailImg").src = e.target.result;
    	        };
    	        reader.readAsDataURL(detailImg);
    	      }
    	    };		
    	}