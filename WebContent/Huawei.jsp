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
      background-image:url('images/Huawei.jpg');
 }
 35%
 {
      background-image:url('images/Huawei2.jpg');
 }
 75%
 {
    background-image: url('images/Huawei.jpg');
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

     
     <div class="content"></div>
     
     <div class="Description">
            <h3>Model Name:Huawei P20 </h3>
            <h3>original Price:19990</h3>
            <h3>Sale Price:14560</h3>
            <h2>About this item:</h2>
            <h3>Dimensions	148.6 x 71.2 x 7.4 mm (5.85 x 2.80 x 0.29 in)
            Weight	145 g (5.11 oz)
Build	Front glass, aluminum frame, plastic back
SIM	Dual SIM (Nano-SIM, dual stand-by)
DISPLAY
</h3>
</div>     
</div>
</body>
</html>
