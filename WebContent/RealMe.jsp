<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
      background-image:url('images/RealMe_.jpg');
 }
 35%
 {
      background-image:url('images/Demo1.jpg');
 }
 75%
 {
    background-image: url('images/RealMe2.jpg');
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
<h3> Model Name:    Real Me Narzo 50</h3>
<h3>Original Price: 15,540</h3>
<h3> Sale Price:    15,450</h3>
<h2>About this item</h2>
<h3>Processor: MediaTek Helio G96 Octa-core processor ;</br> 
Up to 2.05GHz clock speed</br>
Display: 6.6 inch FHD+ (2412x1080) display with 120Hz high refresh rate and adaptive refresh rate ;</br> 
180Hz touch sampling</br>
5000mAh battery with 33W Dart charging support. In box - 33W Dart Charger</br>
50MP + 2MP + 2MP | 16MP Front Camera</br>
6 GB RAM | 128 GB ROM | Expandable Upto 256 GB</h3>
</div>
</div>
</body>
</html>