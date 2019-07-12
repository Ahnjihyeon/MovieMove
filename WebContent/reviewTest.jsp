<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		
		// 1.등록
		$("#btn").click( function() {
			console.log( $("form").serialize()  );
			
			$.ajax({ 
				type: "post",
				url: "${path}/ReviewInsert", 
				dataType: "text",
				data: $("form").serialize() , // 폼전송
				success:  function( result ) {
					if( result > 0 ) {
						alert( "등록완료" );
						//selectAll(); // 전체검색(화면갱신)
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
					
					var str="";
					$.each(result, function(index, item){
						// 영화제목 , 아이디, 가입일 , 좋아요 ,        제목
						str += "<tr>";
						str += "<td>"+ (index+1) +"</td>";
						str += "<td><a href='#'>"+ item.reviewSubject +"</a></td>";
						str += "<td>"+ item.memberId +"</td>"
						
						str += "<td>"+ item.reviewWriteday +"</td>";
						str += "<td>"+ item.reviewStarPoint +"</td>"
						str += "</tr>";
						
						str += "<tr>";
						str += "<td colspan='4'>"+ item.reviewContent +"</td>";
						str += "</tr>";
					})	
					$("#listTable").append(str); 
					$("a").css("textDecoration","none");
 				},
				error: function( error ) {
					console.log( "검색오류" );
				} 
			}) 
		}////////////////////////////// 
		selectAll();
		
		setInterval("selectAll",5000); // 자동새로고침 효과
		
		// 3. a태그 클릭하면 이동
		$(document).on("click","#listTable a", function() {
			location.href="${path}/move?command=read&reviewSubject='11'";
			
		});
	})

</script>
<body>
<!-- index에서 넘어온 검색결과를 DB에서 조회해서 출력 -->

<%-- 
영화코드 &lt;-- 이건 밑에서 사용
<c:choose>
<c:when test="${empty request.moviedto }">
	<h1>내용이 없습니다.</h1>
</c:when>

<c:otherwise>
 <c:forEach items="request.moviedto" var="moviedto">
<table>
<tr> <th>영화제목</th>  <td>${moviedto.movieTitle}</td> </tr>  <!-- 알라딘 -->
<tr> <th>개봉연도</th>  <td>${moviedto.movieYear}</td> </tr>
<tr> <th>영화평점</th>  <td>${moviedto.starPoint}</td> </tr>
</table>


<h3>줄거리</h3>
알라딘을 영화로는 보지 않았지만 노래만 들어도 흥이 아주~얼쑤
${moviedto.movieSummary}
 --%>

<h3>리뷰</h3>
<table id= "listTable">
</table>




<form method="post"  name="reInsert"  id="reInsert"><!--  action="${path}/movie?command=insert"  -->
<h3>리뷰작성</h3>
 <input type="text" name="reviewSubject" placeholder="리뷰제목" required="" value="11"><br>
 <input type='radio' name='reviewStarPoint' value=1 />1
 <input type='radio' name='reviewStarPoint' value=2 />2
 <input type='radio' name='reviewStarPoint' value=3 />3
 <input type='radio' name='reviewStarPoint' value=4 />4
 <input type='radio' name='reviewStarPoint' value=5 />5<br>
 <textarea name="reviewContent" placeholder="내용을 입력해주세요" required=""></textarea><br>
 <input type="text" name='reviewPwd' value='1234'/><!-- 비번 -->

 <input type="hidden" name='memberId' value='11'/><!-- 아이디 -->
  <input type="hidden" name='movieCode' value='A01'  /><!-- 영화코드 -->

 <input type="button" class="submit-btn" id="btn" value="작성">
 
</form>

<%-- 
 </c:forEach>
</c:otherwise>
</c:choose>
 --%>
</body>
</html>