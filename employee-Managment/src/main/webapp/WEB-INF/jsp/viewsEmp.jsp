<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>View Emp</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar navbar-light bg-light">
				<a class="nav-item nav-link href="home">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="empForm">Add Employee</a> <a class="nav-item nav-link"
					href="empView">View Employee</a> <a
					class="nav-item nav-link disabled" href="logout">logout</a>
			</div>
		</div>
	</nav>
	<br>

	<h3 align="center">
		<font color="blue">Views Employees Records</font>
	</h3>
	<h3 align="center">
		<font color="red">${msg}</font>
	</h3>
	<!-- 
	<div class="m-8" align="right">
		<a class="btn btn-primary btn-sm" href="downloadExcelFile"
			role="button">Download</a>
	</div> -->

	<div class="container-fluid mt-3">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Address2</th>
					<th scope="col">City</th>
					<th scope="col">State</th>
					<th scope="col">Zip</th>
					<th scope="col">Gender</th>
					<th scope="col">Action</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${list}">
					<tr>
						<td>${emp.id}</td>
						<td>${emp.firstName}</td>
						<td>${emp.lastName}</td>
						<td>${emp.email}</td>
						<td>${emp.address}</td>
						<td>${emp.address2}</td>
						<td>${emp.city}</td>
						<td>${emp.state}</td>
						<td>${emp.pinCode}</td>
						<td>${emp.gender}</td>

						<td><a class="btn btn-primary btn-sm"
							href="editemp/${emp.id}" role="button">Edit</a>&nbsp;&nbsp; <a
							class="btn btn-danger btn-sm" href="deleteEmp/${emp.id}"
							role="button">Delete</a></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>