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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link href="${pageContext.request.contextPath}/resources/css/notice/noticeList.css"  rel="stylesheet" />
</head>
  <body>
	  <jsp:include page="/WEB-INF/views/common/header.jsp" />
	  <hr>
	<div class="container">
	  <div class="notice-insert-box d-flex justify-content-between align-items-center">
			  <h2 class="notice-insert-title">공지사항</h2>
		</div>
	

			<table class="table table-sm table-bordered">
	              <tr>
	                 <th style="width:30px">번호</th>
	                 <th style="width:300px">제목</th>
	                 <th style="width:70px">날짜</th>
	                 <th style="width:70px">조회수</th>
	                 <th style="width:70px">글쓴이</th>
	              </tr>
	              
	              <c:forEach  items="${list}" var="notice">
	              		<tr>
	              			<td>${notice.noticeId}</td>
	              			<td><a href="noticeDetail?noticeId=${notice.noticeId}">${notice.noticeTitle}</a></td>
	              			<td><fmt:formatDate value="${notice.noticeRegDate}" pattern="yyyy-MM-dd"/></td>
	              			<td>${notice.noticeHitCount}</td>
	              			<td>관리자</td>
	              		</tr>
	              </c:forEach>
	              
	              <tr>
					  <td colspan="5" class="text-center">
					    <div class="d-flex justify-content-between align-items-center">
					     
					      <div class="mx-auto">
					        <a href="noticeList?pageNo=1" class="btn btn-sm"><i class="bi bi-chevron-double-left"></i></a>
					        <c:if test="${pager.groupNo > 1}">
					          <a href="noticeList?pageNo=${pager.startPageNo - 1}" class="btn btn-sm"><i class="bi bi-chevron-compact-left"></i></a>
					        </c:if>
					        <c:forEach begin="${pager.startPageNo}" end="${pager.endPageNo}" step="1" var="i">
					          <c:if test="${pager.pageNo == i}">
					            <a href="noticeList?pageNo=${i}" class="btn btn-sm fw-bold">${i}</a>
					          </c:if>
					          <c:if test="${pager.pageNo != i}">
					            <a href="noticeList?pageNo=${i}" class="btn btn-sm">${i}</a>
					          </c:if>
					        </c:forEach>
					        <c:if test="${pager.pageNo < pager.totalPageNo}">
					          <a href="noticeList?pageNo=${pager.endPageNo + 1}" class="btn btn-sm"><i class="bi bi-chevron-compact-right"></i></a>
					        </c:if>
					        <a href="noticeList?pageNo=${pager.totalPageNo}" class="btn btn-sm"><i class="bi bi-chevron-double-right"></i></a>
					      </div>
					
					      
					      <div>
					        <a href="writeNoticeForm" class="btn btn-sm btn-writenotice">게시물 쓰기</a>
					      </div>
					    </div>
					  </td>
					</tr>

	            </table>
			</div>

	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" /> 
  </body>
</html>
