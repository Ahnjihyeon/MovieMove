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
<link rel="icon" href="images/icons/favicon.png" />
<title>MovieMove</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="dist/bs-pagination.min.css">
	
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
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="dist/pagination.min.js"></script>

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

.form-control{display:inline; width:90%;}
.submit-btn{padding:8px; 15px;}
a {
	color: led;
}
a :hover {
	color: blue;
}

table.memberReview {
	border-collapse: collapse;
	text-align: left;
	line-height: 2.5;
	width: 500px;
	border-left: 1px solid #ccc;
	margin: auto;
	border-left: 1px solid #ccc;
}

table.memberReview thead th {
	padding: 10px;
	font-weight: bold;
	border-top: 1px solid #ccc;
	border-right: 1px solid #ccc;
	border-bottom: 2px solid #c00;
	background: #dcdcd1;
}

table.memberReview tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background: #ececec;
}

table.memberReview tbody td {
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
	$(function(){
		function selectAll(){
			$.ajax({ 
				type: "post",
				url: "memberreview",  
				dataType: "text",
				data: "${sessionScope.memberId}",
				success:  function( result ) {	
					alert(result);
					/* var str="";					
					$.each(result, function(index, item){
						var reviewId = item.reviewId;
						str += "<li style='padding:15px 15px 0 0; border-bottom: 1px dashed #ddd;'><br>";
						str += "<div style='color:#b1afaf;'>"+(index+1)+"</div><br>"; //
						str += "<div style='margin-bottom: 30px;'>"+item.movieCode+"<a href='movie?command=read&reviewId='reviewId' style='font-size: 19px; font-weight: 900; color: #7f0e86;'>"+item.reviewSubject+"</a>별점 :"+item.reviewStarPoint+"개 조회수 : "+item.reviewCount+" 작성일 : "+ item.reviewWriteday+"</div>";
						str += "</li>";
					})						
					$("#memberReview").append(str);  */ 
					//$("a").css("textDecoration","none");
 				},
				error: function( error ) {
					console.log( "검색오류" );
				} 
			}) 
		}
		selectAll();
	})
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
			
				<ul class="vertical-menu">

<li><a href="memberMyFage.jsp">내정보</a></li>
<li><a href="memberInfo.jsp">정보 수정</a></li>
<li><a href="memberReview.jsp">내가 쓴 글</a></li>

</ul>
			<div align="center">
				<ul id="memberReview" style="padding: 0 230px; font-size: 17px;"></ul>
			</div>
				
</body>
</html>