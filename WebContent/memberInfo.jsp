<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='css/join_style.css' rel='stylesheet' style='text/css'/>
<style>
 div{text-align: center;}
 h1{ color: blue;}
 td{width: 300px; height: 80px;}
 input{width: 250px; height: 35px;}
 #delete{
  position: absolute;
  margin-left: 250px;
 }
</style>
</head>
<body>

<div>
<form>
<div align="center">
  <span style="font-size: 40px">마이페이지</span><input type="button" id="delete" value="회원탈퇴">
  </div>
			<table>
				<tr>
					<td id="title">아이디</td>
					<td>
						<span>${sessionScope.memberId}</span>
					</td>
				</tr>
						
				<tr>
					<td id="title">비밀번호</td>
					<td>
						<span>${sessionScope.memberPwd}</span>
					</td>
				</tr>
				
				<tr>
					<td id="title">이메일</td>
					<td>
						<span>${memberEmail}</span>
					</td>
				</tr>
					<tr>
					<td id="title">이름</td>
					<td>
						<span>${sessionScope.memberName}</span>
					</td>
				</tr>
						<tr>
					<td id="title">닉네임</td>
					<td>
						<span>${sessionScope.memberNickname}</span>
					</td>
				</tr>
					
				<tr>
					<td id="title">연령대</td>
					<td>
					  <span>${sessionScope.memberAge}</span>
					</td>
				</tr>
				
						<tr>
					<td id="title">가입일</td>
					<td>
						<span>${sessionScope.memberDate}</span>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" id="change" value="정보변경"/>
			<input type="button" id="cancel" value="취소" onclick="history.back()"/>
		</form>
			</div>
	<div class="my_box">
	
	</div>
</body>
</html>