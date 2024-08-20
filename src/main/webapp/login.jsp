<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="net.bytebuddy.matcher.StringMatcher.Mode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System - Login</title>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	font-family: 'Pacifico', cursive;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image:
		url('https://images.unsplash.com/photo-1556761175-5973dc0f32e7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NjUyOXwwfDF8c2VhcmNofDJ8fG9mZmljZXxlbnwwfHx8fDE2OTAxOTQ1NTZ8&ixlib=rb-1.2.1&q=80&w=4000');
	background-size: cover;
	background-position: center;
}

#form-container {
	background-color: rgba(255, 255, 255, 0.9);
	/* Semi-transparent background */
	border: 1px solid black;
	width: 340px;
	padding: 30px;
	height: 290px;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	position: relative;
	top: 0px;
}
#eye{
	position: absolute;
	top: 200px;
	left: 320px;
	
}

form {
	width: 320px;
	height: 350px;
}

label {
	padding: 5px 5px 0px 10px;
	display: block;
	font-size: 20px;
}

input {
	display: block;
	width: 100%;
	font-size: 20px;
	border: none;
	border-bottom: 1px solid black;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

input[type="submit"] {
	display: block;
	margin-top: 20px;
	width: 100%;
	height: 40px;
	border-radius: 20px;
	border: 1px solid black;
	background-color: #4CAF50; /* Green background */
	color: white; /* White text */
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049; /* Darker green on hover */
}

div {
	position: relative;
	top: 200px;
}

p {
	margin-top: 20px;
}

a {
	color: blue;
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="form-container">
		<h1>LOGIN</h1>
		<form action="login" style="margin-top: 20px" method="post">
			<label>Email</label> <input type="text" name="email" required="required"> <label>Password</label>
			<input type="password" name="password" required="required"> <i class="fa-solid fa-eye-slash" id="eye"></i> <input type="submit"
				value="Login">
			<p>
				Don't have an account? Please <a
					href="signup">Register</a>
			</p>
		</form>
	</div>
	<script type="text/javascript">
	
	</script>
</body>
</html>
