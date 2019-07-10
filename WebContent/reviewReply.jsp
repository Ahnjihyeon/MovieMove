<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="reDTO" value="${request.reviewDTO}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// reviewStarPoint ${request.reviewSubject} 의 value  selectIndex
		var rePoint = '${requestScope.reviewDTO.reviewStarPoint}';
		alert( rePoint );
		
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
					} else {
						alert("오류가 발생해서 처리되지 않았습니다.");
					}
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
						str += "<td> 작성자 : "+ item.memberId +"</td>"				
						str += "</tr>";						
						str += "<tr>";
						str += "<td> 내용 : "+ item.commentContent +"</td>";
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
		
	})
</script>
</head>
<body>

<h3>리뷰 상세페이지</h3>
<form method="post"  name="reInsert"  id="reInsert"> 
<input type="text" class="form-control" name="reviewSubject" value=" ${requestScope.reviewDTO.reviewSubject}"><br>
<input type='radio' name='reviewStarPoint' value=1 />1
<input type='radio' name='reviewStarPoint' value=2 />2
<input type='radio' name='reviewStarPoint' value=3 />3
<input type='radio' name='reviewStarPoint' value=4 />4
<input type='radio' name='reviewStarPoint' value=5 />5<br>
<textarea class="form-control" name="reviewContent" >${requestScope.reviewDTO.reviewContent}</textarea><br>
                                    
<input type="hidden" name='memberId'/><!-- 아이디 -->
<input type="hidden" name='movieCode' value='A01'  /><!-- 영화코드 -->
                                    
<input type="button" class="update-btn" id="update-btn" value="수정하기">
<input type="button" class="delete-btn" id="delete-btn" value="삭제하기">
</form>

<div class="single-bottom comment-form" style="padding:50px 0 0 0;">
	
	<h4>댓글쓰기</h4>
	<form method="post" name="coInsert" id="coInsert">
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