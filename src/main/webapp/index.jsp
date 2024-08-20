<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Arial', sans-serif;
}

body {
	height: 100vh;
	background-image: url('https://images.unsplash.com/photo-1510511459019-5dda7724fd87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NjUyOXwwfDF8c2VhcmNofDJ8fG9mZmljZXxlbnwwfHx8fDE2OTAxOTQ1NTZ8&ixlib=rb-1.2.1&q=80&w=4000');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	animation: backgroundAnimation 20s infinite alternate;
}

@keyframes backgroundAnimation {
	0% { filter: brightness(1); }
	100% { filter: brightness(0.7); }
}

header {
	text-align: center;
	color: white;
	text-shadow: 2px 2px 6px black;
	margin-bottom: 50px;
	animation: fadeInDown 1s ease-in-out;
}

@keyframes fadeInDown {
	0% { opacity: 0; transform: translateY(-50px); }
	100% { opacity: 1; transform: translateY(0); }
}

#flex-div {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 50px;
	width: 100%;
}

.bottom {
	text-align: center;
	background-color: rgba(255, 255, 255, 0.8);
	padding: 15px 30px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	transition: transform 0.3s ease, background-color 0.3s ease;
}

.bottom:hover {
	transform: scale(1.1);
	background-color: rgba(255, 255, 255, 1);
}

a {
	text-decoration: none;
	font-size: 25px;
	color: #333;
	transition: color 0.3s ease;
}

a:hover {
	color: #007BFF;
}

.fa-circle-user, .fa-user {
	margin-left: 10px;
	animation: iconBounce 2s infinite;
}

@keyframes iconBounce {
	0%, 20%, 50%, 80%, 100% {
		transform: translateY(0);
	}
	40% {
		transform: translateY(-10px);
	}
	60% {
		transform: translateY(-5px);
	}
}
</style>
</head>
<body>
	<header>
		<h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
	</header>
	<div id="flex-div">
		<div class="bottom" id="login">
			<a href="login.jsp">LOGIN <i class="fa-solid fa-circle-user"></i></a>
		</div>
		<div class="bottom" id="signup">
			<a href="signup">SIGNUP <i class="fa-solid fa-user"></i></a>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/a09fc9e51d.js" crossorigin="anonymous"></script>
</body>
</html>
