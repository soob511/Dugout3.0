<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인 페이지</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common/header.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/common/footer.css"  rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/user/loginForm.css"  rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/js/user/loginForm.js"></script>
  <body>
    <div class="loginpage-container">
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
      <hr />
      <div class="login-container" style="margin-top: 50px; margin-bottom: 50px">
        <h1>LOG-IN</h1>
        <form id="loginForm" method ="post" action="${pageContext.request.contextPath}/login">
          <div class="form-group">
            <label for="username">아이디</label>
            <input type="text" id="username" class="form-control" name = "userId" />
            <div id="usernameError" style="color: red; display: none"></div>
          </div>
          <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" class="form-control" name="userPassword"/>
            <div id="passwordError" style="color: red; display: none"></div>
          </div>
        	<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
          		<div class="alert alert-danger mt-2" role="alert">
          		 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message =='Bad credentials'}">
          			 	아이디 또는 비밀번호가 틀립니다.
          		</c:if> 
          		</div>
          	</c:if> 
          <button type="submit" class="login-btn" disabled>로그인</button>
          <a type="button" class="signup-btn" href="${pageContext.request.contextPath}/user/joinForm">회원가입</a>
        </form>
        <div class="options">
          <a href="${pageContext.request.contextPath}/user/findId">아이디 찾기</a>
          <a href="${pageContext.request.contextPath}/user/findPassword">비밀번호 찾기</a>
        </div>
        <div id="result"></div>
      </div>
     <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    </div>
  </body>
</html>
