<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System - Home</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	font-family: 'Arial', sans-serif;
	box-sizing: border-box;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image:
		url('https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
	background-size: cover;
	background-position: center;
	margin: 0;
}

#home-container {
	background-color: rgba(255, 255, 255, 0.9);
	padding: 20px;
	border-radius: 10px;
	max-width: 800px;
	width: 90%;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
}

header {
	margin-bottom: 20px;
}

header h1 {
	color: #333;
	text-shadow: 2px 2px 4px white;
	font-size: 28px;
}

#table-container {
	overflow-x: auto;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px 15px;
	border: 1px solid #ddd;
	text-align: center;
}

th {
	background-color: #f4f4f4;
}

.edit-link, .delete-link {
	text-decoration: none;
	color: #007BFF;
}

.edit-link:hover, .delete-link:hover {
	text-decoration: underline;
}

.delete-link {
	color: #FF6347;
}

#add-button-container {
	margin-top: 20px;
}

.add-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #28a745;
	color: white;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
}

.add-button:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<div id="home-container">
		<header>
			<h1>Employee Details</h1>
		</header>
		<div id="table-container">
			<table>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>CONTACT</th>
					<th>CITY</th>
					<th>EDIT</th>
					<th>DELETE</th>
				</tr>
				<c:forEach var="emp" items="${emps}">
					<tr>
						<td>${emp.employee_id}</td>
						<td>${emp.employee_name}</td>
						<td>${emp.employee_email}</td>
						<td>${emp.employee_cno}</td>
						<td>${emp.employee_city}</td>
						<td><a href="edit?id=${emp.employee_id}" class="edit-link">EDIT</a></td>
						<td><a href="delete?id=${emp.employee_id}"
							class="delete-link">DELETE</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="add-button-container">
			<a href="new-employee" class="add-button">ADD EMPLOYEE</a>
		</div>
	</div>
</body>
</html>
