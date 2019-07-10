<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table.memberinfo {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    margin: 20px 10px;
}

table.memberinfo thead th {
    padding: 10px;
    font-weight: bold;
    border-top: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 2px solid #c00;
    background: #dcdcd1;
}
table.memberinfo tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    background: #ececec;
}
table.memberinfo td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
</style>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<table class="memberinfo">
    <thead>
    <tr>
        <th colspan="2">마이페이지</th>        
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">아이디</th>
        <td>${member.memberId}</td>
    </tr>
    <tr>
        <th scope="row">이메일</th>
        <td>${member.memberEmail}</td>
    </tr>
    <tr>
        <th scope="row">이름</th>
        <td>${member.memberName}</td>
    </tr>
    <tr>
        <th scope="row">별명</th>
        <td>${member.memberNickname}</td>
    </tr>
    <tr>
        <th scope="row">연령대</th>
        <td>${member.memberAge}</td>
    </tr>
    <tr>
        <th scope="row">가입일</th>
        <td>${member.memberDate}</td>
    </tr>
    </tbody>
</table>

</body>
</html>