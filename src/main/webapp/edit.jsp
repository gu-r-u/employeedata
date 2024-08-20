<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System - Edit</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Arial', sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image: url('https://images.unsplash.com/photo-1517292987719-0369a794ec0f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NjUyOXwwfDF8c2VhcmNofDJ8fG9mZmljZXxlbnwwfHx8fDE2OTAxOTQ1NTZ8&ixlib=rb-1.2.1&q=80&w=4000');
	background-size: cover;
	background-position: center;
	animation: backgroundAnimation 10s infinite alternate;
}

@keyframes backgroundAnimation {
	0% { filter: brightness(1); }
	100% { filter: brightness(0.8); }
}

#main-div {
	background-color: rgba(255, 255, 255, 0.9);
	padding: 20px;
	border-radius: 10px;
	max-width: 500px;
	width: 100%;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
	animation: fadeIn 1s ease-in-out;
}

@keyframes fadeIn {
	0% { opacity: 0; transform: translateY(-20px); }
	100% { opacity: 1; transform: translateY(0); }
}

h1 {
	color: #333;
	margin-bottom: 20px;
	font-size: 24px;
	animation: fadeIn 1s ease-in-out;
}

#form-container {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.edit-form {
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
	animation: inputFadeIn 1s ease-in-out;
}

@keyframes inputFadeIn {
	0% { opacity: 0; }
	100% { opacity: 1; }
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
	animation: buttonFadeIn 1s ease-in-out;
}

@keyframes buttonFadeIn {
	0% { opacity: 0; }
	100% { opacity: 1; }
}

.submit-btn:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div id="main-div">
		<h1>EDIT FORM</h1>
		<div id="form-container">
			<form:form modelAttribute="emps" action="updateemployee?id=${emps.employee_id}" class="edit-form">
				<div class="form-group">
					<form:label path="" class="form-label">Name</form:label>
					<form:input path="employee_name" class="form-input"/>
				</div>
				<div class="form-group">
					<form:label path="" class="form-label">Email</form:label>
					<form:input path="employee_email" required="true" class="form-input"/>
				</div>
				<div class="form-group">
					<form:label path="" class="form-label">Password</form:label>
					<form:input path="employee_password" required="true" class="form-input" type="password"/>
				</div>
				<div class="form-group">
					<form:label path="" class="form-label">Contact</form:label>
					<form:input path="employee_cno" required="true" class="form-input"/>
				</div>
				<div class="form-group">
					<form:label path="" class="form-label">City</form:label>
					<form:input path="employee_city" class="form-input"/>
				</div>
				<input type="submit" class="submit-btn" value="Update">
			</form:form>
		</div>
	</div>
</body>
</html>
