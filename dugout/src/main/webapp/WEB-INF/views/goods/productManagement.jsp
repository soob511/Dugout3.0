<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>상품 관리</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="ProductManagement.css" />
    <script src="ProductManagement.js"></script>
  </head>
  <body>
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
              <th scope="col"><input type="checkbox" id="selectAll" /> 전체</th>
              <th scope="col">상품 이미지</th>
              <th scope="col">팀 및 상품명</th>
              <th scope="col">판매가격</th>
              <th scope="col">재고</th>
              <th scope="col">판매 상태</th>
              <th scope="col">수정</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>
                <img
                  src="../common/image/purchaseProducts/doosanJacket.jpg"
                  class="img-thumbnail"
                  alt="상품 이미지"
                />
              </td>
              <td>
                <div class="d-flex">
                  <select class="form-select me-2">
                    <option selected>팀 선택</option>
                    <option value="1">All</option>
                    <option value="2">국가대표</option>
                    <option value="3">엘지 트윈스</option>
                    <option value="4">케이티 위즈</option>
                    <option value="5">SSG 랜더스</option>
                    <option value="6">엔씨 다이노즈</option>
                    <option value="7" selected>두산 베어스</option>
                    <option value="8">기아 타이거즈</option>
                    <option value="9">롯데 자이언트</option>
                    <option value="10">삼성 라이온즈</option>
                    <option value="11">한화 이글스</option>
                    <option value="12">키움 히어로즈</option>
                  </select>
                  <select class="form-select">
                    <option selected>상품 종류</option>
                    <option value="1" selected>유니폼</option>
                    <option value="2">모자</option>
                    <option value="3">기념품</option>
                  </select>
                </div>
                <div class="mb-2">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="[두산베어스] 춘추점퍼"
                  />
                </div>
              </td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  placeholder="89,000원"
                />
              </td>
              <td>
                <input type="text" class="form-control" placeholder="8" />
              </td>
              <td>
                <select class="form-select">
                  <option value="판매 중" selected>판매 중</option>
                  <option value="품절">품절</option>
                </select>
              </td>
              <td>
                <button class="btn btn-dark" onclick="saveData()">
                  수정하기
                </button>
              </td>
            </tr>

            <tr>
              <td><input type="checkbox" /></td>
              <td>
                <img
                  src="../common/image/purchaseProducts/hanhwaJacket.jpg"
                  class="img-thumbnail"
                  alt="상품 이미지"
                />
              </td>
              <td>
                <div class="d-flex">
                  <select class="form-select me-2">
                    <option selected>팀 선택</option>
                    <option value="1">All</option>
                    <option value="2">국가대표</option>
                    <option value="3">엘지 트윈스</option>
                    <option value="4">케이티 위즈</option>
                    <option value="5">SSG 랜더스</option>
                    <option value="6">엔씨 다이노즈</option>
                    <option value="7">두산 베어스</option>
                    <option value="8">기아 타이거즈</option>
                    <option value="9">롯데 자이언트</option>
                    <option value="10">삼성 라이온즈</option>
                    <option value="11" selected>한화 이글스</option>
                    <option value="12">키움 히어로즈</option>
                  </select>
                  <select class="form-select">
                    <option selected>상품 종류</option>
                    <option value="1" selected>유니폼</option>
                    <option value="2">모자</option>
                    <option value="3">기념품</option>
                  </select>
                </div>
                <div class="mb-2">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="[한화이글스] 2024 오렌지 레플리카 유니폼"
                  />
                </div>
              </td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  placeholder="65,000원"
                />
              </td>
              <td>
                <input type="text" class="form-control" placeholder="2" />
              </td>
              <td>
                <select class="form-select">
                  <option value="판매 중" selected>판매 중</option>
                  <option value="품절">품절</option>
                </select>
              </td>
              <td>
                <button class="btn btn-dark" onclick="saveData()">
                  수정하기
                </button>
              </td>
            </tr>

            <tr>
              <td><input type="checkbox" /></td>
              <td>
                <img
                  src="../common/image/purchaseProducts/ssgCap.jpg"
                  class="img-thumbnail"
                  alt="상품 이미지"
                />
              </td>
              <td>
                <div class="d-flex">
                  <select class="form-select me-2">
                    <option selected>팀 선택</option>
                    <option value="1">All</option>
                    <option value="2">국가대표</option>
                    <option value="3">엘지 트윈스</option>
                    <option value="4">케이티 위즈</option>
                    <option value="5">SSG 랜더스</option>
                    <option value="6">엔씨 다이노즈</option>
                    <option value="7">두산 베어스</option>
                    <option value="8">기아 타이거즈</option>
                    <option value="9">롯데 자이언트</option>
                    <option value="10">삼성 라이온즈</option>
                    <option value="11" selected>한화 이글스</option>
                    <option value="12">키움 히어로즈</option>
                  </select>
                  <select class="form-select">
                    <option selected>상품 종류</option>
                    <option value="1">유니폼</option>
                    <option value="2" selected>모자</option>
                    <option value="3">기념품</option>
                  </select>
                </div>
                <div class="mb-2">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="[SSG랜더스] 레드 레플리카 모자"
                  />
                </div>
              </td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  placeholder="39,000원"
                />
              </td>
              <td>
                <input type="text" class="form-control" placeholder="0" />
              </td>
              <td>
                <select class="form-select">
                  <option value="판매 중">판매 중</option>
                  <option value="품절" selected>품절</option>
                </select>
              </td>
              <td>
                <button class="btn btn-dark" onclick="saveData()">
                  수정하기
                </button>
              </td>
            </tr>

            <tr>
              <td><input type="checkbox" /></td>
              <td>
                <img
                  src="../common/image/purchaseProducts/samsungJacket.jpg"
                  class="img-thumbnail"
                  alt="상품 이미지"
                />
              </td>
              <td>
                <div class="d-flex">
                  <select class="form-select me-2">
                    <option selected>팀 선택</option>
                    <option value="1">All</option>
                    <option value="2">국가대표</option>
                    <option value="3">엘지 트윈스</option>
                    <option value="4">케이티 위즈</option>
                    <option value="5">SSG 랜더스</option>
                    <option value="6">엔씨 다이노즈</option>
                    <option value="7">두산 베어스</option>
                    <option value="8">기아 타이거즈</option>
                    <option value="9">롯데 자이언트</option>
                    <option value="10" selected>삼성 라이온즈</option>
                    <option value="11">한화 이글스</option>
                    <option value="12">키움 히어로즈</option>
                  </select>
                  <select class="form-select">
                    <option selected>상품 종류</option>
                    <option value="1" selected>유니폼</option>
                    <option value="2">모자</option>
                    <option value="3">기념품</option>
                  </select>
                </div>
                <div class="mb-2">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="[삼성라이온즈] 2023 프로페셔널 선데이 유니폼"
                  />
                </div>
              </td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  placeholder="109,000원"
                />
              </td>
              <td>
                <input type="text" class="form-control" placeholder="4" />
              </td>
              <td>
                <select class="form-select">
                  <option value="판매 중" selected>판매 중</option>
                  <option value="품절">품절</option>
                </select>
              </td>
              <td>
                <button class="btn btn-dark" onclick="saveData">
                  수정하기
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
