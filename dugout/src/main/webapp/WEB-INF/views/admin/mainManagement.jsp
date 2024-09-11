<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<link  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/admin/mainManagement.css"  rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/js/admin/mainManagement.js" ></script>
  </head>
  <body>
  	<jsp:include page="/WEB-INF/views/admin/headerManagement.jsp" /> 
    <div class="main-container">
      <%@ include file="/WEB-INF/views/admin/adminMenu.jsp" %>
      
      <div class="content-section" id="content-section">
      	<div class="container mt-5" style="margin-bottom: 160px; padding-left: 0">
      <div class="product-insert-box">
        <h2 class="product-insert-title">상품 관리</h2>
      </div>
      <div class="d-flex justify-content-end mb-3" style="margin-top: 24px">
        <input type="text" class="form-control me-2" placeholder="검색" />
        <button class="btn btn-dark">검색</button>
      </div>

      <div class="table-responsive">
        <table class="table align-middle">
          <thead>
            <tr>
              <th scope="col">상품 이미지</th>
              <th scope="col">팀 및 상품명</th>
              <th scope="col">판매가격</th>
              <th scope="col">재고</th>
              <th scope="col">판매 상태</th>
              <th scope="col">이미지(메인/상세)</th>
              <th scope="col">수정</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${goods}" var="goods">
            <tr>
              <td>
                <img
                  src="${pageContext.request.contextPath}/goods/getImg?goodsId=${goods.goodsId}"
                  class="img-thumbnail"
                  alt="상품 이미지"
                />
              </td>
              <td>
              <div class="d-flex">
                  <select class="form-select me-2">
                  	<c:forEach items="${teams}" var="team">
                  		<option ${team == goods.goodsTeam ? "selected" : ""}>${team}</option>
                  	</c:forEach>
                  </select>
                  <select class="form-select">
                    <c:forEach items="${categories}" var="category">
                  		<option ${category == goods.goodsCategory ? "selected" : ""}>${category}</option>
                  	</c:forEach>
                  </select>
                 </div>
                <div class="mb-2">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="[${goods.goodsTeam}] ${goods.goodsName}"
                  />
                </div>
              </td>
              <td id="form-status">
                <input
                  type="text"
                  class="form-control"
                  placeholder="${goods.goodsPrice}"
                />
              </td>
              <td id="form-status">
                <input type="text" class="form-control" placeholder="${goods.goodsStock}"/>
              </td>
              <td>
                <select class="form-select">
                  <option ${goods.goodsStatus == 0 ? "selected" : ""}>품절</option>
                  <option ${goods.goodsStatus == 1 ? "selected" : ""}>판매 중</option>
                  <option ${goods.goodsStatus == 2 ? "selected" : ""}>판매 정지</option>
                </select>
              </td>
              <td id="form-img">
				<div>
					<input type="file" class="form-control mb-3" name="mainImg" />
					<input type="file" class="form-control" name="detailImg" />
				</div>
              </td>
              <td>
                <button class="btn btn-dark" onclick="saveData()">
                  수정하기
                </button>
              </td>
            </tr>
			</c:forEach>
          </tbody>
        </table>
      </div>
    </div>
      </div>
    </div>
     <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>