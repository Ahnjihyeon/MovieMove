<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
        <script src="js/jquery.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/bootstrap.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/lightbox-plus-jquery.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/instafeed.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/custom.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        
        <script src="js/jquery.popupoverlay.js?v=<%=System.currentTimeMillis() %>"></script>
        
        <style>
        	#myCarousel1 > div > div > img{padding:50px 10px 70px 10px; float:left; width:20%; height: 400px !important;}
        	#myCarousel2 > div > div > img{padding:50px 10px 70px 10px; float:left; width:25%; height: 400px !important;}
        	.form-control{display:inline; width:90%;}
        	.submit-btn{padding:8px; 15px;}
        </style>
        <script>
        	$(function(){
        		$("#loginbtn").click(function(){
            		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
            	})        		
        	})
        	
        </script>
    </head>
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
            <input type="button" value="리뷰jsp이동" onClick="location.href='review.jsp'">
            <!--header--->
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
                            
                            <form action="#" method="get">
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd" style="bottom:15px;">
                                <nav class="navbar navbar-default">
                                    <div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
                                            <li><span><input type="text" class="form-control" name="Search" placeholder="검색"></span></li>
                                            <li><span><input type="submit" class="submit-btn" value="검색"></span></li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            </form>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <c:choose>
                           			<c:when test="${sessionScope.member.memberId!=null}">
                           				<div class="text-right">
		                               		 <h4>${member.memberId}님 로그인중...</h4>
		                                	 <a href="movie?command=memberinfo&memberId=${member.memberId}">마이페이지</a>
		                                	 <form action="movie?command=logout" method="post">
		                                	 	<button type="submit" class="book-now-btn" id="logoutbtn">로그아웃</button>
		                                	 </form>
	                                	 </div>
                            		</c:when>
                            		<c:otherwise>
                            			<div style="width: 300px; margin-right: 400px" class="text-right">
                            			 <button type="button" class="book-now-btn" id="loginbtn">로그인</button>
	                               		 <button type="button" class="book-now-btn" onclick="location.href='memberForm.html'">회원가입</button>
	                                     </div>
                           			</c:otherwise>
                      		</c:choose>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </header>


            <!--end-->
            <div id="myCarousel1" class="carousel slide" data-ride="carousel" style="text-align:-webkit-center; background:#000;"> 
                <!-- Indicators -->

                <ol class="carousel-indicators">
                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                    <li data-target="#myCarousel1" data-slide-to="2"></li>
                </ol>
                
                <div class="carousel-inner" style="width: 85%;">
                    <div class="item active">
                            <img src="images/banner.png" alt="First slide">
                            <img src="images/banner.png" alt="First slide">
                            <img src="images/banner.png" alt="First slide">
                            <img src="images/banner.png" alt="First slide">
                            <img src="images/banner.png" alt="First slide">
                    </div>
                    <div class="item">
	                    	<img src="images/banner2.png" alt="Second slide">
	                    	<img src="images/banner2.png" alt="Second slide">
	                    	<img src="images/banner2.png" alt="Second slide">
	                    	<img src="images/banner2.png" alt="Second slide">
	                    	<img src="images/banner2.png" alt="Second slide">
	                </div>
                    <div class="item">
                            <img src="images/banner3.png" alt="Third slide">
                            <img src="images/banner3.png" alt="Third slide">
                            <img src="images/banner3.png" alt="Third slide">
                            <img src="images/banner3.png" alt="Third slide">
                            <img src="images/banner3.png" alt="Third slide">
                    </div>

                </div>
                <a class="left carousel-control" href="#myCarousel1" data-slide="prev" style="width:8%;"><img src="./images/icons/left-arrow.png" onmouseover="this.src = './images/icons/left-arrow-hover.png'" onmouseout="this.src = './images/icons/left-arrow.png'" alt="left"></a>
                <a class="right carousel-control" href="#myCarousel1" data-slide="next" style="width:8%;"><img src="./images/icons/right-arrow.png" onmouseover="this.src = './images/icons/right-arrow-hover.png'" onmouseout="this.src = './images/icons/right-arrow.png'" alt="left"></a>

            </div>
            
            <div class="clearfix"></div>

            <!--gallery block--->
            <section class="gallery-block gallery-front">
                <div class="container">
                <h4 style="margin-bottom:8px; color:#333; font-weight:bold;">인기 예고편</h4>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room1.png">
                                <div class="overlay">
                                    <a id="modal" class="info pop"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <p><a>영화 제목제목</a><br><br>
                                    	 <a>영화 내용내용</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room2.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="media/mitte.mp4" data-lightbox="example-1"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <p><a>영화 제목제목</a><br><br>
                                    	 <a>영화 내용내용</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room3.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="media/avengers.mp4" data-lightbox="example-1"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <p><a>영화 제목제목</a><br><br>
                                    	 <a>영화 내용내용</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room4.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="images/KungFuPanda_Sample.mp4" data-lightbox="example-1"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <p><a>영화 제목제목</a><br><br>
                                    	 <a>영화 내용내용</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

			<div id="fade" class="well" style="display:none">
			<object width="450" height="300">
			<param name="movie" value="media/avengers.mp4?autoplay=1&playlist=1&loop=1&vq=hd720&autohide=1&controls=0&showinfo=0&rel=0"></param>
			<param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param>
			<embed src="media/avengers.mp4?autoplay=1&playlist=1&loop=1&vq=hd720&autohide=1&controls=0&showinfo=0&rel=0" type="application/x-shockwave-flash" width="820" height="460" allowscriptaccess="always" allowfullscreen="true"></embed>
			</object>
			</div>
            
            <!---footer--->
            <footer>
                <div class="container">

                    <div class="copyright">
                        &copy; 2019 All right reserved. Designed by <a href="#" target="_blank">CHOBONG</a>
                    </div>

                </div>
            </footer>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>

        </div>
    </body>
    
<!-- fade -->
<script>
$("#modal").click(function () {
	
	
    $('#fade').popup({
      transition: 'all 0.3s',
      scrolllock: true,
      autoopen: true,
	  background: true
    });

});
</script>
</html>