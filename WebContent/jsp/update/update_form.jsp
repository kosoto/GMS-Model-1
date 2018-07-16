<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<h3>비밀번호 변경</h3>
<form action="update_result.jsp">
ID <br>
<input type="text" name="user-id"/><br>
이전 비밀번호 <br>
<input type="text" name="pass"/><br>
새로운 비밀번호 <br>
<input type="text" name="newPass"/><br>
<input type="submit" value="제출" />
</form>
</body>
</html>