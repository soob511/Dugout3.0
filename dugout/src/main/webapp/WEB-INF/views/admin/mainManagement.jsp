<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
	<link href="${pageContext.request.contextPath}/resources/css/admin/mainManagement.css"  rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/js/admin/mainManagement.js" ></script>
  </head>
  <body>
  	<jsp:include page="/WEB-INF/views/admin/headerManagement.jsp" /> 
    <hr />
    <div class="main-container">
      <%@ include file="/WEB-INF/views/admin/adminMenu.jsp" %>
        
      <!-- <div class="content-section" id="content-section"></div> -->
    </div>

     <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>