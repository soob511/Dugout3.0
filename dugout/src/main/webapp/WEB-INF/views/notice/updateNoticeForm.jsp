<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지사항</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <link href="${pageContext.request.contextPath}/resources/css/notice/updateNoticeForm.css" rel="stylesheet" />
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    
    <div class="container">	
        <div class="notice-update-box">
            <h2 class="notice-update-title">공지사항 수정</h2>
        </div>		
		
        <div class="notice-update-readonly d-flex justify-content-between">
            <p class="m-0">
                <span class="me-2 fw-semibold" id="noticeId">No. ${notice.noticeId}</span> 
                <span class="me-2">| </span> 
                <span><fmt:formatDate value="${notice.noticeRegDate}" pattern="yyyy-MM-dd"/></span>
            </p>
            <p class="m-0 text-end">
                <span class="fw-semibold text-end">조회수</span><span> : ${notice.noticeHitCount}</span>
            </p>
        </div>		
        <hr class="m-0"/>	

        <form id="updateNoticeForm" method="post" action="updateNotice?noticeId=${notice.noticeId}">
            <div class="input-group mt-2">
                <label for="noticeTitle">제목</label>
                <input id="noticeTitle" type="text" name="noticeTitle" class="form-control" value="${notice.noticeTitle}">
            </div>
            <div class="input-group mt-2">
                <label for="noticeContent">내용</label>
                <textarea id="noticeContent" name="noticeContent" class="form-control">${notice.noticeContent}</textarea>
            </div>           

            <div class="mt-3 btn-container">
                <button type="submit" class="btn-update">수정</button>
                <a class="btn-list" href="noticeList">목록</a>
            </div>
        </form>
    </div>	

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>