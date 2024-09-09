<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		게시물 목록
	</div>
	<div class = "card-body">	
		<table class="table table-sm table-bordered">
              <tr>
                 <th style="width:30px">번호</th>
                 <th style="width:300px">제목</th>
                 <th style="width:70px">날짜</th>
                 <th style="width:70px">조회수</th>
                 <th style="width:70px">글쓴이</th>
              </tr>
              <c:forEach items="${list}" var="notice">
              		<tr>
              			<td>${notice.noticeId}</td>
              			<td><a href="noticeDetail?noticeId=${notice.noticeId}">${notice.noticeTitle}</a></td>
              			<td><fmt:formatDate value="${notice.noticeRegDate}" pattern="yyyy-MM-dd"/></td>
              			<td>${notice.noticeHitCount}</td>
              			<td>관리자</td>
              		</tr>
              </c:forEach>
            </table>
		</div>
	</div>
		<a href="writeNoticeForm">게시물 쓰기</a>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" /> 
  </body>
</html>
