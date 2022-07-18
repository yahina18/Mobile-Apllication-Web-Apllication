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
      background-image:url('images/Vivo.jpg');
 }
 35%
 {
      background-image:url('images/Vivo1.jpg');
 }
 75%
 {
    background-image: url('images/Vivo2.jpg');
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
<h3>
Model Name:	IQOO Z6 5G</br>
Network Service Provider Unlocked for All Carriers</br>
Brand	IQOO
Form factor	Bar
Memory Storage Capacity	128 GB
<h3> Original Price:19,990</h3>
<h3> Sale Price: 14,990</h3>
<h2>About this item:</h2>
<h3> It is recommended to use vivo Original Power Adapter 18W (9V~2V) for the Z6 5G without in-box charger variant.
Snapdragon 695 5G Mobile Platform allows you to level up your performance with efficient 6nm Process, with an ANTUTU Score of 410563. Also, we get a 15% improved CPU performance & improved 30% GPU performance (As compared to Snapdragon 690G)</h3>
</h3>
</div>
</div>
</body>
</html>