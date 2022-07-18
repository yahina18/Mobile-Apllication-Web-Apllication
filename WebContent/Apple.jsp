<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.beans.ProductBean" %>
<%@ page import="com.helper.GetProducts" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.btn1
{
 padding:12px 14px;
 font-size:18px;
 width:100px;
 background-color: orange;
 color:white;
 margin-top: 10x;
 margin-left: 380px;
 border:none;
 outline:none;
}
.btn2
{
 padding:10px 14px;
 font-size:18px;
 width:100px;
 background-color: skyblue;
 color:white;
 margin-top: 10x;
 margin-left: 100px;
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
  ProductBean [] product =  new GetProducts().getProduct(0,3);
  session.setAttribute("product0",product[0]);
  session.setAttribute("product1",product[1]);
  session.setAttribute("product2",product[2]);
  
  out.println("<form action='Apple2.jsp' method='post'>");
  out.println("<div class='content'>");
  for(int i=0;i<3;i++)
  {
	  String str = "c"+i;
	  out.println("<div class=i"+i+">");
	  out.println("<img class='img1' src='"+product[i].getImage()+"'>");
	  out.println("<div>");
	  out.println("<input type='checkbox' name= '"+str+"'value=" +product[i].getModel()+">" +"<b>Add to Cart</b>");
	  out.println("<h5>"+product[i].getCompany()+"</h5>");
	  out.println("<h5><b> Model: "+product[i].getModel()+"</b></h5>");
	  out.println("<h5><b> Price: "+product[i].getPrice()+"</b></h5>");
	  out.println("<h5><b> Features: "+product[i].getFeature()+"</b></h5>");
	  out.println("</div></div>");
   	  
  }
  out.println("<input class='btn1' type='submit' name='btn' value='next'>");
  out.println("<input class='btn2' type='submit' name='btn' value='Purchase'>");
  out.println("</div>");
  out.println("</form>");
%>
<%@ include file="Footer.html"%>
</body>
</html>