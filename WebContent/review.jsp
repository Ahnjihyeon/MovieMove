<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

\${pageContext.request.contextPath} = ${pageContext.request.contextPath} <br>

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
        <script>
        $(function(){
        	$(".loginbtn").click(function(){
        		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
        	})
        	
        	//-----게시판---------------------------------------------
        	// 1.등록
    		$("#btn").click( function() {
    			console.log( $("form[name=reInsert]").serialize()  );
    			
    			$.ajax({ 
    				type: "post",
    				url: "${path}/ReviewInsert", 
    				dataType: "text",
    				data: $("form[name=reInsert]").serialize() , // 폼전송
    				success:  function( result ) {
    					if( result > 0 ) {
    						//alert( "등록완료" );
    						selectAll(); // 전체검색(화면갱신)
    					} else if( result==-1 ){
    						alert( "로그인 후에 게시글을 등록해주세요." );
    					} else {
    						alert("오류가 발생해서 처리되지 않았습니다.");
    					}
    				},
    				error: function( error ) {
    					alert("삽입x");
    					console.log( error );
    				} 
    			})
    		}); /////////////////// 
    		
    		// 2. 전체 리스트 출력
    		function selectAll(){
    			$.ajax({ 
    				type: "post",
    				url: "${path}/ReviewSelectAll",  
    				dataType: "json",
    				data: "movieCode=A01" ,
    				success:  function( result ) {
    					$("#listTable tr").remove();  // #listTable tr:gt(0)
    					
    					console.log( "총길이 = " + result.length );
    					var totalLength = "총 " + result.length + "건";
    					var str="" ;
    					$.each(result, function(index, item){
    						// 영화제목 , 아이디, 가입일 , 좋아요 ,        제목
    						str += "<tr>";
    						str += "<td>"+ (index+1) +"</td>";
    						str += "<td><a href='#' id='listSubject'>"+ item.reviewSubject +"</a></td>";
    						str += "<td>"+ item.memberId +"</td>"
    						
    						str += "<td>"+ item.reviewWriteday +"</td>";
    						str += "<td>"+ item.reviewStarPoint +"</td>"
    						str += "</tr>";
    						
    						str += "<tr>";
    						str += "<td colspan='4'>"+ item.reviewContent +"</td>";
    						str += "</tr>";
    					})	
    					
    					$("span[class=review_left]").text( totalLength );
    					$("#listTable").append(str); 
    					$("a").css("textDecoration","none");
     				},
    				error: function( error ) {
    					console.log( "검색오류" );
    				} 
    			}) 
    		}////////////////////////////// 
    		selectAll();
    		//setInterval("selectAll", 5000 ); // 글 업데이트 
        })
        
        </script>
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
                           			<c:when test="${sessionScope.member.memberId!=null}">
                           				<div class="text-right">
		                               		 <h4>${member.memberId}님 로그인중...</h4>
		                                	 <a href="movie?command=memberinfo&memberId=${member.memberId}">마이페이지</a>
		                                	 <form action="movie?command=logout" method="post">
		                                	 	<button type="submit" class="logoutbtn">로그아웃</button>
		                                	 </form>
	                                	 </div>
                            		</c:when>
                            		<c:otherwise>
                            			<div style="width: 300px; margin-right: 400px" class="text-right">
	                               		 <button type="button" class="book-now-btn" onclick="location.href='memberForm.html'">회원가입</button>
	                                     <button type="button" class="loginbtn">로그인</button>
	                                     </div>
                           			</c:otherwise>
                      			</c:choose>                                  	    
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
                               <c:choose>
                           			<c:when test="${sessionScope.member.memberId!=null}">
                           				<div class="text-right">
		                               		 <h4>${member.memberId}님 로그인중...</h4>
		                                	 <a href="movie?command=memberinfo&memberId=${member.memberId}">마이페이지</a>
		                                	 <form action="movie?command=logout" method="post">
		                                	 	<button type="submit" class="logoutbtn">로그아웃</button>
		                                	 </form>
	                                	 </div>
                            		</c:when>
                            		<c:otherwise>
                            			<div style="width: 300px; margin-right: 400px" class="text-right">
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
                                
                                $("#review_left").before(totalLength);
                                
                                <div class="review_top"><span class="review_left">총 0건</span>
                                <span class="review_right"><select name="sort" size=1>
        						<option value=1>최신순</option>
        						<option value=2>추천순</option>
        						<!-- <option value=3></option>
       							<option value=4></option>
       							<option value=5></option> -->
    							</select></span>
    							</div>
    							
								<table id= "listTable">
								<!-- 이곳에서 리뷰 리스트 전체 출력 -->
								</table>							
								</form>
                                <div class="clearfix"> </div>
                            </div>
                            
                            <div class="single-bottom comment-form" style="padding:50px 0 0 0;">
                               <h3>리뷰작성</h3>
                               <form method="post"  name="reInsert"  id="reInsert"> 
                                    <input type="text" class="form-control" name="reviewSubject" placeholder="리뷰제목" required=""><br>
                                    <input type='radio' name='reviewStarPoint' value=1 />1
                                    <input type='radio' name='reviewStarPoint' value=2 />2
                                    <input type='radio' name='reviewStarPoint' value=3 />3
                                    <input type='radio' name='reviewStarPoint' value=4 />4
                                    <input type='radio' name='reviewStarPoint' value=5 />5
                                    <textarea class="form-control" name="reviewContent" placeholder="내용을 입력해주세요" required=""></textarea><br>
                                    <input type="text" name='reviewPwd' placeholder='ex) 1234'/><!-- 비번 -->
                                    
                                    <input type="hidden" name='memberId'/><!-- 아이디 -->
 									<input type="hidden" name='movieCode' value='A01'  /><!-- 영화코드 -->
                                    
                                    <input type="button" class="submit-btn" id="btn" value="작성">
                                    </form>
                             </div>
                                
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

