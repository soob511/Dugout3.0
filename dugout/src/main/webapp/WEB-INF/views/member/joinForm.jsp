<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Join Form</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css"
    />
    <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/joinForm.css" />
  </head>
  <body class="join-body">
    <header id="main-header"></header>
    <hr class="join-hr" />
    <main id="member-form">
      <section class="title">
        <span class="join">JOIN</span>
      </section>
      <form class="row g-3"  method="post" action="join"> 
        <fieldset class="col-12">
          <div class="mb-3 form-group">
            <label for="inputId" class="form-label">아이디</label>
            <input
              type="text"
              class="form-control"
              id="inputId"
              placeholder="예) dugout (영문 또는 숫자 4~12자리)"
              name="id"
              value ="${joinFormDto.id}"
            />
            <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.id"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
            <button type="button" class="id-check">중복확인</button>
            <span class="message username-message"
              >이미 존재하는 아이디입니다.</span>
          </div>
          <div class="mb-3 form-group">
            <label for="inputPassword" class="form-label">비밀번호</label>
            <input
              type="password"
              class="form-control"
              id="inputPassword"
              placeholder="영문, 숫자 조합 8 ~ 16자"
                 name="password"
              value ="${joinFormDto.password}"
            />
            <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.password"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
            <span class="message password-check"
              >비밀번호 형식이 올바르지 않습니다.</span
            >
          </div>
          <div class="mb-3 form-group">
            <label for="confirmPassword" class="form-label"
              >비밀번호 확인</label
            >
            <input
              type="password"
              class="form-control"
              id="confirmPassword"
              placeholder="비밀번호 확인"
                name="confirmpassword"
              value ="${joinFormDto.confirmPassword}"
            />
            <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.confirmPassword"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
            <span class="message wrong-password"
              >비밀번호가 일치하지 않습니다.</span
            >
          </div>
          <div class="mb-3">
            <label for="inputName" class="form-label">이름</label>
            <input type="text" class="form-control" id="inputName"   name="name"
              value ="${joinFormDto.name}"/>
              <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.name"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
          </div>
          <div class="mb-3">
            <label for="inputPhone" class="form-label">전화번호</label>
            <input type="text" class="form-control" id="inputPhone"  
              name="phone"
              value ="${joinFormDto.phone}"/>
              <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.phone"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
          </div>
          <div class="mb-3">
            <label for="inputEmail" class="form-label">이메일</label>
            <input type="text" class="form-control" id="inputEmail" 
              name="email"
              value ="${joinFormDto.email}"/>
              <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.email"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
          </div>
          <div class="mb-3">
            <label for="inputAddress" class="form-label">주소</label>
            <input type="text" class="form-control" id="inputAddress" 
              name="address"
              value ="${joinFormDto.address}"/>
              <div class="text-danger" style="font-size: 0.7rem">
                     	<form:errors path="joinFormDto.address"/> <!-- path = dto의 어떤 필드 이름이냐 -->
             </div>
            <button
              type="button"
              class="searchAddress"
              onclick="searchAddress()"
            >
              주소검색
            </button>
          </div>
          <!--  <button type="button" onclick="joinajax()" class="btnMember">회원가입</button>-->
            <button type="submit" class="btnMember">회원가입</button>
        </fieldset>
      </form>
    </main>
    <footer></footer>
    <script>
    	function joinajax(){
    		var id = $("#inputId").val().trim();
    		var password = $("#inputPassword").val().trim();
    		var name = $("#inputName").val().trim();
    		var phone = $("#inputPhone").val().trim();
    		var email = $("#inputEmail").val().trim();
    		var address = $("#inputAddress").val().trim();
    		
    		const users = {userid : id, password,username:name,phone,email,address};
    		
    		$.ajax({
    			url : "join",
    			type : "post",
    			data:users,
    			success: function(data) {
					console.log(data);
				}
    		});
    	}
    
    </script>
    <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/joinForm.js"></script> --%>
  </body>
</html>
