<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>추천 상품</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" />
    <link href="${pageContext.request.contextPath}/resources/css/home/goods.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/home/goods.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/common/modal.css" rel="stylesheet" />
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <c:choose>
        <c:when test="${goodsTeam == '국가대표'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/국가대표배너.png" alt="기아 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '엘지 트윈스'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/LG배너.png" alt="엘지 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '케이티 위즈'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/KT배너.png" alt="케이티 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == 'SSG 랜더스'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/SSG배너.png" alt="SSG 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '엔씨 다이노스'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/NC배너.png" alt="엔씨 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '두산 베어스'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/두산배너.png" alt="두산 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '기아 타이거즈'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/기아배너.png" alt="기아 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '롯데 자이언츠'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/롯데배너.png" alt="롯데 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '삼성 라이온즈'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/삼성배너.png" alt="삼성 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '한화 이글스'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/한화배너.png" alt="한화 팀 이미지" />
        </c:when>
        <c:when test="${goodsTeam == '키움 히어로즈'}">
            <img id="teamImg" src="${pageContext.request.contextPath}/resources/image/banner/키움배너.png" alt="키움 팀 이미지" />
        </c:when>
    </c:choose>

    <jsp:include page="/WEB-INF/views/home/teamLogoCategory.jsp" />

    <section class="d-flex justify-content-between align-items-center section-top">
        <div>
            <p class="product count"><span>${teamRows}</span>개의 상품 검색</p>
        </div>
        <div class="d-flex">
            <div class="dropdown me-3">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="true">
                    상품정렬
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingTeam?goodsTeam=${goodsTeam}&sort=가격높은순">가격 높은 순</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingTeam?goodsTeam=${goodsTeam}&sort=가격낮은순">가격 낮은 순</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingTeam?goodsTeam=${goodsTeam}&sort=많이팔린순">많이 팔린 순</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingTeam?goodsTeam=${goodsTeam}&sort=인기순">인기 순</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/goods/sortingTeam?goodsTeam=${goodsTeam}&sort=최신순">최신 순</a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <div class="container d-flex">
        <div class="row d-flex justify-content-start gap-2">
            <c:forEach items="${list}" var="goods">
                <div class="card col-2" style="width: 300px; height: 450px">
                    <a href="${pageContext.request.contextPath}/goods/goodsDetail?goodsId=${goods.goodsId}">
                        <img class="card-img-top" id="card-img" src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}" height="150" style="${goods.goodsStatus == 0 ? 'opacity: 0.5;' : ''}" />
                    </a>
                    <c:if test="${goods.goodsStatus == 0}">
                        <p class="overlay out-of-stock">SOLD OUT</p>
                    </c:if>
                    <c:if test="${goods.goodsStatus != 0}">
                        <i class="bi bi-heart" data-goods-id="${goods.goodsId}"></i>
                    </c:if>
                    <div class="card-body">
                        <p class="card-title">[${goods.goodsTeam}] ${goods.goodsName}</p>
                        <p class="card-text">${goods.goodsCategory}</p>
                        <p class="card-text2">
                            <span>
                                <fmt:formatNumber value="${goods.goodsPrice}" pattern="###,###" />
                            </span>
                            <span>원</span>
                        </p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="?pageNo=1&goodsTeam=${goodsTeam}&sort=${param.sort != null ? param.sort :'최신순'}" aria-label="First">
                    <span aria-hidden="true"><i class="bi bi-chevron-double-left"></i></span>
                </a>
            </li>
            <li class="page-item">
                <c:if test="${pager.groupNo > 1}">
                    <a class="page-link" href="?pageNo=${pager.startPageNo - 1}&goodsTeam=${goodsTeam}&sort=${param.sort != null ? param.sort :'최신순'}" aria-label="Previous">
                        <span aria-hidden="true"><i class="bi bi-chevron-left"></i></span>
                    </a>
                </c:if>
            </li>
            <c:forEach begin="${pager.startPageNo}" end="${pager.endPageNo}" step="1" var="i">
                <li class="page-item ${pager.pageNo == i ? 'active' : ''}">
                    <a href="?pageNo=${i}&goodsTeam=${goodsTeam}&sort=${param.sort != null ? param.sort :'최신순'}" class="page-link">${i}</a>
                </li>
            </c:forEach>
            <li class="page-item">
                <c:if test="${pager.groupNo < pager.totalGroupNo}">
                    <a class="page-link" href="?pageNo=${pager.endPageNo + 1}&goodsTeam=${goodsTeam}&sort=${param.sort != null ? param.sort :'최신순'}" aria-label="Next">
                        <span aria-hidden="true"><i class="bi bi-chevron-right"></i></span>
                    </a>
                </c:if>
            </li>
            <li class="page-item">
                <c:if test="${pager.groupNo < pager.totalGroupNo}">
                    <a class="page-link" href="?pageNo=${pager.totalPageCount}&goodsTeam=${goodsTeam}&sort=${param.sort != null ? param.sort :'최신순'}" aria-label="Last">
                        <span aria-hidden="true"><i class="bi bi-chevron-double-right"></i></span>
                    </a>
                </c:if>
            </li>
        </ul>
    </nav>

	<div class="modal" tabindex="-1">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title">관심상품 추가</h5>
               </div>
               <div class="modal-body">
                  <p></p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary"
                     data-bs-dismiss="modal">닫기</button>
               </div>
            </div>
         </div>
      </div>
      
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>