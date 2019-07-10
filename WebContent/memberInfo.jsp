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
table.memberinfo {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    margin: 20px 10px;
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
table.memberinfo td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
</style>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<div id="page">
            <!---header top---->
            <div class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">

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
                            		<c:choose>
                            			<c:when test="${SessionScope.member.memberId!=null}">
                            				<div class="text-right">
			                               		 <h4>${SessionScope.member.memberId}님 로그인중...</h4>
			                                	 <a href="movie?command=memberinfo&memberId=${member.memberId}">마이페이지</a>
			                                	 <form action="movie?command=logout" method="post">
			                                	 	<button type="submit" class="logoutbtn">로그아웃</button>
			                                	 </form>
		                                	 </div>
	                            		</c:when>
	                            		<c:otherwise>
	                            			<div class="text-right">
		                               		 <button type="button" class="book-now-btn" onclick="location.href='memberForm.html'">회원가입</button>
		                                     <button type="button" class="loginbtn">로그인</button>
		                                     </div>
                            			</c:otherwise>
                           			</c:choose>                                 	    
                            </div>
                          </div>
                        </div>
                      </div>
                   </header>
                </div>
<table class="memberinfo">
    <thead>
    <tr>
        <th colspan="2">마이페이지</th>        
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
    </tbody>
</table>

</body>
</html>