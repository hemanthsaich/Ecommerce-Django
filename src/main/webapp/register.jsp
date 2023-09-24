<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h2> Register here</h2>
	<div class="register">
		<form action="reg" method="post">
			<label for="username"><b>User Name</b></label><br>
			<input type="text" id="textBox" name="uname" placeholder="Username">
			<br><br>
			<label for="email"><b>Email</b></label><br>
			<input type="email" name="mail" id="textBox" placeholder="Email">
			<br><br>
			<label for="password"><b>Password</b></label><br>
			<input type="password" name="pass" id="textBox" placeholder="Password">
			<br><br>
			<label for="gender"><b>Gender</b></label><br>
			<input type="radio" name="gender" value="male">
			<label for="gender">Male</label>
			<input type="radio" id="gender" value="female">
			<label for="gender">Female</label>
			<input type="radio" id="gender" value="other">
			<label for="gender">Other</label>
			<br><br>
			<label for="address"><b>Address</b></label><br>
			<textarea rows="2" cols="20" id="textBox" class="form" name="address"></textarea>
			<br><br>
			<input type="submit" id="sub" value="Register">
			<br><br>
			<a href="login.jsp">Already a member? Login here</a>
			
		
		</form>
	</div>
</body>
</html>