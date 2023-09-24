<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>



<html>



<head>

<meta charset="ISO-8859-1">



<title>SignUp</title>

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
</style>
</head>



<body>
	<h1 align="center">SignUp</h1>
	<form:form action="save-admin" method="post" modelAttribute="admin">

		<div class="signup-form">

			<table>



				<tr>



					<td><form:label path="id">Admin ID</form:label></td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="number" path="id" /></td>





				</tr>



				<tr>



					<td><form:label path="userName">UserName</form:label></td>



				</tr>



				<tr>

					<td><form:input class="signup-input" type="text"
							path="userName" /></td>



				</tr>




				<tr>

					<td><form:label path="email">Email</form:label></td>





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
							path="mobileNumber" /></td>



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
				onclick="alert('you hav been successfully Signed Up!')">
				<b>Submit</b>
			</button>
			<br> <br>


		</div>

	</form:form>



</body>



</html>