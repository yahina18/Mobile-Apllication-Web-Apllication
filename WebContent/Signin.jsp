<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="csscode/Sign_In.css">
<style>
span.account
{ 
 float:right;
 color:blue;
}
</style>
</head>
<body>

<div class="modal">

<form action="LoginServlet" method="post">
<div class="container1">
<b> User Name</b><input type="text" placeholder="Enter Username" name="uname">
<b>Password</b><input type="password" placeholder="Enter Passowrd" name="pass">
<button type="submit">Login</button>
<input type="checkbox" checked="checked" name="remember"> Remember Me
<span class="account">Create Account<a href="Signup.jsp">Click here!!</a></span>
</div>
<div class="container2">
<a class="cancelbtn" href="Home.jsp" >Cancel</a>
<span class="pws">Forget<a href="ForgetPassword.html">Password</a></span>
</div>

</form>
</div>
</body>
</html>