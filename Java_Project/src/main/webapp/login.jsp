<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type = "text/css" href="loginStyle.css">
</head>
<body>
<div class = "container">
<h1>Login</h1>
<form action = "LoginServlet" method = "post">
	<span class = ""><ion-icon name="mail"></ion-icon></span>
	<input type = "text" id = "email" name= "email" required>
	<label for = "email"> Email </label><br>
	<span class = ""><ion-icon name="lock-closed"></ion-icon></ion-icon></span>
	<input type = "text" id =  "password" name ="password" required>
	<label for = "password">Password </label><br>
	<button type = "submit">Login</button> 
	</form>
	
	<p><a href = "index.html">Back to home</a></p>
	
	<%String error = request.getParameter("error");
			if (error!=null && error.equals("1")){%>
			<p style ="color: red ;">Invalid email or password</p>
			<%} %>
</div>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>