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
	<link href="${pageContext.request.contextPath}/resources/css/notice/noticeDetail.css" rel="stylesheet">
</head>
  <body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<hr>
	<div class="container">
		<div class="notice-detail-box d-flex justify-content-between align-items-center">
			<h2 class="notice-detail-title">공지사항 상세</h2>
		</div>
		<div class = "notice-detail-top fw-bolder">	
			${notice.noticeTitle}
		</div>		
		<hr class="m-0" />	
		<div class="notice-detail-bottom d-flex justify-content-between">
			<p class="m-0">
				<span class="me-2 fw-semibold">관리자</span> 
				<span class="me-2">| </span> 
				<span><fmt:formatDate value="${notice.noticeRegDate}" pattern="yyyy-MM-dd"/></span>
			</p>
			<p class="m-0 text-end">
				<span class="fw-semibold text-end">조회수</span><span> : ${notice.noticeHitCount}</span>
			</p>
		</div>		
		<hr class="m-0"/>
		<div class="notice-detail-content">${notice.noticeContent}	</div>
		<hr class="m-0" />		
		<div class="btn-container">
			<a href="noticeList?pageNo=${pager.pageNo}" class="btn-list">목록</a>
			<a href="updateNotice?noticeId=${notice.noticeId}" class="btn-update">수정</a>
			<a href="deleteNotice?noticeId=${notice.noticeId}" class="btn-delete">삭제</a>
		</div>
	</div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
