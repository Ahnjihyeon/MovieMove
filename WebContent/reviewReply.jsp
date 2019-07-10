<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="reDTO" value="${request.reviewDTO}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.4.1.min.js"></script>
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

		// 세션 아이디랑 등록한 사랑 아이디랑 같으면 수정하기, 삭제하기 버튼 나옴
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

</body>
</html>