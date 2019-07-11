<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="reDTO" value="${request.reviewDTO}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	input.like-btn{
		background: url('images/icons/like.png') no-repeat;
		border:none;
		width:40px;
		height:40px;
		cursor:pointer;
	}
</style>
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// reviewStarPoint ${request.reviewSubject} 의 value  selectIndex
		var rePoint = '${requestScope.reviewDTO.reviewStarPoint}';
		
		//$("input[type=radio]").attr("checked", true);
		$('input[type=radio]').each( function( index, item ) {
  	   		if( this.value == rePoint ){ //값 비교
    	        	this.checked = true; //checked 처리
  	   		}
		});
		// 로그인해서 자기 등록글만 수정,삭제 버튼 나타나기
		var loginId = '${sessionScope.memberId}';
		var memberId = '${ requestScope.reviewDTO.memberId }';
		//console.log( "로그인 = " + loginId + " 등록자 = " + memberId );
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
				location.href="${path}/movie?command=delete&reviewId="+reviewId+"&reviewPwd="+result;
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
				
				// 완료버튼 클릭하면 값 전송
				$(this).click(function() {
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
				}) // 완료버튼 클릭 끝
				//////////////////////
			} else if( $(this).val()=="수정완료" ) {
			
				$(this).val("수정완료");	
				$("#reUpdate").hide();
				$("#reSelet").show();
				
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
					$("#commentTable tr").remove();  // #listTable tr:gt(0)
					var str="" ;
					$.each(result, function(index, item){
						str += "<tr>";
						str += "<td> 작성자 :<span>"+ item.memberId +"</span></td>"				
						str += "</tr>";						
						str += "<tr>";
						str += "<td> 내용 : "+ item.commentContent +"</td>";
						str += "<td><input type='button' value='삭제' name='"+item.commentNum+"'></td>"
						str += "</tr>";						
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
			var commentId = $(this).parent().parent().prev().children().children().text();			
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
					$(".like_count").html(count);
				}
			})
		};
		likeCount(); //처음 들어왔을 때 좋아요 개수 호출
		
	})
</script>
</head>
<body>

<h3>리뷰 상세페이지</h3>

<!-- 일반 페이지  -->
<div name="reSelet" id="reSelet">
<span id="reSubject" >${requestScope.reviewDTO.reviewSubject}</span>
<span id="reStarPoint" >${requestScope.reviewDTO.reviewStarPoint}점</span>
<hr>
<div id="reContent" >${requestScope.reviewDTO.reviewContent}</div>
</div>

<!-- update용 페이지  -->
<form method="post"  name="reUpdate"  id="reUpdate"> 
<input type="text" class="form-control" name="reviewSubject" value=" ${requestScope.reviewDTO.reviewSubject}">좋아요 : <span class="like_count"></span>개<br>
<input type='radio' name='reviewStarPoint' value=1 />1
<input type='radio' name='reviewStarPoint' value=2 />2
<input type='radio' name='reviewStarPoint' value=3 />3
<input type='radio' name='reviewStarPoint' value=4 />4
<input type='radio' name='reviewStarPoint' value=5 />5<br>
<textarea class="form-control" name="reviewContent" >${requestScope.reviewDTO.reviewContent}</textarea><br>
                                    
<input type="hidden" name='memberId'/><!-- 아이디 -->
<input type="hidden" name='movieCode' value='${requestScope.reviewDTO.movieCode}'  /><!-- 영화코드 -->

</form>
<input type="button" class="update-btn" id="update-btn" value="수정하기">
<input type="button" class="delete-btn" id="delete-btn" value="삭제하기">
<input type="button" class="like-btn" id="like-btn">

<div class="single-bottom comment-form" style="padding:50px 0 0 0;">
	
	<h4>댓글쓰기</h4>
	<form method="post" name="coInsert" id="coInsert">
		<input type="hidden" name="commentNum" value="">
		<input type="hidden" name="commentBoard" value="${requestScope.reviewDTO.reviewId}"/>		
		<textarea class="form-control" name="commentContent" placeholder="내용을 입력해주세요" required=""></textarea><br>
		<input type="button" value="등록" id="insertComment" name="insertCommnet">		
	</form>
	<h4>댓글목록</h4>
	<table id="commentTable">
	<!-- 댓글 전체 리스트 출력 -->
	</table>
</div>
</body>
</html>