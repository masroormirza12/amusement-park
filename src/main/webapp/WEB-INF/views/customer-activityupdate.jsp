]<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updation</title>
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
	/* border-color:black; */
}
</style>
</head>

<body>

	<a href="/select/{userName}"><button class="button1">GO
			BACK</button></a>
	<h1 align="center">Activity update Form</h1>
	<form:form action="/customer-save/${userName}" method="post"
		modelAttribute="ticket">
		<div class="signup-form">
			<table>
				<tr>



					<td><form:label path="ticketid">Ticket ID:</form:label></td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="number"
							path="ticketid" /></td>



				</tr>



				<tr>



					<td><form:label path="activity.activityId">Activity id</form:label></td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							path="activity.activityId" /></td>



				</tr>


				<tr>



					<td><form:label path="datetime">Date&Time(mm:dd:yy)</form:label></td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							path="datetime" /></td>



				</tr>

				<tr>



					<td><form:label path="activity.description">Activity-Name</form:label>



					</td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							path="activity.description" /></td>



				</tr>

				<tr>



					<td><form:label path="customer.userName">Customer-Name</form:label>



					</td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							path="customer.userName" /></td>



				</tr>


				<tr>


					<td><form:label path="activity.charges">Total-Cost</form:label>



					</td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							path="activity.charges" /></td>



				</tr>
			</table>

			<button class="signup-button" type="submit"
				onclick="('schedule has been updated')">
				<b>Submit</b>
			</button>
		</div>

	</form:form>

</body>
</html>