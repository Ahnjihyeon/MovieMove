<%-- <%@page import="chobong.movie.dto.MemberDTO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/icons/favicon.png"/>
<title>MovieMove</title>

<!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <link href="fonts/antonio-exotic/stylesheet.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <link rel="stylesheet" href="css/lightbox.min.css?v=<%=System.currentTimeMillis() %>">
        <link href="css/responsive.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <script src="js/jquery-3.4.1.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/bootstrap.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <%-- <script src="js/lightbox-plus-jquery.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script> --%>
        <script src="js/instafeed.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/custom.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>

<title>Insert title here</title>
<style>

ul {
float: left;
padding: 0;
}

li {
list-style-type: none;
}

a {
text-decoration: none;
color: inherit;
}

.vertical-menu {
width: 200px;
margin: 0 auto;
}

.vertical-menu a {
    display: block;
    height: 90px;
    line-height: 50px;
    background-color: #d63f22;
    color: #ccc;
    padding: 0 20px;
    border-bottom: 1px solid #bf391f;
    font-weight: 900;
    font-size: 18px;
    text-align: left;
}

div.review_top {border-bottom: 1px solid #ff9faa;
			   font-size: 13px;
			   font-weight: 600;
			   letter-spacing: 1px;
			   margin-bottom: 5px;
			   margin-top: 20px;
			   padding-bottom: 10px;
			   text-transform: uppercase;}
			   
span.review_right{float:right;}
.event-blog-details > p {margin:10px 0;}
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
            <div class="top-header" style="background-color:#000">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <!--                            <a href="#"> </a>
                                                        <div class="info-block"><i class="fa fa-map"></i>701 Old York Drive Richmond USA.</div>-->
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
            <c:import url="header.jsp"/>
            
            <hr style="border:1px solid #eee; margin-top: 0;">

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
					<ul class="vertical-menu">

<li><a href="memberMyFage.jsp">내정보</a></li>
<li><a href="memberInfo.jsp">정보 수정</a></li>
<li><a href="memberReview.jsp">내가 쓴 글</a></li>

</ul>

				</tbody>
			</table>
</body>
</html>