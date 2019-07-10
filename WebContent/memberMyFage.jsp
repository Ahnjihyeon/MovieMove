<%-- <%@page import="chobong.movie.dto.MemberDTO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/icons/favicon.png" />
<title>MovieMove</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
<link rel="stylesheet" href="css/lightbox.min.css">
<link href="css/responsive.css" rel="stylesheet">
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
<script src="js/instafeed.min.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>

<title>Insert title here</title>
<style>
.form-control{display:inline; width:90%;}
.submit-btn{padding:8px; 15px;}
a :hover {
	color: blue;
}

table.memberinfo {
	border-collapse: collapse;
	text-align: left;
	line-height: 2.5;
	width: 500px;
	border-left: 1px solid #ccc;
	margin: auto;
	border-left: 1px solid #ccc;
}

table.memberinfo thead th {
	padding: 10px;
	font-weight: bold;
	border-top: 1px solid #ccc;
	border-right: 1px solid #ccc;
	border-bottom: 2px solid #c00;
	background: #dcdcd1;
}

table.memberinfo tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background: #ececec;
}

table.memberinfo tbody td {
	width: 150px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

div.submenu {
	font-size: 18px;
	font-weight: bold;
	width: 200px;
	height: 400px;
	position: fixed;
	background: #f9622e;
	overflow: hidden;
	float: left;
}
</style>
<link rel="stylesheet" href="css/style.css" />
</head>
<script>
	function sendUpdate() {//수정폼
		var dbPwd = $
		{
			member.memberPwd
		}
		;
		if (document.requestForm.password.value == "") {
			alert("비밀번호를 입력해 주세요")
			document.requestForm.password.focus();
			return;
		}
		if (document.requestForm.password.value == dbPwd) {
			document.requestForm.command.value = "updatemember";
			document.requestForm.submit();
		}
		alert("수정이 완료되었습니다. 다시 로그인 해 주세요");
	}

	function sendDelete() {//삭제
		var dbPwd = $
		{
			member.memberPwd
		}
		;
		if (document.requestForm.password.value == "") {
			alert("비밀번호를 입력해 주세요")
			document.requestForm.password.focus();
			return;
		}
		if (document.requestForm.password.value == dbPwd) {
			document.requestForm.command.value = "deletemember";
			document.requestForm.submit();
		} else {
			alert("비밀번호가 틀렸습니다.");
		}
	}
</script>
<body>
	<div id="page">
		<!---header top---->
		<div class="top-header" style="background-color: #000">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						
					</div>
					<div class="col-md-6">
						<div class="social-grid">
							<ul class="list-unstyled text-right">
								<li><a><i class="fa fa-facebook"></i></a></li>
								<li><a><i class="fa fa-twitter"></i></a></li>
								<li><a><i class="fa fa-linkedin"></i></a></li>
								<li><a><i class="fa fa-instagram"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
			<!--header--->
			<header class="header-container">
				<div class="container">
					<div class="top-row">
						<div class="row">
							<div class="col-md-2 col-sm-6 col-xs-6">
								<div id="logo">
									<!--<a href="index.html"><img src="images/logo.png" alt="logo"></a>-->
									<a href="index.html"><span>뮤비</span>무비</a>
								</div>
							</div>
							<div class="col-sm-6 visible-sm">
								<div class="text-right">
									<h4>${member.memberId}님로그인중...</h4>
									<form action="movie?command=logout" method="post">
										<button type="submit" class="logoutbtn">로그아웃</button>
									</form>
								</div>
							</div>
							<div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
								<nav class="navbar navbar-default">
									<div class="navbar-header page-scroll">
										<button data-target=".navbar-ex1-collapse"
											data-toggle="collapse" class="navbar-toggle" type="button">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>

									</div>
									<div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
                                            <li><span><input type="text" class="form-control" name="Search" placeholder="검색"></span></li>
                                            <li><span><input type="submit" class="submit-btn" value="검색"></span></li>
                                        </ul>
                                    </div>
								</nav>
							</div>
							<div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
								<div class="text-right">
									<h4>${member.memberId}님로그인중...</h4>
									<form action="movie?command=logout" method="post">
										<button type="submit" class="logoutbtn">로그아웃</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
		<form name="requestForm" method=post action="${path}/movie">
			<table class="memberinfo">
				<thead>
					<tr>
						<th colspan="2">내 정보</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">아이디</th>
						<td>${member.memberId}</td>
					</tr>
					<tr>
						<th scope="row">이메일</th>
						<td>${member.memberEmail}</td>
					</tr>
					<tr>
						<th scope="row">이름</th>
						<td>${member.memberName}</td>
					</tr>
					<tr>
						<th scope="row">별명</th>
						<td>${member.memberNickname}</td>
					</tr>
					<tr>
						<th scope="row">연령대</th>
						<td>${member.memberAge}</td>
					</tr>
					<tr>
						<th scope="row">가입일</th>
						<td>${member.memberDate}</td>
					</tr>
					</form>
					<div class="submenu">
						<ul>
							<li style="color: white; font-size: 20px;">마이페이지</li>
							<br>
							<a href="#"><li>내 정보</li></a>
							<br>
							<a href="memberInfo.jsp"><li>회원 정보 수정</li></a>
							<br>
							<a href="#"><li>찜목록</li></a>
							<br>
						</ul>
					</div>

				</tbody>
			</table>
</body>
</html>