
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
<link rel="stylesheet" href="PurchaseHistory.css">
<style>
#member-info {
	font-family: 'Pretendard-Regular';
	margin: 20px;
}

.product-insert-title {
	font-weight: bold;
	width: 1140px;
	display: block;
	color: #333;
	font-size: 26px;
	margin-bottom: 24px;
}

.product-insert-box {
	width: 100%;
	border-bottom: 3px solid #000;
	margin-bottom: 24px;
}

.membership board {
	width: 478px;
	height: 751px;
}

.member-id, .member-password, .member-password-again, .member-name,
	.member-phone-number, .member-address {
	font-weight: bold;
	font-size: 15px;
	height: 68px;
	width: 450px
}

.form-control {
	border: none !important;
	border-bottom: 1px solid #ebebeb !important;
	border-radius: 0 !important;
	box-shadow: none !important;
	height: 40px !important;
	font-size: 16px !important;
	margin-bottom: 24px !important;
}

.form-control:focus {
	border-color: #333333 !important;
	box-shadow: none !important;
	outline: none !important;
}

.btnMember {
	width: 404px;
	height: 64px;
	border: none;
	color: #ffffff;
	background-color: #000000;
	border-radius: 14px;
	margin-top: 96px;
}

.withdrawal-btn {
	color: #d81d2e;
	background-color: white;
	border: none;
	padding: 0px 0px 0px 160px;
	margin-top: 20px;
	margin-bottom: 200px;
}
</style>
</head>
<body id="member-info">
	<div class="member-information">
		<div class="product-insert-box">
			<h2 class="product-insert-title">회원 정보</h2>
		</div>
		<div class="membership board">
			<div class="member-id ">
				<span>아이디</span> <input type="text" class="form-control"
					id="inputId" placeholder="kosaOTI">
			</div>
			<div class="member-password">
				<span>비밀번호</span> <input type="password" class="form-control"
					id="exampleInputPassword1" placeholder="********">
			</div>
			<div class="member-password-again">
				<span>비밀번호 확인</span> <input type="text" id="username"
					class="form-control" placeholder="********" />
			</div>
			<div class="member-name">
				<span>이름</span> <input type="text" id="username"
					class="form-control" placeholder="김코사" />
			</div>
			<div class="member-phone-number">
				<span>전화번호</span> <input type="phonenumber" id="username"
					class="form-control" placeholder="01012345678" />
			</div>
			<div class="member-address">
				<span>주소</span> <input type="text" id="username"
					class="form-control" placeholder="서울특별시 종로구 창경궁로 254 동원빌딩 402호" />
			</div>
			<div></div>
			<button type="submit" class="btnMember" disabled>회원정보 수정</button>
			<br>
			<button type="button" class="withdrawal-btn">회원탈퇴</button>
		</div>
	</div>
	</div>
</body>
</html>