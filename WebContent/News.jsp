<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
h2
{ 
  text-align:center;
  color:green;
  font-size:30px;
}
.img1
{
 width:200px;
 height:200px;
 margin-left:75px;
}
.Phoneview
{
 margin-left:5%;
 margin-top:5%:
 border:1px solid black;
 display:flex;
 flex-wrap:wrap;
}
h3
{
 margin-left:10px;
}

.c1,.c2,.c3
{
  border:1px solid gray;
  margin: 5px 5px;
  padding: 15px 15px;
  
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
<div class="maindiv">
<h2>Blogs & News About New Phones</h2>
<div class="Phoneview">
<div class="c1"><img class="img1" src="images/Vivo.jpg">
<h3> Model Name:VivoP20</h3>
<h3>Price:55000</h3>
<h3> About this item:</h3>
<h3>6.71 cm (6.58"), FHD Plus</h3>
<h3>128GB ROM | 8GB RAM | Funtouch OS 12.0</h3>
<h3>Qualcomm Snapdragon 695 Processor</h3>
<h3>R: 50MP + 2MP + 2MP | F : 16MP</h3>
<h3>5000 mAh Lithium Battery</h3>
</div>
<div class="c2"><img class="img1" src="images/izoo.jpg">
<h3> Model Name:vivo iQOO Z6</h3>
<h3>Price:20,000</h3>
<h3> About this item:</h3>
<h3>6.71 cm (6.58"), FHD Plus</h3>
<h3>128GB ROM | 8GB RAM | Funtouch OS 12.0</h3>
<h3>Qualcomm Snapdragon 695 Processor</h3>
<h3>R: 50MP + 2MP + 2MP | F : 16MP</h3>
<h3>5000 mAh Lithium Battery</h3>
</div>
<div class="c3"><img class="img1" src="images/vivoT51.jpg">
<h3> Model Name:VivoT51</h3>
<h3>Price:23000</h3>
<h3> About this item:</h3>
<h3>44W Flash Charge</h3>
<h3>128GB ROM | 8GB RAM | Funtouch OS 12.0</h3>
<h3>Qualcomm Snapdragon 695 Processor</h3>
<h3>R: 50MP + 2MP + 2MP | F : 16MP</h3>
<h3>5000 mAh Lithium Battery</h3>
</div>
</div>
</div>
<%@ include file="Footer.html"%>
</body>
</html>