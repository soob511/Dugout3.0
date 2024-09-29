<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지사항 작성</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/notice/noticeForm.css" rel="stylesheet" />
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <hr>
    <div class="container">
        <div class="notice-insert-box d-flex justify-content-between align-items-center">
            <h2 class="notice-insert-title">공지사항 작성</h2>
        </div>
        <form id="writeNoticeForm" method="post" action="writeNotice">
            <div class="form-group">
                <label for="noticeTitle">제목</label>
                <input id="noticeTitle" type="text" name="noticeTitle" class="form-control">
            </div>

            <div class="form-group mt-2">
                <label for="noticeContent">내용</label>
                <textarea id="noticeContent" name="noticeContent" class="form-control"></textarea>
            </div>

            <div class="btn-container">
                <button type="submit" class="btn-write">쓰기</button>
                <a class="btn-list" href="noticeList">목록</a>
            </div>
        </form>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>