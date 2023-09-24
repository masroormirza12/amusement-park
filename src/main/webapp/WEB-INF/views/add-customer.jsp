<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<style>
body {
	background-color: rgba(163, 202, 247, 0.756);
	position: relative;
	background-image:
		url("https://img.freepik.com/premium-vector/bench-with-tree-lantern-park_165488-4433.jpg?w=2000");
	background: top 56.25%;;
	background-repeat: no-repeat;
	background-attachment: fixed;
	object-fit: fill;
	width: auto;
	background-size: cover;
	background-position: center;
	height: 100vh;
}

.signup-form {
	width: 300px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	background-color: #f9f9f9;
}

.signup-input {
	width: 130%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.signup-button {
	width: 90%;
	padding: 15px;
	background-color: #83de14;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.button1 {
	width: 100px;
	margin-left: 70em;
	color: black;
	background-color: rgba(67, 176, 206, 0.011);
	text-align: center;
	font-size: 16px;
	margin: 1px 1080px;
	border-radius: 10px;
	cursor: pointer;
	border: 2px solid black;
}
</style>
</head>

<body>
	<h1 align="center">User Signup</h1>
	<a href="/login"><button class="button1">Go Back</button></a>
	<form:form action="save1" method="POST" modelAttribute="customer">
		<div class="signup-form">
			<table>
				<tr>
					<td><form:label path="customerId">Customer ID:</form:label></td>
				</tr>
				<tr>
					<td><form:input class="signup-input" type="number"
							path="customerId" /></td>
				</tr>

				<tr>
					<td><form:label path="userName">User Name</form:label></td>
				</tr>

				<tr>

					<td><form:input class="signup-input" type="text"
							path="userName" /></td>
				</tr>
				<tr>

					<td><form:label path="email">Email:</form:label></td>
				</tr>
				<tr>
					<td><form:input class="signup-input" type="text" path="email" /></td>
				</tr>
				<tr>
					<td><form:label path="mobileNumber">Mobile Number</form:label>
					</td>

				</tr>

				<tr>

					<td><form:input class="signup-input" type="text"
							placeholder="Enter 10 digits" path="mobileNumber" /></td>

				</tr>

				<tr>

					<td><form:label path="address">Address</form:label></td>

				</tr>

				<tr>

					<td><form:input class="signup-input" type="text"
							path="address" /></td>

				</tr>
				<tr>

					<td><form:label path="password">Password</form:label></td>

				</tr>

				<tr>

					<td><form:input class="signup-input" type="password"
							path="password" /></td>

				</tr>

			</table>
			<br> <br>

			<button class="signup-button" type="submit"
				onclick="alert('you have been successfully Signed Up')">
				<b>Submit</b>
			</button>
			<br> <br>

		</div>

	</form:form>
</body>
</html>