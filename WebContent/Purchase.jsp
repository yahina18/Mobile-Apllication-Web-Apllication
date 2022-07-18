<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="HeaderLogout.html" %>
    <%@ page import="java.sql.*" %>
    <%@page import="com.helper.*" %>
    <%@page import="com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.img1
{
 width:75px;
}
.table
{
  position:relative;
  width:50%;
  border:2px solid #888;
  margin-left:25%;
  border-spacing: 10px;
    
}
.table thead
{
 color:blue;
 font-size:30px;
 border-bottom:2px solid black;
 background-color: white;
}
tr
{
border-collapse: collapse;
border-color:black;
background-color: #D6EEEE;
}
.btn3
{
 position:relative;
 padding: 8px 8px;
 
 background-color: orange;
 color:white;
 text-decoration: none;
 text-align: center;
 font-size: 20px;
 border:none;
 outline:none;
 margin-left:50px; 
}
.btn1
{
position:relative;
 padding: 8px 8px;
 
 background-color: Green;
 color:white;
 text-decoration: none;
 text-align: center;
 font-size: 20px;
 border:none;
 outline:none;
 
}
.btn2
{
 position:relative;
 padding: 8px 8px;
 
 background-color: red;
 color:white;
 text-decoration: none;
 text-align: center;
 font-size: 20px;
 border:none;
 outline:none;
 margin-left:40px;
 
}

</style>

</head>
<body>
<%
 if(session.getAttribute("uname")==null)
 {
	 RequestDispatcher rd = request.getRequestDispatcher("Signin.jsp");
	rd.include(request, response);
	response.getWriter().println("<h4 style='text-align:center';>Please Login First</h4>");
 }

%>

<%
 if(request.getParameter("c0")==null)
 {
	 session.removeAttribute("product3");
 }
if(request.getParameter("c1")==null)
{
	session.removeAttribute("product4");
}
if(request.getParameter("c2")==null)
{
	session.removeAttribute("product5");
}
%>

<%
out.println("<table class='table'>");
out.println("<tr>");
out.println("<thead>");
out.println("<td> Product</td>");
out.println(" <td>Model</td>");
 out.println("<td>Price</td>"); 
 out.println("</thead>");
out.println("</tr>");

Enumeration e = session.getAttributeNames();
int total = 0;
while(e.hasMoreElements())
{
	String s = (String)e.nextElement();
	if(!(s.equals("uname")||s.equals("pass")))
	{
		ProductBean obj=(ProductBean)session.getAttribute(s);
		out.println("<tr>");
		out.println("<td>");
		out.println("<img class='img1' src='"+obj.getImage()+"'>");
		out.println("</td>");
		out.println("<td>"+obj.getModel()+"</td>");
		out.println("<td>"+obj.getPrice()+"</td>");
		out.println("</tr>");
		total = total+obj.getPrice();
	}
	
}
if(total == 0)
{
	out.println("<tr>");
	out.println("<td colspan='3'><h4 style='color:green; text-align:center; font-size:20px; '>Cart is Empty Now Please Buy Something!!</h4></td>");
	out.println("</tr>");
	out.println("<tr>");	
	out.println("<td colspan='2'><h4 style='color:red; text-align:center; font-size:20px; '>Total Price</h4></td>");
	out.println("<td><h4 style='color:red; text-align:center; font-size:20px; '>"+total+"</h4></td>");
	out.println("</tr>");
}
else
{
	out.println("<tr>");	
	out.println("<td colspan='2'><h4 style='color:red; text-align:center; font-size:20px; '>Total Price</h4></td>");
	out.println("<td><h4 style='color:red; text-align:center; font-size:20px; '>"+total+"</h4></td>");
	out.println("</tr>");

/* Button Code*/
out.println("<tr style='background-color:white;'>");
out.println("<td colspan='3' style='text-align:center;'>");
out.println("<table border='0' style='width:100%;'>");
out.println("<tr style='background-color:white;'>");
out.println("<td style='width:250px;backgroud-color:white;'><a class='btn1' href='GenerateBill.jsp'>Generate Bill</a>");
out.println("<a class='btn2' href='HomeLogin.jsp'>Cancel</a>");
out.println("<a class='btn3' href='Apple.jsp'>Continue</a></td>");
out.println("</tr>");
out.println("</table>");
}
out.println("</td>");
out.println("</tr>");
out.println("</table>");
%>

<% 
Connection conn = new GetConnection().getConnection();
PreparedStatement ps = conn.prepareStatement("select * from users where uname=? and password=?");

ps.setString(1,(String)session.getAttribute("uname"));
ps.setString(2,(String)session.getAttribute("pass"));
ResultSet rs = ps.executeQuery();
rs.next();
out.println("<h4 style='text-align:center;'>Username: "+rs.getString("uname")+"</h4>");
out.println("<h4 style='text-align:center;'>Address: "+rs.getString("address")+"</h4>");
out.println("<h4 style='text-align:center;'>Mobile Number: "+rs.getLong("mobile")+"</h4>");
 
%>
</body>
</html>