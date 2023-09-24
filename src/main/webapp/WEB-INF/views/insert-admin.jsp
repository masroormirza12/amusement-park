<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Admin</title>

</head>

<body>
	<form:form action="/save-admin" method="POST" modelAttribute="admin">

		<table>

			<tr>

				<td><form:label path="id">Admin ID:</form:label></td>

			</tr>

			<tr>

				<td><form:input type="number" path="id" /></td>


			</tr>

			<tr>

				<td><form:label path="userName">User Name</form:label></td>

			</tr>

			<tr>
				<td><form:input type="text" path="userName" /></td>

			</tr>

			<tr>
				<td><form:label path="password">Password:</form:label></td>
			</tr>

			<tr>
				<td><form:input type="password" path="password" /></td>

			</tr>
			<tr>
				<td><form:label path="address">Address:</form:label></td>

			</tr>
			<tr>
				<td><form:input type="text" path="address" /></td>

			</tr>

			<tr>
				<td><form:label path="mobileNumber">Mobile Number:</form:label>
				</td>

			</tr>
			<tr>
				<td><form:input type="text" path="mobileNumber" /></td>

			</tr>
			<tr>
				<td><form:label path="email">Email:</form:label></td>


		 </tr>

			<tr>
				<td><form:input type="text" path="email" /></td>

			</tr>
			<tr>

				<td><input type="submit" value="submit"></td>
			</tr>

		</table>

	</form:form>

</body>

</html>