<%-- <%@page import="chobong.movie.dto.MemberDTO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="images/icons/favicon.png"/>
        <title>MovieMove</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
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

a :hover{color:blue;}
table.memberinfo {
    border-collapse: collapse;
    text-align: left;
    width: 500px;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    margin: auto;
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
<link rel="stylesheet" href="css/style.css"/>
</head>
<script>
function sendUpdate(){//수정폼
	var dbPwd=${member.memberPwd};
	if(document.requestForm.password.value==""){
		alert("비밀번호를 입력해 주세요")
		document.requestForm.password.focus();
		return;
	}
	if(document.requestForm.password.value==dbPwd){
		document.requestForm.command.value ="updatemember";
		document.requestForm.submit();	
	}
	alert("수정이 완료되었습니다. 다시 로그인 해 주세요");
}

function sendDelete(){//삭제
	var dbPwd=${member.memberPwd};
	if(document.requestForm.password.value==""){
		alert("비밀번호를 입력해 주세요")
		document.requestForm.password.focus();
		return;
	}
	if(document.requestForm.password.value==dbPwd){
		document.requestForm.command.value ="deletemember";
		document.requestForm.submit();	
	}
	else{
		alert("비밀번호가 틀렸습니다.");		
	}	
}
</script>
<body>
<div id="page">
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
        <th colspan="2">회원 정보 수정</th>        
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">아이디</th>
        <td>${member.memberId}</td>
    </tr>
    <tr>
        <th scope="row">이메일</th>
        <td><input type="text" name="memberEmail" value="${member.memberEmail}"></td>
    </tr>
    <tr>
        <th scope="row">이름</th>
        <td>${member.memberName}</td>
    </tr>
    <tr>
        <th scope="row">별명</th>
        <td><input type="text" name="memberNickname" value="${member.memberNickname}"></td>
    </tr>
    <tr>
        <th scope="row">연령대</th>
        <td>${member.memberAge}</td>
    </tr>
    <tr>
        <th scope="row">가입일</th>
        <td>${member.memberDate}</td>
    </tr>
    
    	<tr>
    		<td>
    			비밀번호 입력 : <input type=password name="password" value="">
    		</td>	
    		<td>
    			<input type=hidden name="memberId" value="${member.memberId}">
				<input type=hidden name="command" value="">
				<input type=button value="수정하기" onClick="sendUpdate()">
				<input type=button value="회원탈퇴" onClick="sendDelete()">
			</td>
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