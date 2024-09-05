
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>상품</title>
	  <link rel="stylesheet" href="allProduct.css" />
	
  <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
      <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <style>
	 
	    .row{
          width: 950px;     
        }
	    .col-6 {
             margin: 8px 0 ;         
        	 padding: 0px 65px 0px 0px; 
        }
        span {
          font-size:18px;
          padding: 0px 8px 0px 0px;
          color: black;       
        }
       .product.count {
           font-size:12px;
           margin: 8px 0;        
           padding: 0px 60px 0px 0px; 
           color: gray;
        }
        .col-2{
             margin: 9px 0px;        
        }
        .col-4{
              margin: 8px 0px; 
        }      
        .btn {
            border-color: black;
            background-color: white;
            color: black;
        }
        .search-btn{
            border: none;  
            background-color: white;
        }             
        .dropdown-menu {
            background-color: #e2e2e1;
        }       
        form{
           border: 1px solid black; 
           border-radius: 5px; 
           padding: 1px; 
        }
        .form-control.me-2{
          border: none;        
        }               
        .card {
          border: none !important;     
          margin : 20px;
        }
        .card-title {
          font-weight : bold;           
        }       
        .card-text {  
          margin: 0px 0px 8px 0px;
          font-size:10px;         
          color: gray;       
        }       
        .card-text2 {  
          font-weight : bold;          
        }
        .card-img-top {
          border: none; 
          width: 100%;
          height: 300px;
          position: relative;        
        }       
        .bi-heart {
          position: absolute;
          top: 270px;
          right: 10px;          
          font-size: 24px; 
          cursor: pointer; 
          z-index: 10; 
        }        
        .bi-heart-fill{       
           position: absolute;
           top: 270px; 
           right: 10px; 
           color : #ff0004;         
           font-size: 24px; 
           cursor: pointer; 
           z-index: 10;            
        }
        .page-link{
          margin: 0px 0px 0px 0px ;
        }
        .section-top{
          padding : 0 80px;
        }
        .page-link{
          border: none !important;
          color:gray !important;
          cursor: pointer !important;
        }       
        .pagination .page-item.active .page-link{
          color:black !important;
          background-color : white !important;
        }                                      
    </style>
</head>
	<body>
	   
	   
    <section class="section-top">
      <div class="d-flex align-items-center">
          <div class="col-6">
              <p class="product count"><span>315</span>개의 상품 검색</p>
          </div>
          <div class="col-6 d-flex justify-content-end">
              <div class="me-3">
                  <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                      상품정렬
                  </button>
                  <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#"><i class="bi bi-check2"></i>가격 높은 순</a></li>
                      <li><a class="dropdown-item" href="#"><i class="bi bi-check2"></i>가격 낮은 순</a></li>
                      <li><a class="dropdown-item" href="#"><i class="bi bi-check2"></i>많이 팔린 순</a></li>
                      <li><a class="dropdown-item" href="#"><i class="bi bi-check2"></i>인기 순</a></li>
                      <li><a class="dropdown-item" href="#"><i class="bi bi-check2"></i>최신 순</a></li>
                  </ul>
              </div>
              <div>
                  <form class="d-flex" role="search">
                      <input class="form-control me-2" type="search" placeholder="" aria-label="Search">
                      <button class="search-btn" type="submit">
                          <i class="bi bi-search"></i>
                      </button>
                  </form>
              </div>
          </div>
      </div>        
  </section>
	
	
	   <div class="d-flex justify-content-center">
         <div class="card" style="width: 300px; height: 500px;">           
              <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/레플리카아이콘유니폼.jpg" height="150"></a>
                <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[기아]레플리카아이콘유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">53,000원</p>                  
              </div>				
         </div>
         
         <div class="card"style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/국가대표 1.png" height="150"></a>
                <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[팀코리아] 어센틱 야구유니폼 스페셜 에디션</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>              
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/엘지트윈스4.png" height="150"></a>
                <i class="bi bi-heart"></i>               
              <div class="card-body">
               <p class="card-title"> [LG트윈스] 어센틱 밀리터리 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[한화이글스]블랙 에어포스 레플리카 유니폼.png" height="150"></a>
               <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[한화이글스]블랙 에어포스 레플리카 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">65,000원</p>
              </div>
         </div>         
      </div>
          
       <div class="d-flex justify-content-center">
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[KT위즈] 레플리카 홈 유니폼.jpg" height="150"></a>
               <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[KT위즈] 레플리카 홈 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">65,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[NC다이노스] 레플리카 원정 유니폼.jpg" height="150"></a> 
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[NC다이노스] 레플리카 원정 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">59,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[SSG랜더스] 레드 레플리카 모자.jpg" height="150"></a> 
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[SSG랜더스] 레드 레플리카 모자</p>
                <p class="card-text">기타</p>
                <p class="card-text2">62,800원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[키움히어로즈] 2024 고급형 유니폼 (홈).png" height="150"></a> 
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[키움히어로즈] 2024 고급형 유니폼 (홈)</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">91,000원</p>
              </div>
         </div>
      </div>

      
       <div class="d-flex justify-content-center">
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[롯데자이언츠]G유니세프 프로페셔널 유니폼(IVORY).png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[롯데자이언츠]G유니세프 프로페셔널 유니폼(IVORY)</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>
              </div>
         </div>
         
         <div class="card"style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[삼성라이온즈] 2023 프로페셔널 선데이 유니폼.jpg" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[삼성라이온즈] 2023 프로페셔널 선데이 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">109,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[한화이글스]썸머 블루 원정 레플리카 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[한화이글스]썸머 블루 원정 레플리카 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">75,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[롯데자이언츠]G유니세프 프로페셔널 유니폼(NAVY).png" height="150"></a> 
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[롯데자이언츠]G유니세프 프로페셔널 유니폼(NAVY)</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>
              </div>
         </div>
      </div>
	 
	  
	 <div class="d-flex justify-content-center">
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[삼성라이온즈] 레플리카 원정 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[삼성라이온즈] 레플리카 원정 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">79,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[삼성라이온즈] 레플리카 홈 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[삼성라이온즈] 레플리카 홈 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">79,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[한화이글스]이글스 그레이 레플리카 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[한화이글스]이글스 그레이 레플리카 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">65,000원</p>
              </div>
         </div>
         
         <div class="card"style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[한화이글스]이글스 다크그레이 레플리카 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[한화이글스]이글스 다크그레이 레플리카 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">65,000원</p>
              </div>
         </div>
      </div>
      
      <nav aria-label="..." class="d-flex justify-content-center">
            <ul class="pagination">
                <li class="page-item active"><a class="page-link">1</a></li>
                <li class="page-item"><a class="page-link">2</a></li>
                <li class="page-item"><a class="page-link">3</a></li>
           </ul>
     </nav>      

      <script>
        document.addEventListener('DOMContentLoaded', function() {
        const paginationItems = document.querySelectorAll('.pagination .page-item ');
        paginationItems.forEach(item => {
          item.addEventListener('click', function() {              
            paginationItems.forEach(i => i.classList.remove('active'));             
            this.classList.add('active');
            });
        });
    });
    var i = 0;
    $('.bi-heart').on('click',function(){
        if(i==0){
            $(this).removeClass('bi-heart');
            $(this).addClass('bi-heart-fill');
            i++;
        }else if(i==1){
            $(this).removeClass('bi-heart-fill');
            $(this).addClass('bi-heart');
            i--;
        }      
    });
    $(document).ready(function() {
    $('footer').css({
      'width':'100%'
    });
    });
     </script>     	 
	</body>
</html>