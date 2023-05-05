<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
body {
	background-image:
		url("https://img.freepik.com/free-photo/vintage-wooden-dark-wood-half-painted-blue_169016-3304.jpg?w=2000");
	background-repeat: no-repeat;
	background-color: cyan;
	background-position: center;
	background-size: cover;
	position: relative;
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.req:after {
	content: "*";
	color: red;
}

label {
	width: 100%;
}

input, select {
	margin: 8%;
}
</style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand">
					Employee Update </a>
			</div>
		</nav>
	</header>
	<br>
	<div class="card"
		style="background-color: floralwhite; margin: auto; width: 50%">
		<div class="card-body">
			<form action="update" method="post" style="text-align: center;">



				<h2>Edit Employee Details</h2>
				<div
					style="width: 100%; margin: auto; display: flex; justify-content: space-around"
					align="center">
					<table>
						<tr>
							<td><label>Emp_id</label></td>
							<td><input type="text"
								value="<c:out value='${employee.empId}' />" class="form-control"
								name="empId" readOnly="readOnly"></td>
						</tr>

						<tr>
							<td><label>Name</label></td>
							<td><input type="text"
								value="<c:out value='${employee.empName}' />"
								class="form-control" name="empName" readOnly="readOnly"></td>
						</tr>

						<tr>
							<td><label class="req">Address</label></td>
							<td><input type="text"
								value="<c:out value='${employee.empAddrs}' />"
								class="form-control" name="empAddrs" pattern="^[a-zA-Z ]*$"
								required="required"></td>
						</tr>

						<tr>
							<td><label class="required">Employee Contact</label></td>
							<td><input type="text"
								value="<c:out value='${employee.empMobileNo}' />"
								class="form-control" name="empMobileNo"
								pattern="^[6-9]{1}\d{9}$" required="required"></td>
						</tr>

						<tr>
							<td><label class="required">Job Role</label></td>
							<td><input type="text"
								value="<c:out value='${employee.empRole}' />"
								class="form-control" name="empRole" pattern="^[a-zA-Z ]*$"
								required="required"></td>
						</tr>

						<tr>
							<td><label class="req">empSalary</label></td>
							<td><textarea class="form-control" name="empSalary"
									required="required">${employee.empSalary}</textarea></td>
						</tr>
					</table>
				</div>
				<br> <br>
				<button type="submit" class="btn btn-success">Update
					details</button>
			</form>
		</div>
	</div>
	<br>
</body>
</html>