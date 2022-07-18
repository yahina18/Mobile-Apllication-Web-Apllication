<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.content
{ 
  width:300px;
  height: 400px;
  background-image: url('images/Huawei.jpg');
  background-size: 100% 100%;
  box-shadow: 1px 2px 10px 5px black;
  animation:slider 60s infinite linear;
  margin-left:100px;
  
}
.Description
{
   box-shadow: 1px 2px 10px;
   width:700px;
   height: 400px;
   margin-right:100px;
}
h3,h2
{
   margin-left:50px;
}



@keyframes slider
{
 0%
 {
      background-image:url('images/Samsung.jpg');
 }
 35%
 {
      background-image:url('images/Samsung1.jpg');
 }
 75%
 {
    background-image: url('images/Samsung2.jpg');
 }
}

.grid-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 20px;
    margin:20px  150px; 
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
<div class="grid-container">
<div class="content">
</div>
<div class="Description">
<h3>Model Name: Samsung Galaxy A23 Light Blue</h3>
<h3>Original Price: 23,990</h3>
<h3>Sale Price: 17,699</h3>
<h2>About this item:</h2>
<h3> 50MP Quad Camera with OIS</br>
Powerful 2.4GHz Snapdragon Octa-Core processor</br>
165.4mm (6.6") FHD+ Infinity V 90Hz Smooth Display
6GB RAM, 128GB ROM ,Android 12.0 OS
5000 mAH long lasting Battery
Connector type: usb type c
</h3>
</div>
</div>
</body>
</html>