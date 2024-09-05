<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dugout</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <style>
      header {
        width: 100%;
        margin: 0;
        padding: 20px;
        box-sizing: border-box;
      }
      section.banner-section {
        width: 100%;
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
      .banner-img {
        width: 100%;
        height: auto;
        display: block;
      }
      .category {
        width: 100%;
        margin: 0;
        padding: 80px;
      }
      .product {
        width: 100%;
        margin: 0;
        padding: 20px;
        box-sizing: border-box;
      }
      footer {
        width: 100%;
        margin: 0;
        padding: 20px;
        box-sizing: border-box;
      }
      nav hr{
        display: none;
      }
      main hr{
        margin: 0 0 42px 0;
      }
      
      .logo-grid-container {
    display: flex;
    justify-content: center;
    align-items: center;
}

/* header */
html{
    width: 1728px;
    margin: 0 auto;
    caret-color: transparent;
}
#header-body {
    text-align: center;
    min-width: 1280px;
}
.members {
    display: flex;
    justify-content: flex-end;
    margin: 24px 0;
    padding-right: 80px;
}
.members a{
	text-decoration: none;
	color: #333333;
}
.login{
	margin-right: 16px;
}
.logo-icons-section {
    display: inline-block;
    width: 100%;
}

.logo-div, .icons {
    display: inline-block;
    vertical-align: middle;
}

.logo-div img {
    width: 250px; 
    height: 74px; 
	margin-left: 240px;
	margin-bottom: 64px;
}

.icons {
    float: right;
    margin-right: 60px;
    margin-top: 20px;
    position: relative;
}

.icons a {
    text-decoration: none;
    color: #333333;
    font-size: 14px;
    display: inline-block;
}

.icons img {
    width: 34px;
    height: 30px;
    margin-right: 16px;
}

.icons span {
    font-weight: bold;
    font-size: 16px;
    padding-right: 16px;
}

.cart-badge {
    position: absolute;
    right: 20px;
    top: -8px;
    background-color: #333333;
    color: #ffffff;
    border-radius: 50%;
    width: 24px;
    height: 24px;
    line-height: 22px;
    padding-left: 8px;

    text-align: center;
    font-size: 12px;
    font-weight: bold;
}
/* nav */
  nav {
      text-align: center;
        margin-bottom: 44px;
    }
    nav a{
      font-size: 24px;
      font-weight: bold;
      color:#333333;
      text-decoration: none;
      margin: 0 72px;
    }
/* logo */
.logo-grid {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    background-color: #fff;
}

.logo-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: #ffffff;
    width: 100px;
    height: 100px;
    cursor: pointer;
    transition: opacity 0.1s ease;
    padding: 10px;
}

.logo-item img {
    object-fit: contain;
    width: 100%;
    height: 100%;
    padding: 0px 10px;
}

