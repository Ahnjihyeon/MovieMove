<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="reDTO" value="${request.reviewDTO}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="images/icons/favicon.png" />
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
<link rel="stylesheet" href="css/lightbox.min.css">
<link href="css/responsive.css" rel="stylesheet">
<style>
#updelButton {
	margin-left: 895px;
    width: 180px;
    height: 40px;
    margin-top: 5px;
    position: absolute
}

#update-btn {
	width: 80px;
    height: 40px;
}

#doubleCount {
	float: right;
	margin-top: -18px;
}

#delete-btn {
	position: absolute;
    width: 80px;
    height: 40px;
    margin-left: 20px;
}
input.like-btn {
	background: url('images/icons/like.png') no-repeat;
	border: none;
    width: 40px;
    height: 40px;
    margin-top: -4px;
    margin-left: 26px;
    margin-bottom: 30px;
    vertical-align: text-top;
    float: right;
}

.commentList {
	font-size: 13px;
	list-style: none;
	font-weight: 600;
	letter-spacing: 1px;
	margin-bottom: 5px;
	margin-top: 20px;
	padding-bottom: 10px;
	text-transform: uppercase;
	border-bottom: 1px dashed #ddd;
}

.reviewAvertissement {
	border: 1px solid;
	padding: 10px;
	width: 800px;
	word-spacing: 5px;
}
</style>
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var rePoint = '${requestScope.reviewDTO.reviewStarPoint}';
		
		$('input[type=radio]').each( function( index, item ) {
  	   		if( this.value == rePoint ){ //값 비교
    	        	this.checked = true; //checked 처리
  	   		}
		});
		// 로그인해서 자기 등록글만 수정,삭제 버튼 나타나기
		var loginId = '${sessionScope.memberId}';
		var memberId = '${ requestScope.reviewDTO.memberId }';
		if( loginId == "" ) {
			//console.log("세션없음");
			$("#update-btn").hide();
			$("#delete-btn").hide();
		} else {
			if( loginId == memberId ) {
				//console.log("세션아이디랑 게시글 등록자랑 같음");
				$("#update-btn").show();
				$("#delete-btn").show();
			} else if( loginId != memberId ) {
				//console.log("세션아이디랑 게시글 등록자랑 같지않음");
				$("#update-btn").hide();
				$("#delete-btn").hide();
			}
		}
		
		// 삭제하기
		$("#delete-btn").click(function() {
			var result = prompt("등록했던 게시글 비빌번호를 입력해주세요.","1234");
 			
			var reviewId = '${requestScope.reviewDTO.reviewId}';
			var rePwd = '${requestScope.reviewDTO.reviewPwd}';
			if ( result==rePwd ) {
				<%@ page language="java" contentType="text/html; charset=UTF-8"
					pageEncoding="UTF-8"%>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

				<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>
				<c:set var="reDTO" value="${request.reviewDTO}" />
				<!DOCTYPE html>
				<html>
				<head>
				<meta charset="UTF-8">
				<link rel="icon" href="images/icons/favicon.png" />
				<!-- Bootstrap core CSS -->
				<link href="css/bootstrap.min.css" rel="stylesheet">
				<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
					type="text/css" />
				<!-- Custom styles for this template -->
				<link href="css/style.css" rel="stylesheet">
				<link href="fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
				<link rel="stylesheet" href="css/lightbox.min.css">
				<link href="css/responsive.css" rel="stylesheet">
				<style>
				#doubleCount {
					float: right;
					margin-top: -18px;
				}

				input.like-btn {
					background: url('images/icons/like.png') no-repeat;
					border: none;
					width: 40px;
					height: 40px;
					margin-top: -13px;
					margin-left: 15px;
					margin-bottom: 24px;
					vertical-align: text-top;
				}

				.commentList {
					font-size: 13px;
					list-style: none;
					font-weight: 600;
					letter-spacing: 1px;
					margin-bottom: 5px;
					margin-top: 20px;
					padding-bottom: 10px;
					text-transform: uppercase;
					border-bottom: 1px dashed #ddd;
				}

				.reviewAvertissement {
					border: 1px solid;
					padding: 10px;
					width: 800px;
					word-spacing: 5px;
				}
				</style>
				<title>Insert title here</title>
				<script src="js/jquery.min.js"></script>
				<script type="text/javascript">
					$(function() {
						var rePoint = '${requestScope.reviewDTO.reviewStarPoint}';
						
						$('input[type=radio]').each( function( index, item ) {
				  	   		if( this.value == rePoint ){ //값 비교
				    	        	this.checked = true; //checked 처리
				  	   		}
						});
						// 로그인해서 자기 등록글만 수정,삭제 버튼 나타나기
						var loginId = '${sessionScope.memberId}';
						var memberId = '${ requestScope.reviewDTO.memberId }';
						if( loginId == "" ) {
							//console.log("세션없음");
							$("#update-btn").hide();
							$("#delete-btn").hide();
						} else {
							if( loginId == memberId ) {
								//console.log("세션아이디랑 게시글 등록자랑 같음");
								$("#update-btn").show();
								$("#delete-btn").show();
							} else if( loginId != memberId ) {
								//console.log("세션아이디랑 게시글 등록자랑 같지않음");
								$("#update-btn").hide();
								$("#delete-btn").hide();
							}
						}
						
						// 삭제하기
						$("#delete-btn").click(function() {
							var result = prompt("등록했던 게시글 비빌번호를 입력해주세요.","1234");
				 			
							var reviewId = '${requestScope.reviewDTO.reviewId}';
							var rePwd = '${requestScope.reviewDTO.reviewPwd}';
							if ( result==rePwd ) {
								location.href="${path}/ReviewDelete?&reviewId="+reviewId+"&reviewPwd="+result;
							} else {
								alert('비밀번호가 틀렸습니다. 다시 입력해주세요.');
							}
						});
						
						
						$("#reSelet").show();
						$("#reUpdate").hide();
						
						// 수정하기  reSelet   reUpdate
						$("#update-btn").click(function() {
							if( $(this).val()=="수정하기" ) {
								
								$(this).val("수정완료");	
								$("#reUpdate").show();
								$("#reSelet").hide();
								
							} else if( $(this).val()=="수정완료" ) {	
								
									var result = prompt("등록했던 게시글 비빌번호를 입력해주세요.","1234");
									var reviewId = '${requestScope.reviewDTO.reviewId}';
									var rePwd = '${requestScope.reviewDTO.reviewPwd}';
									
									console.log( "전송되는 업데이트 폼 값 = " + $("form[name=reUpdate]").serialize() );
									
									if ( result==rePwd ) {
										var param = $("form[name=reUpdate]").serialize()+ "&reviewId="+reviewId+"&reviewPwd="+result;
									
										// 수정하기 ajax
										$.ajax({ 
										type: "post",
										url: "ReviewUpdate", 
										dataType: "json",
										data: param,
										success:  function( result ) {
												
												$.each( result, function( index, item ) {
													//alert("수정완료");
													$("#reSubject").text( item.reviewSubject );	
													$("#reStarPoint").text( item.reviewStarPoint );
													$("#reContent").text( item.reviewContent );
												})
												
												$("#update-btn").val("수정하기");	
												$("#reSelet").show();
												$("#reUpdate").hide();  
											},
											error: function( error ) {
												alert("수정x");
												console.log( error );
											}
										}) // ajax 끝 
									} else {
										alert('비밀번호가 틀렸습니다. 다시 입력해주세요.');
									}
							}// 버튼이 수정하기 이냐 묻기 끝
						})
						//-------------------------------------------------------------------
						//댓글 입력하기
						$("#insertComment").click(function() {	
							//alert(${requestScope.reviewDTO.reviewId});
							$.ajax({ 
								type: "post",
								url: "insertcomment", 
								dataType: "text",
								data: $("form[name=coInsert]").serialize(), // 폼전송
								success:  function( result ) {
									if( result > 0 ) {
										selectAll(); // 전체검색(화면갱신)
									} else if( result==-1 ){
										alert( "로그인 후에 댓글을 등록해주세요." );
										window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
									} else {
										alert("오류가 발생해서 처리되지 않았습니다.");
									}
									$("#commentContent").text("");
								},
								error: function( error ) {
									alert("삽입x");
									console.log( error );
								}
							})  
						});
						
						//댓글 전체 리스트 출력
						function selectAll(){
							$.ajax({ 
								type: "post",
								url: "selectcomment",  
								dataType: "json",
								data: $("input[name=commentBoard]") ,
								success:  function( result ) {
									$(".commentList").remove();  // #listTable tr:gt(0)
									var str="" ;
									$.each(result, function(index, item){
										str += "<ul class='commentList'>";
				                        str += "<li style='padding:15px 15px 0 0;'>";
				                        str += "<div style='color:#b1afaf;'>"+"&nbsp;&nbsp;&nbsp;<h3 style='display: contents; font-size:20px;'><span>"+item.memberId+"</span></h3>&nbsp;&nbsp;&nbsp;&nbsp;"+" | "+ item.commentDate +"</div>";
				                        str += "<br><div id='listSubject' value='item.reviewSubject' style='font-size:15px;'>"+ item.commentContent;
				                        str += "<input type='button' value='삭제' style='float: right; margin-top: -21px; margin-right: -11px;width: 80px; height: 40px;' name='"+item.commentNum+"'>"+"</div>"
				                        str += "</li>";
				                        str += "</ul>";	
									})
									$("#commentTable").append(str);
				 				},
								error: function( error ) {
									console.log( "검색오류" );
								} 
							}) 
						}////////////////////////////// 
						selectAll();
						
						/////////////////////////////////
						//댓글 삭제
						$(document).on("click", "[value=삭제]",function(){
							var commentId = $(this).parent().prev().prev().children().children().text();	
							if(loginId!=commentId){
								alert("아무나 삭제하는거 아닙니다^^");
								return false;
							}			
							$.ajax({
								type:"post",
								url:"deletecomment",
								dataType:"text",
								data:{"commentNum" : $(this).attr("name")},
								success:function(result){					
									if(result>0){					
										$(this).remove();
										selectAll(); // 삭제 후 전체출력					
									}else{
										alert("삭제되지않았습니다.");
										return false;
									}
								},
								error : function(error){
									console.log("삭제오류");
								}			
							});			 
						});
						///////////////////////////////////////////////////////
						//좋아요 버튼 클릭
						$("#like-btn").click(function(){			
							console.log('좋아요!');
							$.ajax({
								type:"post",
								url:"likeclick",
								dataType:"text",
								data:{
									"memberId":"${sessionScope.memberId}",
									"reviewId":${requestScope.reviewDTO.reviewId}
								},
								success: function(){
									likeCount();
								},
								error : function(error){
									console.log("좋아요 버튼클릭 오류");
								}			
							})
						});
						//좋아요 카운트 출력
						function likeCount(){
							$.ajax({
								type:"post",
								url:"likecount",
								data:{
									"reviewId":${requestScope.reviewDTO.reviewId}				
								},
								success: function(count){
									$("#likeCount").text(count);
								}
							})
						};
						likeCount(); //처음 들어왔을 때 좋아요 개수 호출
						
					})
				</script>
				</head>
				<body>
					<div id="page">
						<!---header top 맨위---->
						<div class="top-header" style="background-color: #000">
							<div class="container">
								<div class="row">
									<div class="col-md-6"></div>
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
						<c:import url="header.jsp" />
						<hr style="border: 1px solid #eee; margin-top: 0;">
						</section>

					</div>
					<!-- 일반 페이지  -->
					<form name="reSelet" id="reSelet">
						<div class="reviewAvertissement"
							style="margin: auto; height: 615px; font-size: 17px;">
							<h3 id="reSubject" style="font-weight: 900px;">${requestScope.reviewDTO.reviewSubject}</h4>
								<div id="doubleCount">
									<span id="reviewCount"> 조회수
										${requestScope.reviewDTO.reviewCount}</span><br>
									<br> 좋아요 <span id="likeCount"></span><br>
								</div>
								<br> <span id="reStarPoint">평점 :
									${requestScope.reviewDTO.reviewStarPoint}점</span><br>
								<br> <span style="float: right;">등록일:
									${requestScope.reviewDTO.reviewWriteday}</span><br>
								<hr>
								<div id="reContent">${requestScope.reviewDTO.reviewContent}</div>
						</div>
					</form>

					<!-- 수정하기 페이지 -->
					<form method="post" name="reUpdate" id="reUpdate">
						<div class="reviewAvertissement" style="margin: auto; height: 615px;">
							<h4 class="form-control" >${requestScope.reviewDTO.reviewSubject}</h4>
							<br> <span style="margin-left: auto;">id:
								${requestScope.reviewDTO.reviewId }</span> <span style="float: right;">좋아요
								수</span> <br>
							<br> <input type='radio' name='reviewStarPoint' value=1 />1 <input
								type='radio' name='reviewStarPoint' value=2 />2 <input type='radio'
								name='reviewStarPoint' value=3 />3 <input type='radio'
								name='reviewStarPoint' value=4 />4 <input type='radio'
								name='reviewStarPoint' value=5 />5 <span style="float: right;">등록일:
								${requestScope.reviewDTO.reviewWriteday}</span><br>
							<br>
							<textarea class="form-control" name="reviewContent"
								style="height: 400px; width: 775px;">${requestScope.reviewDTO.reviewContent}</textarea>
							<br> 
							
							<input type="hidden" name='reviewSubject' value='${requestScope.reviewDTO.reviewSubject}'/><!-- 제목 -->
							<input type="hidden" name='memberId'  value='${requestScope.reviewDTO.memberId}'/><!-- 아이디 -->
							<input type="hidden" name='movieCode' value='${requestScope.reviewDTO.movieCode}' /><!-- 영화코드 -->
							

						</div>
					</form>
					<input type="button" class="update-btn" id="update-btn" value="수정하기"
						style="margin-left: 850px; width: 80px; height: 40px; margin-top: 5px;">
					<input type="button" class="delete-btn" id="delete-btn" value="삭제하기"
						style="width: 80px; height: 40px;">
					<input type="button" class="like-btn" id="like-btn">


					<div class="single-bottom comment-form" style="padding: 50px 0 0 0;">

						<h3 style="padding: 0 280px; font-size: 22px; font-weight: 600;">댓글</h3>
						<form method="post" name="coInsert" id="coInsert"
							style="overflow: hidden; margin: 0 auto; width: 800px;">
							<input type="hidden" name="commentNum" value=""> <input
								type="hidden" name="commentBoard"
								value="${requestScope.reviewDTO.reviewId}" />
							<textarea class="form-control" name="commentContent"
								placeholder="내용을 입력해주세요" required=""
								style="width: 800px; margin: auto;"></textarea>
							<br> <input type="button" value="등록" id="insertComment"
								name="insertCommnet"
								style="float: right; width: 80px; height: 40px; margin-top: -15px;">
						</form>
						<br>
						<div style="padding: 0 280px;">
							<h4
								style="font-size: 22px; border-bottom: 2px solid; padding-bottom: 10px; font-weight: 600;">댓글목록</h4>
							<table id="commentTable" style="width: 800px;">

								<!-- 댓글 전체 리스트 출력 -->
							</table>
						</div>
					</div>
				</body>
				</html>
			} else {
				alert('비밀번호가 틀렸습니다. 다시 입력해주세요.');
			}
		});
		
		
		$("#reSelet").show();
		$("#reUpdate").hide();
		
		// 수정하기  reSelet   reUpdate
		$("#update-btn").click(function() {
			if( $(this).val()=="수정하기" ) {
				
				$(this).val("수정완료");	
				$("#reUpdate").show();
				$("#reSelet").hide();
				
			} else if( $(this).val()=="수정완료" ) {	
				
					var result = prompt("등록했던 게시글 비빌번호를 입력해주세요.","1234");
					var reviewId = '${requestScope.reviewDTO.reviewId}';
					var rePwd = '${requestScope.reviewDTO.reviewPwd}';
					
					console.log( "전송되는 업데이트 폼 값 = " + $("form[name=reUpdate]").serialize() );
					
					if ( result==rePwd ) {
						var param = $("form[name=reUpdate]").serialize()+ "&reviewId="+reviewId+"&reviewPwd="+result;
					
						// 수정하기 ajax
						$.ajax({ 
						type: "post",
						url: "ReviewUpdate", 
						dataType: "json",
						data: param,
						success:  function( result ) {
								
								$.each( result, function( index, item ) {
									//alert("수정완료");
									$("#reSubject").text( item.reviewSubject );	
									$("#reStarPoint").text( item.reviewStarPoint );
									$("#reContent").text( item.reviewContent );
								})
								
								$("#update-btn").val("수정하기");	
								$("#reSelet").show();
								$("#reUpdate").hide();  
							},
							error: function( error ) {
								alert("수정x");
								console.log( error );
							}
						}) // ajax 끝 
					} else {
						alert('비밀번호가 틀렸습니다. 다시 입력해주세요.');
					}
			}// 버튼이 수정하기 이냐 묻기 끝
		})
		//-------------------------------------------------------------------
		//댓글 입력하기
		$("#insertComment").click(function() {	
			//alert(${requestScope.reviewDTO.reviewId});
			$.ajax({ 
				type: "post",
				url: "insertcomment", 
				dataType: "text",
				data: $("form[name=coInsert]").serialize(), // 폼전송
				success:  function( result ) {
					if( result > 0 ) {
						selectAll(); // 전체검색(화면갱신)
					} else if( result==-1 ){
						alert( "로그인 후에 댓글을 등록해주세요." );
						window.open("login.jsp", "로그인", "width=400, height=300, left=100, top=50");
					} else {
						alert("오류가 발생해서 처리되지 않았습니다.");
					}
					$("#commentContent").text("");
				},
				error: function( error ) {
					alert("삽입x");
					console.log( error );
				}
			})  
		});
		
		//댓글 전체 리스트 출력
		function selectAll(){
			$.ajax({ 
				type: "post",
				url: "selectcomment",  
				dataType: "json",
				data: $("input[name=commentBoard]") ,
				success:  function( result ) {
					$(".commentList").remove();  // #listTable tr:gt(0)
					var str="" ;
					$.each(result, function(index, item){
						str += "<ul class='commentList'>";
                        str += "<li style='padding:15px 15px 0 0;'>";
                        str += "<div style='color:#b1afaf;'>"+"&nbsp;&nbsp;&nbsp;<h3 style='display: contents; font-size:20px;'><span>"+item.memberId+"</span></h3>&nbsp;&nbsp;&nbsp;&nbsp;"+" | "+ item.commentDate +"</div>";
                        str += "<br><div id='listSubject' value='item.reviewSubject' style='font-size:15px;'>"+ item.commentContent;
                        str += "<input type='button' value='삭제' style='float: right; margin-top: -21px; margin-right: -11px;width: 80px; height: 40px;' name='"+item.commentNum+"'>"+"</div>"
                        str += "</li>";
                        str += "</ul>";	
					})
					$("#commentTable").append(str);
 				},
				error: function( error ) {
					console.log( "검색오류" );
				} 
			}) 
		}////////////////////////////// 
		selectAll();
		
		/////////////////////////////////
		//댓글 삭제
		$(document).on("click", "[value=삭제]",function(){
			var commentId = $(this).parent().prev().prev().children().children().text();	
			if(loginId!=commentId){
				alert("아무나 삭제하는거 아닙니다^^");
				return false;
			}			
			$.ajax({
				type:"post",
				url:"deletecomment",
				dataType:"text",
				data:{"commentNum" : $(this).attr("name")},
				success:function(result){					
					if(result>0){					
						$(this).remove();
						selectAll(); // 삭제 후 전체출력					
					}else{
						alert("삭제되지않았습니다.");
						return false;
					}
				},
				error : function(error){
					console.log("삭제오류");
				}			
			});			 
		});
		///////////////////////////////////////////////////////
		//좋아요 버튼 클릭
		$("#like-btn").click(function(){			
			console.log('좋아요!');
			$.ajax({
				type:"post",
				url:"likeclick",
				dataType:"text",
				data:{
					"memberId":"${sessionScope.memberId}",
					"reviewId":${requestScope.reviewDTO.reviewId}
				},
				success: function(){
					likeCount();
				},
				error : function(error){
					console.log("좋아요 버튼클릭 오류");
				}			
			})
		});
		//좋아요 카운트 출력
		function likeCount(){
			$.ajax({
				type:"post",
				url:"likecount",
				data:{
					"reviewId":${requestScope.reviewDTO.reviewId}				
				},
				success: function(count){
					$("#likeCount").text(count);
				}
			})
		};
		likeCount(); //처음 들어왔을 때 좋아요 개수 호출
		
	})
