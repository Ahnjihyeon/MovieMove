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
<script src="js/jquery.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
<script src="js/bootstrap.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
<%-- <script src="js/lightbox-plus-jquery.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script> --%>
<script src="js/instafeed.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
<script src="js/custom.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
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
            
            <!-- header -->
            <c:import url="header.jsp"/>
            
            <hr style="border:1px solid #eee; margin-top: 0;">
            <br>
            <br>
			<div class="container">
			  <div class="well" style="background-color:#fff; ">
			      <div class="media">
			      	<a class="pull-left" href="#">
			    		<img class="media-object" src="http://placekitten.com/150/150">
			  		</a>
			  		<div class="media-body">
			    		<h4 class="media-heading">리뷰제목</h4>
			          <p class="text-right">아이디</p>
			          <p>리뷰내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
			          <ul class="list-inline list-unstyled">
			  			<li><span>날짜</span></li>
			            <li>|</li>
			            <li><span>댓글수</span></li>
			            <li>|</li>
			            <li><span>별점</span></li>
			            <li>|</li>
			            <li>
			              <span>조회수</span>
			            </li>
						</ul>
			       </div>
			    </div>
			  </div>
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
</html>