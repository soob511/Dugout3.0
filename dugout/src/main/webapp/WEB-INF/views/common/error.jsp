<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지사항</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link href="${pageContext.request.contextPath}/resources/css/common/error.css"  rel="stylesheet" />
</head>
  <body>
	  <jsp:include page="/WEB-INF/views/common/header.jsp" />
	  <hr>
	<div class="container">
	  <div class="notice-insert-box d-flex justify-content-between align-items-center">
			  <h2 class="secure-title">접근권한이 없습니다.</h2>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" /> 
  </body>
</html>
