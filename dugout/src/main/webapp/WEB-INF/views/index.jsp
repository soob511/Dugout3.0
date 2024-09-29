<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dugout</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/main.css"  rel="stylesheet" />
  </head>
  <body>
	  <jsp:include page="/WEB-INF/views/common/header.jsp" /> 
	  <jsp:include page="/WEB-INF/views/common/nav.jsp" />
	  <jsp:include page="/WEB-INF/views/home/banner.jsp" />	
      <jsp:include page="/WEB-INF/views/home/teamLogoCategory.jsp" />
    <main>
      <hr />
      <jsp:include page="/WEB-INF/views/home/goods.jsp" />
    </main>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