</script>
</head>
<body>
	<div id="page">
		<!---header top 맨위---->
		<div class="top-header" style="background-color: #000">
			<div class="container">
				<div class="row">
					<div class="col-md-6"></div>
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
		<c:import url="header.jsp" />
		<hr style="border: 1px solid #eee; margin-top: 0;">
		</section>

	</div>
	<!-- 일반 페이지  -->
	<form name="reSelet" id="reSelet">
		<div class="reviewAvertissement"
			style="margin: auto; height: 615px; font-size: 17px;">
			<h3 id="reSubject" style="font-weight: 900px;">${requestScope.reviewDTO.reviewSubject}</h4>
			<input type="button" class="like-btn" id="like-btn">
				<div id="doubleCount">
					<span id="reviewCount"> 조회수
						${requestScope.reviewDTO.reviewCount}</span><br>
					<br> 좋아요 <span id="likeCount"></span><br>
				</div>
				<br> <span id="reStarPoint">평점 :
					${requestScope.reviewDTO.reviewStarPoint}점</span><br>
				<br> <span style="float: right;">등록일:
					${requestScope.reviewDTO.reviewWriteday}</span><br>
				<hr>
				<div id="reContent">${requestScope.reviewDTO.reviewContent}</div>
		</div>
	</form>

	<!-- 수정하기 페이지 -->
	<form method="post" name="reUpdate" id="reUpdate">
		<div class="reviewAvertissement" style="margin: auto; height: 615px;">
			<h4 class="form-control" >${requestScope.reviewDTO.reviewSubject}</h4>
			<br> <span style="margin-left: auto;">id:
				${requestScope.reviewDTO.reviewId }</span> <span style="float: right;">좋아요
				수</span> <br>
			<br> <input type='radio' name='reviewStarPoint' value=1 />1 <input
				type='radio' name='reviewStarPoint' value=2 />2 <input type='radio'
				name='reviewStarPoint' value=3 />3 <input type='radio'
				name='reviewStarPoint' value=4 />4 <input type='radio'
				name='reviewStarPoint' value=5 />5 <span style="float: right;">등록일:
				${requestScope.reviewDTO.reviewWriteday}</span><br>
			<br>
			<textarea class="form-control" name="reviewContent"
				style="height: 400px; width: 775px;">${requestScope.reviewDTO.reviewContent}</textarea>
			<br> 
			
			<input type="hidden" name='reviewSubject' value='${requestScope.reviewDTO.reviewSubject}'/><!-- 제목 -->
			<input type="hidden" name='memberId'  value='${requestScope.reviewDTO.memberId}'/><!-- 아이디 -->
			<input type="hidden" name='movieCode' value='${requestScope.reviewDTO.movieCode}' /><!-- 영화코드 -->
			

		</div>
	</form>
	<div id="updelButton">
	<input type="button" class="update-btn" id="update-btn" value="수정하기">
	<input type="button" class="delete-btn" id="delete-btn" value="삭제하기">
	</div>


	<div class="single-bottom comment-form" style="padding: 50px 0 0 0;">

		<h3 style="padding: 0 280px; font-size: 22px; font-weight: 600;">댓글</h3>
		<form method="post" name="coInsert" id="coInsert"
			style="overflow: hidden; margin: 0 auto; width: 800px;">
			<input type="hidden" name="commentNum" value=""> <input
				type="hidden" name="commentBoard"
				value="${requestScope.reviewDTO.reviewId}" />
			<textarea class="form-control" name="commentContent"
				placeholder="내용을 입력해주세요" required=""
				style="width: 800px; margin: auto;"></textarea>
			<br> <input type="button" value="등록" id="insertComment"
				name="insertCommnet"
				style="float: right; width: 80px; height: 40px; margin-top: -15px;">
		</form>
		<br>
		<div style="padding: 0 280px;">
			<h4
				style="font-size: 22px; border-bottom: 2px solid; padding-bottom: 10px; font-weight: 600;">댓글목록</h4>
			<table id="commentTable" style="width: 800px;">

				<!-- 댓글 전체 리스트 출력 -->
			</table>
		</div>
	</div>
</body>
</html>