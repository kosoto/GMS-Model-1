<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>
<%@ page import="java.util.*" %>
<%
	List<MemberBean> list = MemberServiceImpl
	.getInstance().memberList();

	/* List<MemberBean> clist = MemberServiceImpl
	.getInstance().findByTeamId("CTEAM");
	
	MemberBean member = MemberServiceImpl
	.getInstance().findById("A1"); */
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<h3>전체 회원수 <%=list.size()%> 명</h3>
<%-- 	<h3>C팀 회원<%=clist %></h3>
	<h3>아이디가 A1인 회원 <%=member %></h3> --%>
</body>
</html>