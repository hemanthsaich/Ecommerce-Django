<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h2>Login to start shopping</h2>
	<div class="login">
		<form id="login" action="log" method="post">
			<label for="uname"><b>User Name</b></label><br>
			<input type="text" id="textBox" name="uname" placeholder="Username">
			<br><br>
			<label for="pass"><b>Password</b></label><br>
			<input type="password" name="pass" id="textBox" placeholder="Password">
			<br><br>
			<input type="submit" id="sub" value="Login">
			<br><br>
			<a href="register.jsp">New User? Register here</a>
		</form>
	</div>
</body>
</html>