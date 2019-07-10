<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        <style>
        	.form-control{display:inline; width:90%;}
        	.submit-btn{padding:8px; 15px;}
        </style>
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
                                <div class="text-right"><button type="button" class="book-now-btn">로그인</button></div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </header>
            <hr style="border:1px solid #eee; margin-top: 0;">
            <br>
            <section class="resort-overview-block" style="padding:0">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left" style="width:85%; margin-bottom:30px;">
                            <div class="side-A">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="#"><img alt="image" class="img-responsive" src="images/category1.png"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-desc-side">
                                    <h3><a href="#">영화 제목</a></h3>
                                    <p>영화 내용영화 내용영화 내용영화 내용영화 내용 영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용.</p>
                                    <div class="links"><a href="#">상세보기</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left" style="width:85%; margin-bottom:30px;">
                            <div class="side-A">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="#"><img src="images/category2.png" class="img-responsive" alt="image"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-desc-side">
                                    <h3><a href="#">영화 제목</a></h3>
                                    <p>영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용영화 내용.</p>
                                    <div class="links"><a href="#">상세보기</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-12 offspace-45"></div>
                    </div>
                </div>
            </section>
            
            <!---footer--->
            <footer>
                <div class="container">

                    <div class="copyright">
                        &copy; 2019 All right reserved. Designed by <a href="#" target="_blank">KOSTA</a>
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
</html>