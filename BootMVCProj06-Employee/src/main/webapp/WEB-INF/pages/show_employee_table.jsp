<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee_Records</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

<style>
body {
	background-image:
		url('https://images.unsplash.com/photo-1507149677524-254e3ebb240f?ixlib=rb-4.0.3&amp;ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyMDA3NDY3fHxlbnwwfHx8fA%3D%3D&amp;w=1000&amp;q=80');
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	position: relative;
	font-family: "Roboto", sans-serif;
}

div.card {
	border-bottom-width: 2px;
	border-right-width: 2px;
	border-top-width: 2px;
	border-left-width: 2px;
	margin-top: 50px;
	bottom: 50px;
	border-color: cadetblue;
	margin-right: 2px;
	color: white;
}

table.mytable {
	background-color: white;
}
</style>


</head>
<body style="background-color: ghostwhite">
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div style="position: absolute; top: 8; right: 1%;"></div>
		</nav>

		<a class="btn btn-primary" href="./new" class="btn btn-success"> <i
			class="fa-solid fa-user-plus"></i> Add New Employee
		</a>
	</header>
	<br>

	<div class="container">
		<div class="container text-left">
			<div class="card" align="center">
				<c:choose>
					<c:when test="${!empty empPage.getContent()}">
						<table class="table table-bordered" id="myTable"
							style="align-content: center; border: column-rule-width; border-color: black;">
							<thead>
								<tr style="color: white; background: black">
									<th colspan="7" style="text-align: center;">Employee Table</th>
								</tr>
								<tr style="color: white; background: black">
									<th style="text-align: center">Employee ID</th>
									<th style="text-align: center">Name</th>
									<th style="text-align: center">Address</th>
									<th style="text-align: center">Contact</th>
									<th style="text-align: center">JobRole</th>
									<th style="text-align: center">Salary</th>
									<th style="text-align: center">Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="emp" items="${empPage.toList()}">
									<tr>
										<td style="text-align: center"><c:out
												value="${emp.empId}" /></td>
										<td style="text-align: center"><c:out
												value="${emp.empName}" /></td>
										<td style="text-align: center"><c:out
												value="${emp.empAddrs}" /></td>
										<td style="text-align: center"><c:out
												value="${emp.empMobileNo}" /></td>
										<td style="text-align: center"><c:out
												value="${emp.empRole}" /></td>
										<td style="text-align: center"><c:out
												value="${emp.empSalary}" /></td>

										<td style="color: white;"><a
											class="btn btn-primary btn-sm" href="edit?empId=${emp.empId}"><i
												class="fas fa-edit"></i> Edit</a> &nbsp;&nbsp;&nbsp; <a
											class="btn btn-danger btn-sm"
											onclick="return confirm('Are You Sure You want to delete')"
											href="delete?empId=${emp.empId}"><i
												class="fa-solid fa-trash"></i> Delete</a>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<p style="text-align: center;">
							<c:if test="${empPage.hasPrevious()}">
								<a href="record?page=${empPage.getPageable().getPageNumber()-1}">previous</a>&nbsp;&nbsp;&nbsp;
				</c:if>
							<c:if test="${empPage.isFirst()}">
								<a href="record?page=0">First</a>&nbsp;&nbsp;&nbsp;
				</c:if>
							<c:forEach var="page" begin="1" end="${empPage.getTotalPages()}"
								step="1">
						[<a href="record?page=${page-1}">${page}</a>] &nbsp;&nbsp;&nbsp;
						
					</c:forEach>
							<c:if test="${empPage.hasNext()}">
								<a href="record?page=${empPage.getPageable().getPageNumber()+1}">Next</a>&nbsp;&nbsp;&nbsp;
							</c:if>

							<c:if test="${!empPage.isLast()}">
								<a href="record?page=${empPage.getTotalPages()-1}">Last</a>&nbsp;&nbsp;&nbsp;
						</c:if>

						</p>
					</c:when>
					<c:otherwise>
						<h1 style="">No Employee Records found</h1>
					</c:otherwise>

				</c:choose>

				<div></div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>