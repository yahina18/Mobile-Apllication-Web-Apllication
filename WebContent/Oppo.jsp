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
      background-image:url('images/OppoA74.jpg');
 }
 35%
 {
      background-image:url('images/Oppo1.jpg');
 }
 75%
 {
    background-image: url('images/Oppo2.jpg');
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
<h3> Model Name: OPPO A74 5G</h3>
<h3> Original Price:24000</h3>
<h3> Sale Price:14,950</h3>
<h2> About this item:</h2>
<h3>
6.49" Inch (16.5cm) FHD+ Punch-hole Display with 2400x1080 pixels. Larger screen to body ratio of 90.5%.|Side Fingerprint Sensor. Bluetooth Audio Codec: SBC, AAC, APTX HD, LDAC
</h3>
</div>
</div>
</body>
</html>