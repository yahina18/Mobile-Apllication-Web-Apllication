<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.Contains
{
  height:700px;
  width:100%;
  display: flex;
}
.grid-green
{
    width: 50%;
    height: 500px;
    background-color: aqua;
}
.grid-blue
{ 
    width: 50%;
    height: 500px;
    background-color: blue;
}
.img1
{
 padding:53px 120px;
}
.AboutUs
{
  background-color: white;
    margin: 20px 20px;
    padding: 50px;
    height: 358px;
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
%>
<div class="Contains">

<div class="grid-green">
<div class="img1">
<img src="images/mobile-shop-logo.jpg">
</div>
</div>
<div class="grid-blue">
<div class="AboutUs">
<h1>About Us</h1>
<h3>Best Online Mobile Shop Website. We Provides the Best Phones in affordable prices and also offer the best sales for our amazing customers</h3> 
<h3 style="text-align:center;">EMI Facility is available</h3>
<h3 style="text-align:center;">Best Phones available</h3>
<h2 style="text-align:center;color:green;">Thanks for Visit Our Websites</h2>
<h1>Contact Us:9326331355 </h1>
<h1>Email:mobileshop.com@gmail.com</h1>
</div>

</div>
</div>
</body>
</html>