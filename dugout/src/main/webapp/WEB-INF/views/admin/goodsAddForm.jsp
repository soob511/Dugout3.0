<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>상품 등록</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/admin/goodsAddForm.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/common/modal.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/js/admin/goodsAddForm.js"></script>
</head>
<body id="product-insert-body">
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <hr />
    <main>
        <section class="main-container">
            <%@ include file="/WEB-INF/views/admin/adminMenu.jsp" %>
            <div class="containers">
                <div class="product-insert-box">
                    <h2 class="product-insert-title">상품 등록</h2>
                </div>
                <form id="insertGoodsForm" method="post" action="insertGoods" enctype="multipart/form-data">
                    <div class="form-group">
                        <span>분류</span>
                        <select class="team-insert-list" name="goodsTeam">
                            <option selected="selected">팀 선택</option>
                            <option>기아 타이거즈</option>
                            <option>두산 베어스</option>
                            <option>한화 이글스</option>
                            <option>엔씨 다이노스</option>
                            <option>키움 히어로즈</option>
                            <option>엘지 트윈스</option>
                            <option>SSG 랜더스</option>
                            <option>케이티 위즈</option>
                            <option>롯데 자이언츠</option>
                            <option>삼성 라이온즈</option>
                            <option>국가대표</option>
                        </select>
                        <select class="product-kind-insert" name="goodsCategory">
                            <option selected="selected">상품 종류</option>
                            <option>유니폼</option>
                            <option>의류</option>
                            <option>모자</option>
                            <option>응원용품</option>
                            <option>잡화</option>
                        </select>
                    </div>
                    <div class="product-group">
                        <label for="mainImg">메인 이미지</label>
                        <input type="file" class="form-control" name="mainImg" id="mainImg" />
                    </div>
                    <div class="product-group">
                        <label for="detailImg">상세 이미지</label>
                        <input type="file" class="form-control" name="detailImg" id="detailImg" />
                    </div>
                    <div class="product-group">
                        <label for="goodsName">상품이름</label>
                        <input type="text" class="form-control" name="goodsName" id="goodsName" />
                    </div>
                    <div class="product-group">
                        <label for="goodsPrice">가격</label>
                        <input type="number" class="form-control" name="goodsPrice" id="goodsPrice" />
                    </div>
                    <div class="product-group">
                        <label for="goodsStock">재고</label>
                        <input type="number" class="form-control" name="goodsStock" />
                    </div>
                    <div class="action-buttons">
                        <button class="preview-button" type="button" onclick="openPreview()">미리보기</button>
                        <button class="save-button" id="goodsSaveBtn">저장하기</button>
                    </div>
                </form>
            </div>
        </section>
        <div class="modal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상품등록</h5>
                    </div>
                    <div class="modal-body">
                        <p>상품이 등록되었습니다.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