.logo-item.dimmed {
    opacity: 0.3;
}
/* product */
	.row{
          width: 100%;     
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
/* footer */
.footer-body {
	color: #ffffff;
	font-family: "Pretendard-Regular";
}

.footer-container {
	background-color: #333333;
	width : 100% !important;
	padding: 20px;
}

.footer-container .col-logo {
	flex: 0 0 200px;
	max-width: 200px;
}

.footer-container .col h5 {
	color: #ffffff;
	margin-bottom: 10px;
}

.footer-container .nav-link {
	color: #cccccc;
	font-size: 14px;
}

.footer-container .nav-link:hover {
	color: #ffffff;
}

.footer-container .col img {
	width: 250px;
	height: 75px;
	margin-bottom: 10px;
}

.footer-container .text-muted {
	color: #cccccc !important;
}
    </style>
  </head>
  <body>
    <header>
    		   <div id="header-body">
        <div class="members">
            <a href="${pageContext.request.contextPath}/Member/login" class="login">로그인</a>
            <a href="${pageContext.request.contextPath}/Member/joinForm" class="member">회원가입</a>
        </div>
        <div class="logo-icons-section">
            <div class="logo-div">
                <a href="${pageContext.request.contextPath}/"><img class="logo" src="resources/image/logo/logo.png"></a>
            </div>
            <div class="icons">
                <a href="${pageContext.request.contextPath}/Member/memberInformation" class="myPage">
                    <img src="resources//image/logo/myPage.png" class="myPage-img"><br>
                    <span>마이페이지</span>
                </a>
                <a href="${pageContext.request.contextPath}/Cart" class="cart">
                    <img src="resources/image/logo/cart.png" class="cart-img"><br>
                    <span>장바구니</span>
                    <span class="cart-badge">0</span>
                </a>
            </div>
        </div>
    </div>
    
    
    </header>
    <nav>
     <a href="${pageContext.request.contextPath}/Product/allProduct">전체상품</a>
      <a href="${pageContext.request.contextPath}/Product/newProduct">신상품</a>
      <a href="${pageContext.request.contextPath}/Product/recommendProduct">추천상품</a>
        <a href="${pageContext.request.contextPath}/Product/bestProduct">BEST상품</a>
    
    </nav>
    <section class="banner-section">
       <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="resources/image/banner/배너2.png" class="d-block w-100"  style="height: 12cm;"alt="...">
          </div>
          <div class="carousel-item">
            <img src="resources/image/banner/kboallstar상품.jpg" class="d-block w-100"  style="height: 12cm;"alt="...">
          </div>
          <div class="carousel-item">
            <img src="resources/image/banner/배너3.jpg" class="d-block w-100"  style="height: 12cm;"alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>
    
    <main>
      <article class="category">
      <div class="logo-grid-container">
        <div class="logo-grid">
            <div class="logo-item selected" id="all">
                <img src="resources/image/teamLogo/kboTeamLogo.png" alt="ALL Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/koreaTeamLogo.png" alt="Korea Team Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/lgTeamLogo.png" alt="LG Twins Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/ktTeamLogo.png" alt="KT Wiz Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/ssgTeamLogo.png" alt="SSG Landers Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/ncTeamLogo.png" alt="NC Dinos Logo">
            </div>
            <div class="logo-item" id="dusan">
                <img src="resources/image/teamLogo/doosanTeamLogo.png" alt="Doosan Bears Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/kiaTeamLogo.png" alt="KIA Tigers Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/lotteTeamLogo.png" alt="Lotte Giants Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/samsungTeamLogo.png" alt="Samsung Lions Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/hanhwaTeamLogo.png" alt="Hanwha Eagles Logo">
            </div>
            <div class="logo-item">
                <img src="resources/image/teamLogo/kiwoomTeamLogo.png" alt="Kiwoom Heroes Logo">
            </div>
        </div>
    </div>
      
      </article>
      <hr>
      <article class="product">
      
       
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
              <a href="${pageContext.request.contextPath}/Product/detailProduct"><img class="card-img-top" src="resources/image/product/레플리카아이콘유니폼.jpg" height="150"></a>
                <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[기아]레플리카아이콘유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">53,000원</p>                  
              </div>				
         </div>
                                                                                                                                                                                                                                                                                                           
         <div class="card"style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/국가대표 1.png" height="150"></a>
                <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[팀코리아] 어센틱 야구유니폼 스페셜 에디션</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>              
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/엘지트윈스4.png" height="150"></a>
                <i class="bi bi-heart"></i>               
              <div class="card-body">
               <p class="card-title"> [LG트윈스] 어센틱 밀리터리 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[한화이글스]블랙 에어포스 레플리카 유니폼.png" height="150"></a>
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
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[KT위즈] 레플리카 홈 유니폼.jpg" height="150"></a>
               <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[KT위즈] 레플리카 홈 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">65,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[NC다이노스] 레플리카 원정 유니폼.jpg" height="150"></a> 
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[NC다이노스] 레플리카 원정 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">59,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[SSG랜더스] 레드 레플리카 모자.jpg" height="150"></a> 
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[SSG랜더스] 레드 레플리카 모자</p>
                <p class="card-text">기타</p>
                <p class="card-text2">62,800원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[키움히어로즈] 2024 고급형 유니폼 (홈).png" height="150"></a> 
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
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[롯데자이언츠]G유니세프 프로페셔널 유니폼(IVORY).png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[롯데자이언츠]G유니세프 프로페셔널 유니폼(IVORY)</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">149,000원</p>
              </div>
         </div>
         
         <div class="card"style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[삼성라이온즈] 2023 프로페셔널 선데이 유니폼.jpg" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[삼성라이온즈] 2023 프로페셔널 선데이 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">109,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[한화이글스]썸머 블루 원정 레플리카 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[한화이글스]썸머 블루 원정 레플리카 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">75,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[롯데자이언츠]G유니세프 프로페셔널 유니폼(NAVY).png" height="150"></a> 
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
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[삼성라이온즈] 레플리카 원정 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[삼성라이온즈] 레플리카 원정 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">79,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[삼성라이온즈] 레플리카 홈 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[삼성라이온즈] 레플리카 홈 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">79,000원</p>
              </div>
         </div>
         
         <div class="card" style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[한화이글스]이글스 그레이 레플리카 유니폼.png" height="150"></a>
              <i class="bi bi-heart"></i>
              <div class="card-body">
                <p class="card-title">[한화이글스]이글스 그레이 레플리카 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">65,000원</p>
              </div>
         </div>
         
         <div class="card"style="width: 300px; height: 500px;">
          <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="resources/image/product/[한화이글스]이글스 다크그레이 레플리카 유니폼.png" height="150"></a>
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
      
      
      </article>
    </main>
    
    
    
    
    <footer>
    <div class="footer-container">
		<footer
			class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-3 my-3 border-top">
			<div class="col mb-2 col-logo">
				<a href="/" class="mb-2 link-dark text-decoration-none"> <img
					src="resources/image/logo/footerDugout.png" alt="Dugout Logo" />
				</a>
				<p class="text-muted">© 2024</p>
			</div>


			<div class="col mb-2"></div>

			<div class="col mb-2">
				<h5>이용안내</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">이용정책</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">패널티 정책</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">커뮤니티 가이드라인</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">About</a></li>
				</ul>
			</div>

			<div class="col mb-2">
				<h5>고객지원</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">서비스 소개</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">스토어 안내</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">전수빈 이성노 안중건
							이승혁</a></li>
				</ul>
			</div>

			<div class="col mb-2">
				<h5>고객센터 1588-0603</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">운영시간 평일
							10:00 - 18:00</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">주말, 공휴일 휴무</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">점심시간 평일
							13:00 - 14:00</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">서울특별시 종로구
							창경궁로 254 동원빌딩 402호</a></li>
				</ul>
			</div>
		</footer>
	</div>
    
    </footer>
<!-- 
    <script>
      $(document).ready(function () {
        $("header").load("Header.html");
        $("nav").load("Nav.html");
        $("section.banner-section").load("Banner.html");
        $("article.category").load("TeamLogoCategory.html");
        $("article.product").load("Product.html", function() {
                initializePagination(); 
            });
        $("footer").load("Footer.html");
      });
      function initializePagination() {
            $('.pagination .page-item').on('click', function() {
                $('.pagination .page-item').removeClass('active');
                $(this).addClass('active');
            });
        }
    </script> -->
  </body>
</html>
