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
        	$("#loginbtnVisible").click(function(){
        		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
        	});
        	
        	$("#loginbtnHidden").click(function(){
        		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
        	});
        	
        	$.ajax({
        		type:"post",
        		url:"bestmovie",
        		dataType:"json",
        		success: function(result){
        			var str="";        			
        			$.each(result, function(index, item){        				
        				str+="<img src='"+item.movieImage+"'/>";
        			})        			   			
        			$("#Firstslide").append(str);
        		}
        	});        	
        	
    	});
        	
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
            <!--header--->
            <c:import url="header.jsp"/>


            <!--end-->
            <div id="myCarousel1" class="carousel slide" data-ride="carousel" style="text-align:-webkit-center; background:#000;"> 
                <!-- Indicators -->

                <ol class="carousel-indicators">
                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                    <li data-target="#myCarousel1" data-slide-to="2"></li>
                </ol>
                
                <div class="carousel-inner" style="width: 85%;">
                    <div class="item active" id="Firstslide"></div>
                    <!-- <div class="item">
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
                    </div>  -->

                </div>
                <a class="left carousel-control" href="#myCarousel1" data-slide="prev" style="width:8%;"><img src="./images/icons/left-arrow.png" onmouseover="this.src = './images/icons/left-arrow-hover.png'" onmouseout="this.src = './images/icons/left-arrow.png'" alt="left"></a>
                <a class="right carousel-control" href="#myCarousel1" data-slide="next" style="width:8%;"><img src="./images/icons/right-arrow.png" onmouseover="this.src = './images/icons/right-arrow-hover.png'" onmouseout="this.src = './images/icons/right-arrow.png'" alt="left"></a>

            </div>
            
            <div class="clearfix"></div>

            <!--gallery block--->
            <section class="gallery-block gallery-front">
                <div class="container">
                <h4 style="margin-bottom:8px; color:#333; font-weight:bold;">최신 예고편</h4>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room1.png">
                                <div class="overlay">
                                    <a class="info pop movie"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <input type="hidden" value="parasite"/><p style="color: white">기생충</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room2.png">
                                <div class="overlay">
                                    <a class="info pop movie"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <input type="hidden" value="spiderman"/><p style="color: white">스파이더맨 파 프롬 홈</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room3.png">
                                <div class="overlay">
                                    <a class="info pop movie"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <input type="hidden" value="toystory4"/><p style="color: white">토이스토리4</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="images/room4.png">
                                <div class="overlay">
                                    <a class="info pop movie"><img src="./images/icons/right-arrow.png" aria-hidden="true"></a>
                                    <input type="hidden" value="smellofghost"/><p style="color: white">귀신의향기</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

			<div id="fade" class="well" style="display:none">
				<video id="video" src="" width="720" height="400"></video>
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
  $(function(){
	  $(".movie").click(function () {
			$("#video").attr("src", "media/"+$(this).next(3).val()+".mp4").trigger("load").trigger("play");
		    $('#fade').popup({ 
		      transition: 'all 0.3s',
		      scrolllock: true,
		      autoopen: true,
			  background: true
		    });
		});
  })
</script>
</html>