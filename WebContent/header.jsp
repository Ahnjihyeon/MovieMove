header.jsp

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
<style type="text/css">
    span >.form-control{display:inline;}
    .submit-btn{padding:8px 15px; margin:0 20px 0 0;}
</style>
<script>
    $(function(){
    	$("#loginbtnVisible").click(function(){
    		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
    	});
    	
    	$("#loginbtnHidden").click(function(){
    		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
    	});
    	
    	//영화 검색 결과 화면 이동하기
    	$(".submit-btn").click(function(){    		
    		var keyword = $(this).parent().prev().find("#inSearchKey").val() ;
    		alert( keyword );
    		location.href= 'movie?command=moviekeysearch&keyword='+keyword;    		
    	});
	});
</script>
</head>
<body>
<!--banner 시작--->
            <header class="header-container">
                <div class="container">
                    <div class="top-row">
                        <div class="row">
                            <div class="col-md-2 col-sm-6 col-xs-6">
                                <div id="logo">
                                    <!--<a href="index.html"><img src="images/logo.png" alt="logo"></a>-->
                                    <a href="index.jsp"><span>뮤비</span>무비</a>
                                </div>
                            </div>
                            
                            <div class="col-sm-6 visible-sm">
                            <c:choose>
                           			<c:when test="${sessionScope.member.memberId!=null}">
                           				<div class="text-right">
	                                         <span style="display:inline-block;width:30%;"><input type="text" class="form-control" name="Search"  id="inSearchKey" placeholder="검색"></span>
	                                         <span><input type="submit" class="submit-btn"  id="inSearch" value="검색"></span>
		                                	 <form action="movie?command=memberinfo" method="post" style="display:inline;">
				                             <button type="submit" class="book-now-btn">마이페이지</button>
				                             </form>
		                                	 <form action="movie?command=logout" method="post" style="display:inline;">
		                                	 <button type="submit" class="book-now-btn" id="logoutbtnVisible">로그아웃</button>
		                                	 <h5>${member.memberId}님 로그인중...</h5>
		                                	 </form>
	                                	 </div>
                            		</c:when>
                            		<c:otherwise>
                            			 <div class="text-right">
                                         <span style="display:inline-block;width:30%;"><input type="text" class="form-control" id="inSearchKey" name="Search" placeholder="검색"></span>
	                                     <span><input type="submit" class="submit-btn"  id="inSearch" value="검색"></span>
                            			 <button type="button" class="book-now-btn" id="loginbtnVisible">로그인</button>
	                               		 <button type="button" class="book-now-btn" onclick="location.href='memberForm.html'">회원가입</button>
	                                     </div>
                           			</c:otherwise>
                      		</c:choose>
                            </div>
                            
                            <div class="col-md-5 col-sm-12 col-xs-12 remove-padd">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header page-scroll">
                                        <button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>
                                    <div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
                                            <li><a data-hover="Home" href="index.jsp" class="active"><span>Home</span></a></li>
                                            <li><a data-hover="영화리스트"  href="movieList.jsp"><span>영화리스트</span></a></li>
                                            <li><a data-hover="리뷰게시판"  href="reviewList.jsp"><span>리뷰게시판</span></a></li>
                                            <li><a data-hover="인기리뷰"  href="reviewList.jsp?best"><span>인기리뷰</span></a></li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            
                            <div class="col-md-5  col-sm-4 col-md-8 col-xs-12 hidden-sm">
                            <c:choose>
                           			<c:when test="${sessionScope.member.memberId!=null}">
                           				<div class="text-right">
	                                         <span style="display:inline-block;width:30%;"><input type="text" class="form-control" id="inSearchKey" name="Search" placeholder="검색"></span>
	                                         <span><input type="submit" class="submit-btn" id="inSearch" value="검색"></span>
		                                	 <form action="movie?command=memberinfo" method="post" style="display:inline;">
				                             <button type="submit" class="book-now-btn">마이페이지</button>
				                             </form>
		                                	 <form action="movie?command=logout" method="post" style="display:inline;">
		                                	 <button type="submit" class="book-now-btn" id="logoutbtnHidden">로그아웃</button>
		                                	 <h5>${member.memberId}님 로그인중...</h5>
		                                	 </form>
	                                	 </div>
                            		</c:when>
                            		<c:otherwise>
                            			 <div class="text-right">
                                         <span style="display:inline-block;width:30%;"><input type="text" class="form-control" id="inSearchKey" name="Search" placeholder="검색"></span>
	                                     <span><input type="submit" class="submit-btn" id="inSearch" value="검색"></span>
                            			 <button type="button" class="book-now-btn" id="loginbtnHidden">로그인</button>
	                               		 <button type="button" class="book-now-btn" onclick="location.href='memberForm.html'">회원가입</button>
	                                     </div>
                           			</c:otherwise>
                      		</c:choose>  
                            </div>
                            
                        </div>
                    </div>
                </div>
            </header>
<!--banner 끝-->
</body>
</html>