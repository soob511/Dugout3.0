<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지사항</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	
	<div class="card">
		<div class="card-header">공지사항 쓰기</div>
		<div class="card-body">
	       <form id="writeNoticeForm" method="post" action="writeNotice">
	         <div class="input-group">
	            <div class="input-group-prepend"><span class="input-group-text">제목</span></div>
	            <input id="noticeTitle" type="text" name="noticeTitle" class="form-control">
	         </div>
	         
	         <div class="input-group mt-2">
	            <div class="input-group-prepend"><span class="input-group-text">내용</span></div>
	            <textarea id="noticeContent" name="noticeContent" class="form-control"></textarea>
	         </div>            
	         <div class="mt-3">
	            <button type="submit" class="btn btn-info btn-sm me-2">쓰기</button>
	            <a class="btn btn-info btn-sm" href="noticeList">목록</a>
	         </div>
	      </form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>
