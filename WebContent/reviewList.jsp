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
<script type="text/javascript">
	$(function() {
		// 리뷰 전체 리스트
		function selectAll(){
			$.ajax({ 
				type: "post",
				url: "${path}/ReviewSelectAll",  
				dataType: "json",
				success:  function( result ) {
					$("#listTable p").remove();  // #listTable tr:gt(0)
					
					var totalLength = "총 " + result.length + "건";
					console.log( "총 개수 = " + totalLength );
					var str="" ;
					$.each(result, function(index, item){
						// 리뷰제목 , 아이디, 내용 , 날짜 , 댓글수, 별점, 조회수
						str += "<div class='well' style='background-color:#fff;'>";
						str += "<div class='media'><a class='pull-left' href='#'>";
						str += "<img class='media-object' src='http://placekitten.com/150/150'></a>";
						str += "<div class='media-body'>";
						str += "<h4 class='media-heading'><a href='#' value='"+item.reviewId+"'>"+item.reviewSubject+"</a></h4>"; // 제목
						str += "<p class='text-right'>"+item.memberId+"</p>"; // 아이디
						str += "<p>"+item.reviewContent+"</p>"; // 리뷰내용
						str += "<ul class='list-inline list-unstyled'>";
						str += "<li><span>"+item.reviewWriteday+"</span></li>"; // 날짜
						str += "<li><span> 댓글수 :"+item.댓글수+"</span></li><li>|</li>"; // 댓글수
						str += "<li><span>"+item.reviewStarPoint+"점</span></li><li>|</li><li>"; // 별점
						
						str += "<span>조회수: "+item.reviewCount+"</span></li></ul></div></div></div>"; // 조회수
						
						$("#listTotal").text(totalLength);
						$("#listTable").append(str);
						})	
					},
				error: function( error ) {
					console.log( "검색오류" );
				} 
			}) 
		}////////////////////////////// 
		selectAll();
		//setInterval("selectAll", 5000 ); // 글 업데이트 
		
		// a태그 클릭하면 상세보기로 이동
		$(document).on("click", "#listTable a", function() {
			console.log( "클릭한 a 게시글번호 =" + $(this).attr("value") );
			var reId = $(this).attr("value");
			location.href="${path}/movie?command=read&reviewId="+reId;
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
            
            <!-- header -->
            <c:import url="header.jsp"/>
            
            <hr style="border:1px solid #eee; margin-top: 0;">
            <br>
            <br>
			<div class="container">
			
			<di id="listTotal">총 0건</di>
			<!--  여기서 부터 반복 시작 -->
			<div id="listTable"><p>게시물이 없습니다.</p></div>
			
			
			 <!-- <div class="well" style="background-color:#fff; ">
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
			  </div> -->
			  <!-- 여기까지 반복 -->
			  
			  
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