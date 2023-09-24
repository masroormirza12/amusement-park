<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket</title>
<style>
body {
	background-color: rgba(163, 202, 247, 0.756);
	position: relative;
	background-image:
		url("https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/03/og21.jpg");
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
	background-color:#f9f9f98a;
;
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

	<a href="/get1/${id}"><button class="button1">GO BACK</button></a>
	<h1 align="center">Add Ticket</h1>
	<form:form
		action="/save-ticket/${activityId}/${description}/${userName}/${charges}"
		method="post" modelAttribute="ticket">
		<div class="signup-form">
			<table>






				<tr>



					<td><form:label path="activity.activityId">Activity id</form:label></td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							onclick="showMessage()" path="activity.activityId"
							value="${activityId}" /></td>



				</tr>


				<tr>



					<td><form:label path="datetime">Date&Time</form:label></td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							placeholder="mm/dd/yy" path="datetime" /></td>



				</tr>

				<tr>



					<td><form:label path="activity.description">Activity-Name</form:label>



					</td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							onclick="showMessage()" path="activity.description"
							value="${description}" /></td>



				</tr>

				<tr>



					<td><form:label path="customer.userName">Customer-Name</form:label>



					</td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							onclick="showMessage()" path="customer.userName"
							value="${userName}" /></td>



				</tr>


				<tr>


					<td><form:label path="activity.charges">Total-Cost</form:label>



					</td>



				</tr>



				<tr>



					<td><form:input class="signup-input" type="text"
							onclick="showMessage()" path="activity.charges"
							value="${charges}" /></td>

				</tr>

			</table>
			<br> <br>
			<button class="signup-button" type="submit">
				<b>Submit</b>
			</button>

		</div>

	</form:form>
	<script>
		function showMessage() {
			alert("your are  not allowed to change  ")
		}
	</script>
</body>
</html>