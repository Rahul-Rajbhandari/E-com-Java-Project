<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type = "text/css" href="registerStyle.css">
</head>
<body>
<div class = "container">
<h1>Register</h1>
<form action = "RegisterServlet" method = "post">
	<span class = ""><ion-icon name="mail"></ion-icon></span>
	<input type = "text" id = "email" name= "email" required>
	<label for = "email"> Email </label><br>
	<span class = ""><ion-icon name="person-circle"></ion-icon></ion-icon></span>
	<input type = "text" id = "username" name= "username" required>
	<label for = "username"> Username </label><br>
	<span class = ""><ion-icon name="lock-closed"></ion-icon></ion-icon></span>
	<input type = "text" id =  "password" name ="password" required>
	<label for = "password">Password </label><br>
	<button type = "submit">Register</button> 
	</form>
	
	<p><a href = "index.html">Back to home</a></p>
</div>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>