<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/flowbite@2.5.1/dist/flowbite.min.css"
	rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>

	<h3 align="center">${message}</h3>



	<div class="mt-100">
		<h3 align="center">
			<font color="blue">User Registration Form</font>
		</h3>
	</div>

	<form class="max-w-sm mx-auto m-10">
		<div class="mb-5">
			<label for="email"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your
				email</label> <input type="email" id="email"
				class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
				placeholder="name@flowbite.com" required />
		</div>
		<div class="mb-5">
			<label for="password"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your
				password</label> <input type="password" id="password"
				class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
				required />
		</div>
		<div class="mb-5">
			<label for="repeat-password"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Repeat
				password</label> <input type="password" id="repeat-password"
				class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
				required />
		</div>

		<button type="submit"
			class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Register
			new account</button>
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/flowbite@2.5.1/dist/flowbite.min.js"></script>

</body>
</html>