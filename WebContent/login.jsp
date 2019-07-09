<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function moveMemberForm(){
		opener.location.href='memberForm.html';
		self.close();
	}
</script>
</head>
<body>
<form method="post" action="movie?command=login">
<table align="center">
	<caption>로그인</caption>
	<tr>
		<th>아이디</th>
		<th><input type="text" name="memberId"></th>
		<th rowspan="2"><input type="submit" value="로그인"></th>
	</tr>
	<tr>
		<th>비밀번호</th>
		<th><input type="password" name="memberPwd"></th>
	</tr>
	<tr>
		<th colspan="3"><input type="button" value="회원가입" onclick="moveMemberForm()"></th>
	</tr>
</table>
</form>
</body>
</html>