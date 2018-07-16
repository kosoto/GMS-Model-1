<%@page import="service.*"%>
<%@page import="domain.*"%>
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
	member.setPass(request.getParameter("pass")+"/"
			+request.getParameter("newPass"));
	MemberServiceImpl.getInstance().updateMember(member);
	/* 성공 실패처리 */
	%>
</body>
</html>