<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System - Signup</title>
<style type="text/css">
body {
	font-family: 'Arial', sans-serif;
	background-image:
		url('https://images.unsplash.com/photo-1556761175-5973dc0f32e7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NjUyOXwwfDF8c2VhcmNofDJ8fG9mZmljZXxlbnwwfHx8fDE2OTAxOTQ1NTZ8&ixlib=rb-1.2.1&q=80&w=4000');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

#main-div {
	background-color: rgba(255, 255, 255, 0.9);
	padding: 20px;
	border-radius: 10px;
	max-width: 500px;
	width: 100%;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	text-align: center;
}

h1 {
	color: #333;
	margin-bottom: 20px;
	font-size: 24px;
}

#signup-div {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.signup-form {
	width: 100%;
}

.form-group {
	margin-bottom: 15px;
	width: 100%;
}

.form-label {
	display: block;
	text-align: left;
	margin-bottom: 5px;
	color: #555;
	font-weight: bold;
}

.form-input {
	width: calc(100% - 20px);
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

.submit-btn {
	padding: 10px 20px;
	margin-top: 20px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
}

.submit-btn:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div id="main-div">
		<h1>SIGNUP FORM</h1>
		<div id="signup-div">
			<form:form modelAttribute="emp" action="saveemployee"
				class="signup-form">
				<form:label path="" class="form-label">Name</form:label>
				<br>
				<form:input path="employee_name" required="true" class="form-input" />
				<br>
				<form:label path="" class="form-label">Email</form:label>
				<br>
				<form:input path="employee_email" required="true" class="form-input" />
				<br>
				<form:label path="" class="form-label">Password</form:label>
				<br>
				<form:input path="employee_password" required="true"
					class="form-input" type="password" />
				<br>
				<form:label path="" class="form-label">Contact</form:label>
				<br>
				<form:input path="employee_cno" required="true" class="form-input" />
				<br>
				<form:label path="" class="form-label">City</form:label>
				<br>
				<form:input path="employee_city" class="form-input" />
				<br>
				<input type="submit" class="submit-btn">
			</form:form>
		</div>
	</div>
</body>
</html>
