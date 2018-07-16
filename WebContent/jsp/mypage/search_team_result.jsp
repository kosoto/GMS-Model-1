<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>
<%@page import="java.util.*"%>
<%@page import="service.*"%>
<%! List<MemberBean> list;%>
<%
	list = MemberServiceImpl
	.getInstance()
	.findByTeamId(request.getParameter("team_id"));
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<style>
	table,th,tr,td {border:1px solid black}
	</style>
</head>
<body>
	<h3><%= request.getParameter("team_id") %></h3>
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>팀 아이디</th>
			<th>역활</th>
			<th>나이</th>
		</tr>
		<%for(MemberBean member : list){
			%> 
		<tr>
			<td><%=member.getMemberId() %></td>
			<td><%=member.getName() %></td>
			<td><%=member.getMemberId() %></td>
			<td><%=member.getRoll() %></td>
			<td><%=member.getAge() %></td>
		</tr>
			<%
		} %>
		
	</table>
</body>
</html>