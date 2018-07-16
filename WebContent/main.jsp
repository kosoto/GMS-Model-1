<%@page import="repository.MemberDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.text.SimpleDateFormat" %>
<%@ page import= "java.util.Date" %>
<%@ page import="service.*" %>
<%! int count; %>
<% 
count = MemberServiceImpl.getInstance().countMember(); 
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>GMS</title>
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>	
	<%= new SimpleDateFormat("yyyy년 MM월 dd일").format(new Date()) %>
	<h3>현재 회원수 : </h3> <%= count %>
	<table class="margin-auto">
		<tr class="height-150">
			<th colspan="2">
			<font size="20em">
			GMS
			</font>
			</th>		
		</tr>
		<tr class="height-400">
			<td>
			<img src="img/home/images.jpg" alt=""
			class="image-size"/>
			</td>
			<td>
			<ul>
				<li><a href="jsp/login/user_login_form.jsp">사용자로그인</a></li>
				<li><a href="jsp/login/admin_login.jsp">관리자로그인</a></li>
				<li><a href="jsp/join/join_form.jsp">회원가입</a></li>
				<li><a href="jsp/mypage/member_list.jsp">회원목록</a></li>
				
			</ul>			
			</td>
		</tr>
		<tr class="height-150">
			<td colspan="2">
			<font size="10em">주소</font>			
			</td>			
		</tr>
	</table>
</body>
</html>