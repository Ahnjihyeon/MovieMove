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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="css/lightbox.min.css">
        <link href="css/responsive.css" rel="stylesheet">
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="js/instafeed.min.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        
        <style type="text/css">
          div.review_top {border-bottom: 1px solid #ff9faa;
			   font-size: 13px;
			   font-weight: 600;
			   letter-spacing: 1px;
			   margin-bottom: 5px;
			   margin-top: 20px;
			   padding-bottom: 10px;
			   text-transform: uppercase;}
		span.review_left{}
		span.review_right{float:right;}
        </style>
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
                                <div class="text-right"><button type="button" class="book-now-btn">로그인</button></div>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
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
                                            <li><a  data-hover="Home" href="index.html"><span>Home</span></a></li>
                                            <!-- <li><a data-hover="About" href="about.html"><span>About</span></a></li>
                                            <li><a data-hover="Rooms" href="rooms.html"><span>Rooms</span></a></li>
                                            <li><a data-hover="Gallery"  href="gallery.html"><span>Gallery</span></a></li>
                                            <li><a data-hover="Dinning"><span>Dinning</span></a></li>
                                            <li><a data-hover="News" href="news.html"><span>News</span></a></li>
                                            <li><a data-hover="Contact Us" href="contact.html"><span>contact Us</span></a></li> -->
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">로그인</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>


            <div class="clearfix"></div>

            <!--리뷰상세페이지-->
            <section class="blog" style="padding:0px;">
                <div class="container">
                    <div class="row">

                        <div class="col-md-9 col-sm-8 col-xs-12" style="width:100%;">
                            <h2 class="blog-title-head">영화제목</h2>
                            <div class="blog-image-single margin-top-small">
                                <div style="width:65%; height:auto; display:grid; float:left; padding:20px 0px 20px 20px;"><img src="http://via.placeholder.com/750x450?text=left" class="img-responsive"></div>
                                <div style="width:35%; height:auto; display:grid; float:right; text-align:-webkit-right; padding:20px 20px 20px 0px;"><img src="http://via.placeholder.com/300x450?text=right" class="img-responsive"></div>
                            </div>
                            <div class="blog-desc" style="display: inline-block;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do </div>

                            <div class="clearfix"></div>
                            
                            <form action="#" method="post">
                            <div class="blog-list">
                                <h4>리뷰</h4>
                                <div class="review_top"><span class="review_left">총 0건</span>
                                <span class="review_right"><select name="sort" size=1>
        						<option value=1>최신순</option>
        						<option value=2>추천순</option>
        						<!-- <option value=3></option>
       							<option value=4></option>
       							<option value=5></option> -->
    							</select></span>
    							</div>
                                <ul>
                                    <li style="padding:15px 15px 0 0;">
                                    <div style="color:#b1afaf;"><a style="display: contents; font-size:20px;"><i class="fa fa-caret-right"> </i>리뷰제목1</a>&nbsp;&nbsp;&nbsp;&nbsp;id | date | star</div>
                                    <div><a style="font-size:15px;">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</a></div>
                                    </li>
                                    <li style="padding:15px 15px 0 0;">
                                    <div style="color:#b1afaf;"><a style="display: contents; font-size:20px;"><i class="fa fa-caret-right"> </i>리뷰제목2</a>&nbsp;&nbsp;&nbsp;&nbsp;id | date | star</div>
                                    <div><a style="font-size:15px;">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</a></div>
                                    </li>
                                    <li style="padding:15px 15px 0 0;">
                                    <div style="color:#b1afaf;"><a style="display: contents; font-size:20px;"><i class="fa fa-caret-right"> </i>리뷰제목3</a>&nbsp;&nbsp;&nbsp;&nbsp;id | date | star</div>
                                    <div><a style="font-size:15px;">리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용리뷰내용</a></div>
                                    </li>
                                </ul>

                                <div class="clearfix"> </div>
                            </div>
                            
                            <div class="single-bottom comment-form" style="padding:50px 0 0 0;">
                                <h3>리뷰작성</h3>
                                    <input type="text" class="form-control" name="Name" placeholder="리뷰제목" required="">
                                    <input type='radio' name='star' value=1 />1
                                    <input type='radio' name='star' value=2 />2
                                    <input type='radio' name='star' value=3 />3
                                    <input type='radio' name='star' value=4 />4
                                    <input type='radio' name='star' value=5 />5
                                    <textarea class="form-control" name="Message" placeholder="내용을 입력해주세요" required=""></textarea>
                                    <input type="submit" class="submit-btn" value="작성">
                             </div>
                                </form>
                            </div>
                        </div>
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

