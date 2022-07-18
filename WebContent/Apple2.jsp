<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.beans.*" %>
    <%@ page import="com.helper.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.btn2
{
 padding:12px 14px;
 font-size:18px;
 width:100px;
 background-color: skyblue;
 color:white;
 margin-top: 10x;
 margin-left: 200px;
 border:none;
 outline:none;
}
.btn3
{
 padding: 12px 14px;
 font-size: 18px;
 background-color: orange;
 color:white;
 width:70px;
 margin-top: 10px;
 margin-left: 300px;
 text-decoration: none;
 text-align: center;
 font-size: 20px;
 border:none;
 outline:none;
 
 
}
.content
{
 height: 650px;
 padding-bottom:50px;
 padding-top:50px;
 padding-left:140px;
 padding-right:100px;
 display:flex;
 flex-wrap: wrap;
 margin-bottom: 40px;
}
.i0,.i1,.i2
{
 width: 300px;
 height: 500px;
 border:1px solid #f1f1f1;
 padding: 14px 20px;
 margin-right: 20px;
 margin-bottom: 30px;
}
.img1
{ 
  width: 300px;
  height: 300px;
}

</style>
</head>
<body>

<%
if(session.getAttribute("uname")==null)  
{
%>
<jsp:include page="Header.html"/>
<%
}
else
{	  
%>
 <jsp:include page="HeaderLogout.html"/>  
<% 
}
  if(request.getParameter("btn")!=null)
  {
	
	  if(request.getParameter("c0")==null)
	  {
		  session.removeAttribute("product0");
	  }
	  if(request.getParameter("c1")==null)
	  {
		  session.removeAttribute("product1");
	  }
	  if(request.getParameter("c2")==null)
	  {
		  session.removeAttribute("product2");
	  }
  }
  if(request.getParameter("btn").equals("Purchase"))
  {	  RequestDispatcher rd = request.getRequestDispatcher("Purchase.jsp");
	  rd.forward(request, response);
  }
%>
<% 
ProductBean [] product = new GetProducts().getProduct(3,3);
session.setAttribute("product3",product[0]);
session.setAttribute("product4",product[1]);
session.setAttribute("product5",product[2]);

out.println("<form action='Purchase.jsp' method='post'>");
out.println("<div class='content'>");
for(int i=0;i<3;i++)
{
	 String str = "c"+i;
	  out.println("<div class=i"+i+">");
	  out.println("<img class='img1' src='"+product[i].getImage()+"'>");
	  out.println("<div>");
	  out.println("<input type='checkbox' name='"+str+"'value="+product[i].getModel()+">" +"<b>Add to Cart</b>");
	  out.println("<h5>"+product[i].getCompany()+"</h5>");
	  out.println("<h5><b> Model: "+product[i].getModel()+"</b></h5>");
	  out.println("<h5><b> Price: "+product[i].getPrice()+"</b></h5>");
	  out.println("<h5><b> Features: "+product[i].getFeature()+"</b></h5>");
	  out.println("</div></div>");
 	  
}
out.println("<a class='btn3' href='Apple.jsp'>Prev</a>");
out.println("<input class='btn2' type='submit' name='btn' value='Purchase'>");
out.println("</div>");
out.println("</form>");

%>
<%@ include file="Footer.html"%>
</body>
</html>