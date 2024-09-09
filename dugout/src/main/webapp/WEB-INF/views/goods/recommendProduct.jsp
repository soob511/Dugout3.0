<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천 상품</title>
<link href="../common/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="../common/bootstrap/bootstrap.min.js.map"></script>
    <script src="../common/bootstrap/jquery.min.js.map"></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="RecommendProduct.css">
</head>
<body>
    <header></header>
    <nav></nav>
<main id="recomm-main">
    <section class="section-top">
        <div class="d-flex align-items-center">
            <div class="col-6">
                <p class="product-count"><span>12</span>개의 상품 검색</p>
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
    <section>
    <div class="d-flex justify-content-center">
        <div class="card" style="width: 300px; height: 500px;">           
            <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[한화이글스]블랙 에어포스 레플리카 유니폼.png" height="150"></a>
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[한화이글스]블랙 에어포스 레플리카 유니폼</p>
            <p class="card-text">유니폼</p>
            <p class="card-text2">65,000원</p>                  
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
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/이글스 스케치 부채.jpg"height="150"></a>                
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[한화이글스] 이글스 스케치 부채</p>
            <p class="card-text">기타</p>
            <p class="card-text2">9,900원</p>
            </div>
        </div>
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[KBO] 2024 KBO 올스타전 크뱅기 기념구.jpg" height="150"></a>                
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[KBO] 2024 KBO 올스타전 크뱅기 기념구</p>
            <p class="card-text">기념상품</p>
            <p class="card-text2">12,000원</p>
            </div>
        </div>         
    </div>
    <div class="d-flex justify-content-center">
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[국가대표] 패턴 리본머리띠 (BLUE).jpg" height="150"></a>               
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[국가대표] 패턴 리본머리띠 (BLUE)</p>
            <p class="card-text">기념상품</p>
            <p class="card-text2">4,000원</p>
            </div>
    </div>
    <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[삼성라이온즈] 2023 프로페셔널 선데이 유니폼.jpg" height="150"></a>               
        <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[삼성라이온즈] 2023 프로페셔널 선데이 유니폼</p>
            <p class="card-text">유니폼</p>
            <p class="card-text2">109,000원</p>
            </div>
    </div>
    <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[두산베어스] 오리지널 벨크로 캡.jpg" height="150"></a>               
        <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[두산베어스] 오리지널 벨크로 캡</p>
            <p class="card-text">모자</p>
            <p class="card-text2">25,000원</p>
            </div>
    </div>
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[키움히어로즈] 스페셜 유니폼.png" height="150"></a>               
        <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[키움히어로즈] 스페셜 유니폼</p>
            <p class="card-text">유니폼</p>
            <p class="card-text2">59,000원</p>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center">
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[국가대표] 야구대표팀 반팔바람막이.jpg" height="150"></a>               
        <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[국가대표] 야구대표팀 반팔바람막이</p>
            <p class="card-text">기타</p>
            <p class="card-text2">135,000원</p>
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
            <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[삼성라이온즈] 레플리카 원정 유니폼.png" height="150"></a>               
            <i class="bi bi-heart"></i>
                <div class="card-body">
                <p class="card-title">[삼성라이온즈] 레플리카 원정 유니폼</p>
                <p class="card-text">유니폼</p>
                <p class="card-text2">79,000원</p>
                </div>
        </div>
        <div class="card" style="width: 300px; height: 500px;">
            <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[SSG랜더스] 레드 레플리카 모자.jpg" height="150"></a>               
                <i class="bi bi-heart"></i>
                <div class="card-body">
                <p class="card-title">[SSG랜더스] 레드 레플리카 모자</p>
                <p class="card-text">모자</p>
                <p class="card-text2">39,000원</p>
                </div>
            </div>   
    </div>
    <div class="d-flex justify-content-center hide-section">
        <div class="card" style="width: 300px; height: 500px;">           
            <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[한화이글스]블랙 에어포스 레플리카 유니폼.png" height="150"></a>
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[한화이글스]블랙 에어포스 레플리카 유니폼</p>
            <p class="card-text">유니폼</p>
            <p class="card-text2">65,000원</p>                  
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
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/이글스 스케치 부채.jpg"height="150"></a>                
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[한화이글스] 이글스 스케치 부채</p>
            <p class="card-text">기타</p>
            <p class="card-text2">9,900원</p>
            </div>
        </div>
        <div class="card" style="width: 300px; height: 500px;">
        <a href="../productDetails/PoductDetails.html"><img class="card-img-top" src="../common/image/product/[KBO] 2024 KBO 올스타전 크뱅기 기념구.jpg" height="150"></a>                
            <i class="bi bi-heart"></i>
            <div class="card-body">
            <p class="card-title">[KBO] 2024 KBO 올스타전 크뱅기 기념구</p>
            <p class="card-text">기념상품</p>
            <p class="card-text2">12,000원</p>
            </div>
        </div>         
    </div>
    <!--
    <nav aria-label="..." class="d-flex justify-content-center">
        <ul class="pagination pagination-sm">
            <li class="page-item active" aria-current="page">
                        <span class="page-link">1</span>
            </li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
        </ul>
    </nav>
    -->
    </section>
</main>
<footer></footer>
<script src="RecommendProduct.js"></script>     	 
</body>
</html>