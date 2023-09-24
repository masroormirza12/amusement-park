<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Activity updation</title>
<style>
body {
	background-color: rgba(163, 202, 247, 0.756);
	position: relative;
	background-attachment: fixed;
	object-fit: fill;
	width: auto;
	background-image:
		url("https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/03/og21.jpg");
	background: top 56.25%;;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	height: 100vh;
}

.signup-form {
	width: 300px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	background-color: #f9f9f9a4;
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
	margin-left: 5em;
	padding: 15px;
	background-color: #83de14;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	align: center;
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
	<a href="/get"><button class="button1">GO BACK</button></a>
	<h1 align="center">Activity updation</h1>
	<form:form action="/act-activity/${activity.activityId}" method="post"
		modelAttribute="activity">
		<div class="signup-form">
			<table>
				<tr>
					<td><form:label path="activityId">Id:</form:label></td>
				</tr>
				<tr>
					<td><form:input class="signup-input" type="number"
							path="activityId" /></td>
				</tr>
				<tr>
					<td><form:label path="charges">charge:</form:label></td>
				</tr>
				<tr>
					<td><form:input class="signup-input" type="number"
							path="charges" /></td>
				</tr>
				<tr>
					<td><form:label path="description">Description:</form:label></td>
				</tr>
				<tr>
					<td><form:input class="signup-input" type="text"
							path="description" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="signup-button" type="submit">Submit</button>
					</td>
				</tr>

			</table>
		</div>
	</form:form>
</body>
</html>