<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
	<h2 align="center">User Login Page</h2>
	<h3 align="center">
		<font color="red">${message}</font>
	</h3>

	<form action="login" method="post">
		<table align="center">
			<tr>
				<td>User Name:</td>

				<td><input type="text" name="userName" id="userName"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td></td>

				<td><button type="submit">Login</button></td>
				<a href="register">Registrer</a>
			</tr>

		</table>
	</form>


</body>
</html>
