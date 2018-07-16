<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>
<%@ page import="java.util.*" %>
<%
	List<MemberBean> list = MemberServiceImpl
	.getInstance().memberList();
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<style>
	table, tr, td, th {border: 1px solid black}
	</style>
</head>
<body>
	<table class="tbl">
	<tr>
	<th>이름</th>
	<th>ID</th>
	<th>TEAM ID</th>
	<th>역활</th>
	<th>나이</th>
	</tr>
	<%
	for(MemberBean member : list){
		%> 
		<tr>
		<td><%=member.getName()%></td>
		<td><%=member.getMemberId()%></td>
		<td><%=member.getTeamId()%></td>
		<td><%=member.getRoll()%></td>
		<td><%=member.getAge()%></td>
		</tr>
		<%
	}
	%>
	</table>
</body>
</html>








