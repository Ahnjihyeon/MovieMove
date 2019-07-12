<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>
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
            <!--header--->
            <c:import url="header.jsp"/>
            
            <hr style="border:1px solid #eee; margin-top: 0;">
            <br>
            <section class="resort-overview-block" style="padding:0">
            <c:forEach items="${list}" var="dto">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left" style="width:100%">
                              <div class="side-A">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="#"><img alt="image" class="img-responsive" src="${dto.movieImage}" style="width:230px; height:330px;"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-desc-side" style="height:auto;">                                
                                    <h3>${dto.movieTitle}</h3>
                                    <p>${dto.movieSummary}</p>
                                    <div class="links"><a href="movie?command=readmovie&movieCode=${dto.movieCode}">상세보기</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-12 offspace-45"></div>
                    </div>
                </div>
                </c:forEach>
            </section>
            
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