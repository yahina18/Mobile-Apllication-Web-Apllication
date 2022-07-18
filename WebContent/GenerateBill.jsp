<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="HeaderLogout.html" %>
    <%@ page import="java.sql.*" %>
    <%@page import="com.helper.*" %>
    <%@page import="com.beans.*" %>
    <%@ page import="java.util.*" %>
    <%@page import="java.util.Date" %>
    <%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Page </title>
<link rel="stylesheet" href="csscode/Bill_Page.css">
<style>
.table
{
  width:500px;
  border:2px solid #888;
  border-spacing: 10px;
  margin-left:17%;
    
}
.table thead
{
 font-size:20px;
 border-bottom:2px solid black;
 background-color: white;
}
tr
{
border-collapse: collapse;
border-color:black;
background-color:white;
}
.img1
{ 
  height:100px;
}
.page table
{ 
 align:center;
}
</style>
</head>
<body>

<%
   String uname = (String)session.getAttribute("uname");
   Connection conn = new GetConnection().getConnection();
   PreparedStatement ps = conn.prepareStatement("select * from users where uname=?");

ps.setString(1,(String)session.getAttribute("uname"));
ResultSet rs = ps.executeQuery();
rs.next();
long mobile = rs.getLong("mobile");
String Address= rs.getString("address");
String email = rs.getString("email");

SimpleDateFormat  sdf = new SimpleDateFormat("dd:MM:yyyy");
String Date = sdf.format(new Date());
String date1 = Date.substring(0,2);
int d1=Integer.parseInt(date1);
int d2= d1+2;
String DeliveredDate = "0"+d2+":"+Date.substring(3);

%>

  
  <div class="page" size="A4">
    <div class="top-section">
    <div class="address">
    <div class="address-content">
    <h2> Mobile Shop </h2>
    <p> Pestom Sagar Reti Bunder Road no. 6 Chembur Mumbai-89</p>
    </div>
    </div>
    <div class="contact">
    <div class="contract-content">
    <div class="email">
   Email: <span class="span">
    MobileShop@gmail.com</span></div>
    <div class="number">
  Number:  <span class="span">
    7045104389</span></div>
    </div>
    </div>
     </div>
     <div class="heading" style="margin-top: 20px;
    margin-left: 250px;
    color: green;
    font-size: large;">
        Your Order Placed Successfully!!!
     </div>
     <div class="billing-invoice">
     <div class="title">
     Billing Invoice
     </div>
     <div class="des">
     <p class="code"> #1234567-763</p>
     <p class="issue">Issued:<span><%=Date%></span></p>
     <p class="Deliver" style="text-align:right;font-size:15px;color:red;">Delivery Date:<span><%=DeliveredDate%></span></p>
     </div>
     </div>

      <div class="billing-to">
        <div class="title">Billed to</div>
        <div class="billed-sec">
        <div class="name"><%=uname %></div>
        <p><%=email %></p>
        <p><%= mobile %></p>
        </div>
     
      <div class="billed-sec">
      <div class="sub-title">Shipping Address</div>
      <div class="ship-add"><%=Address %></div>
  
      </div>
      </div>
     
     
      
      <%
      /* Session Removable */
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
      
      /* table */
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
      }

      
%>
 
</div>
     </body>
     </html>