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
<title>Add Emp</title>
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
					class="nav-item nav-link disabled" href="#">logout</a>
			</div>
		</div>
	</nav>


	<div class="container m-3">
		<form>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">First Name</label> <input type="text"
						class="form-control" id="inputEmail4" placeholder="Email">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Last Name</label> <input
						type="password" class="form-control" id="inputPassword4"
						placeholder="Password">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail4" placeholder="Email">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Password</label> <input type="password"
						class="form-control" id="inputPassword4" placeholder="Password">
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control" id="inputAddress" placeholder="1234 Main St">
			</div>
			<div class="form-group">
				<label for="inputAddress2">Address 2</label> <input type="text"
					class="form-control" id="inputAddress2"
					placeholder="Apartment, studio, or floor">
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">City</label> <input type="text"
						class="form-control" id="inputCity">
				</div>
				<div class="form-group col-md-4">
					<label for="inputState">State</label> <select id="inputState"
						class="form-control">
						<option selected>Choose...</option>
						<option>...</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<label for="inputZip">Zip</label> <input type="text"
						class="form-control" id="inputZip">
				</div>
			</div>
			<fieldset class="form-group">
				<div class="row">
					<legend class="col-form-label col-sm-2 pt-0">Radios</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="gridRadios1" value="option1" checked> <label
								class="form-check-label" for="gridRadios1"> First radio
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="gridRadios2" value="option2"> <label
								class="form-check-label" for="gridRadios2"> Second radio
							</label>
						</div>
						<div class="form-check disabled">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="gridRadios3" value="option3" disabled> <label
								class="form-check-label" for="gridRadios3"> Third
								disabled radio </label>
						</div>
					</div>
				</div>
			</fieldset>
			<div class="form-group row">
				<div class="col-sm-2">Checkbox</div>
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck1">
						<label class="form-check-label" for="gridCheck1"> Example
							checkbox </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck1">
						<label class="form-check-label" for="gridCheck1"> Example
							checkbox </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck1">
						<label class="form-check-label" for="gridCheck1"> Example
							checkbox </label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" id="gridCheck">
					<label class="form-check-label" for="gridCheck"> Check me
						out </label>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Sign in</button>
		</form>

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