<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
body {
	background-image:
		url("https://images.hdqwalls.com/wallpapers/white-cube-pattern-4k-bu.jpg");
	background-repeat: no-repeat;
	background-color: cyan;
	background-position: center;
	background-size: cover;
	position: relative;
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>


</head>
<body>


	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: coral">
			<div>
				<h6>New Employee Form</h6>
			</div>

		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card" style="background-color: lightblue">
			<div class="card-body">
				<form action="insert" method="post">
					<fieldset class="form-group">
						<label>Employee Name</label> <input type="text"
							value="<c:out value='${employee.empName}' />"
							class="form-control" name="empName" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label>Address</label> <input type="text"
							value="<c:out value='${employee.empAddrs}' />"
							class="form-control" name="empAddrs">
					</fieldset>
					<fieldset class="form-group">
						<label>Employee Contract</label> <input type="text"
							value="<c:out value='${employee.empMobileNo}' />"
							class="form-control" name="empMobileNo">
					</fieldset>
					<h3 align="center"></h3>

					<fieldset class="form-group">
						<label>Job Role</label> <input type="text"
							value="<c:out value='${employee.empRole}' />"
							class="form-control" name="empRole">
					</fieldset>

					<fieldset class="form-group">
						<label>Salary</label> <input type="text"
							value="<c:out value='${employee.empSalary}' />"
							class="form-control" name="empSalary">
					</fieldset>
					<br>
					<button type="submit" class="btn btn-success">Save details</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
