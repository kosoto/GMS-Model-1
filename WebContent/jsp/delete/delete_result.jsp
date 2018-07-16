<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<%
	MemberBean member = new MemberBean();
	member.setMemberId(request.getParameter("user-id"));
	member.setPass(request.getParameter("pass"));
	MemberServiceImpl.getInstance().deleteMember(member);
	//성공실패 여부
	%>
</body>
</html>