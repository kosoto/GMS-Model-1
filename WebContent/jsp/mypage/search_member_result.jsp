<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%! MemberBean member = null; %>
<% 
	member = MemberServiceImpl.getInstance()
	.findById(request.getParameter("user_id"));
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<style>
	table, td, tr, th {border : 1px solid black}
	</style>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>팀아이디</th>
			<th>역활</th>
			<th>나이</th>
		</tr>
		<tr>
			<td><%= member.getMemberId() %></td>
			<td><%= member.getName() %></td>
			<td><%= member.getTeamId()%></td>
			<td><%= member.getRoll() %></td>
			<td><%= member.getAge() %></td>
		</tr>
	</table>
</body>
</html>