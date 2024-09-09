<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지사항</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
</head>
  <body>
	  <jsp:include page="/WEB-INF/views/common/header.jsp" />
		<div class="card">
	<div class="card-header">
		게시물 정보
	</div>
	<div class = "card-body">	
             <p>번호: ${notice.noticeId}</p>
            <p>제목: ${notice.noticeTitle}</p>
            <p>글쓴이:관리자</p>
            <p>날짜: <fmt:formatDate value="${notice.noticeRegDate}" pattern="yyyy-MM-dd"/></p>
            <p>조회수: ${board.noticeHitCount}</p>
            <p>내용: ${notice.noticeContent}</p>
            
            <hr/>
            
            <a href="noticeList" class="btn btn-info btn-sm">목록</a>
            <a href="updateNotice?noticeId=${notice.noticeId}" class="btn btn-info btn-sm">수정</a>
            <a href="deleteNotice?noticeId=${notice.noticeId}" class="btn btn-info btn-sm">삭제</a>

	</div>
</div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
