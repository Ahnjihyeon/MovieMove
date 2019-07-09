<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>리뷰 상세페이지</h3>
<table>
<tr> <td colspan="3"></td> </tr>
<tr> <td>${request.reviewdto.reviewSubject}</td><td>${request.reviewdto.reviewWriteday}</td><td>${request.reviewdto.reviewCount }</td> </tr>
<tr> <td colspan="3">${request.reviewdto.reviewContent }</td> </tr>
</table>


<table>
<tr> <td colspan="3"></td> </tr>
<tr> <td>제목</td><td>날짜</td><td>조회수</td> </tr>
<tr> <td colspan="3">내용</td> </tr>
</table>

<h3>댓글</h3>

</body>
</html>