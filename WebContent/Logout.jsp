<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="Header.html" %>
    <%@page import ="javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
out.println("<h4 style='text-align:center';>Logout Successfully!!!</h4>");
RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
rd.forward(request, response);
%>
</body>
</html>