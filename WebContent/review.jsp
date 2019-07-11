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
        <link href="css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <link href="fonts/antonio-exotic/stylesheet.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <link rel="stylesheet" href="css/lightbox.min.css?v=<%=System.currentTimeMillis() %>">
        <link href="css/responsive.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
        <script src="js/jquery-3.4.1.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/bootstrap.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <%-- <script src="js/lightbox-plus-jquery.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script> --%>
        <script src="js/instafeed.min.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        <script src="js/custom.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
        
        <style type="text/css">        
          div.review_top {border-bottom: 1px solid #ff9faa;
			   font-size: 13px;
			   font-weight: 600;
			   letter-spacing: 1px;
			   margin-bottom: 5px;
			   margin-top: 20px;
			   padding-bottom: 10px;
			   text-transform: uppercase;}
		span.review_right{float:right;}
        .event-blog-details > p {margin:10px 0;}
        </style>
        <script>
        $(function(){
        	$("#loginbtnVisible").click(function(){
        		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
        	});
        	
        	$("#loginbtnHidden").click(function(){
        		window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
        	});
        	
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
    				url: "${path}/ReviewMovieTitle",  
    				dataType: "json",
    				data: "movieCode=MV_1" ,
    				success:  function( result ) {
    					$("#listTable tr").remove();  // #listTable tr:gt(0)
    					
    					var totalLength = "총 " + result.length + "건";
    					console.log( "총 개수 = " + totalLength );
    					var str="" ;
    					$.each(result, function(index, item){
    						// 영화제목 , 아이디, 가입일 , 좋아요 ,        제목
    						str += "<li style='padding:15px 15px 0 0;'>";
    						str += "<div style='color:#b1afaf;'>"+ (index+1) +"&nbsp;&nbsp;&nbsp;<a href='#' id='listSubject' value='"+item.reviewId+"' style='display: contents; font-size:20px;'>"+ item.reviewSubject +"</a>&nbsp;&nbsp;&nbsp;&nbsp;"+ item.memberId +" | "+ item.reviewWriteday +" | "+ item.reviewStarPoint +"점 | 조회수 : "+ item.reviewCount + "</div>";
    						str += "<div>"+ item.reviewContent +"</div>";
    						str += "</li>";
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
    		
    		// 3. 리뷰게시글 상세페이지 이동
    		$(document).on("click", "#listTable a", function() {
    			//alert(1);
    			
    			// 클릭한 리뷰 제목을 토대로 상세페이지를 보여줘야함
    			console.log( "클릭한 a 게시글번호 =" + $(this).attr("value") );
    			var reId = $(this).attr("value");
    			location.href="${path}/movie?command=read&reviewId="+reId;
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
            
            <hr style="border:1px solid #eee; margin-top: 0;">

			<!---영화정보 block--->
            <section class="blog-block" style="padding:0">
                <div class="container">
                    <div class="row offspace-45">
                        <div class="view-set-block">
                            <div class="col-md-6 col-sm-6 col-xs-12 side-in-image">
                                <div class="event-blog-details">
                                    <h4>영화제목</h4>
                                    <h5>2019.07<a><i aria-hidden="true" class="fa fa-heart-o fa-lg"></i>total</a></h5>
                                    <p><font style="font-size:15px; font-weight:bold;">평점</font>&nbsp;&nbsp;&nbsp;</p>
                                    <p><font style="font-size:15px; font-weight:bold;">장르</font>&nbsp;&nbsp;&nbsp;</p>
                                    <p><font style="font-size:15px; font-weight:bold;">감독</font>&nbsp;&nbsp;&nbsp;</p>
                                    <p><font style="font-size:15px; font-weight:bold;">출연</font>&nbsp;&nbsp;&nbsp;</p>
                                    <p><font style="font-size:15px; font-weight:bold;">등급</font>&nbsp;&nbsp;&nbsp;</p>
                                    <p><font style="font-size:15px; font-weight:bold;">흥행</font>&nbsp;&nbsp;&nbsp;</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="event-blog-image" style="text-align: -webkit-center;">
                                    <img alt="image" class="img-responsive" src="images/blog1.png">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="blog-list">
                         <h4>줄거리</h4>
                         <div class="blog-desc" style="display: inline-block; margin:0 0 40px 0;">줄거리</div>		
					</div>
					
                </div>
            </section>
            
            
            <!--리뷰 block-->
            <section class="blog" style="padding:0px;">
                <div class="container">
                    <div class="row">

                        <div class="col-md-9 col-sm-8 col-xs-12" style="width:100%;">
                            <!-- <h2 class="blog-title-head">영화제목</h2>
                            <div class="blog-image-single margin-top-small">
                                <div style="width:65%; height:auto; display:grid; float:left; padding:20px 0px 20px 20px;"><img src="http://via.placeholder.com/750x450?text=left" class="img-responsive"></div>
                                <div style="width:35%; height:auto; display:grid; float:right; text-align:-webkit-right; padding:20px 20px 20px 0px;"><img src="http://via.placeholder.com/300x450?text=right" class="img-responsive"></div>
                            </div>
                            <div class="blog-desc" style="display: inline-block;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do </div>

                            <div class="clearfix"></div> -->
                            
                            <form action="#" method="post">
                            <div class="blog-list">
                                <h4>리뷰</h4>
                                
                                <!-- //$("#review_left").before(totalLength); -->
                                
                                <div class="review_top"><span class="review_left">총 0건</span>
                                <span class="review_right"><select name="sort" size=1>
        						<option value=1>최신순</option>
        						<option value=2>추천순</option>
        						<!-- <option value=3></option>
       							<option value=4></option>
       							<option value=5></option> -->
    							</select></span>
    							</div>
    							
								<ul id= "listTable">
								<!-- 이곳에서 리뷰 리스트 전체 출력 -->
								</ul>		
							</div>					
								</form>
                                <div class="clearfix"> </div>
                            
                            <div class="single-bottom comment-form" style="padding:50px 0 0 0;">
                               <h3>리뷰작성</h3>
                               <form method="post"  name="reInsert"  id="reInsert"> 
                                    <input type="text" class="form-control" name="reviewSubject" placeholder="제목을 입력해주세요">
                                    평점&nbsp;&nbsp;&nbsp;&nbsp;<input type='radio' name='reviewStarPoint' value=1 />1
                                    <input type='radio' name='reviewStarPoint' value=2 />2
                                    <input type='radio' name='reviewStarPoint' value=3 />3
                                    <input type='radio' name='reviewStarPoint' value=4 />4
                                    <input type='radio' name='reviewStarPoint' value=5 />5
                                    <textarea class="form-control" name="reviewContent" placeholder="내용을 입력해주세요"></textarea>
                                    <input type="text" class="form-control" name="reviewPwd" placeholder="ex) 1234" style="width: 20%;"><!-- 비번 -->
                                    
                                    <input type="hidden" name='memberId'/><!-- 아이디 -->
 									<input type="hidden" name='movieCode' value='MV_1'  /><!-- 영화코드 -->
                                    
                                    <input type="button" class="submit-btn" id="btn" value="작성">
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

