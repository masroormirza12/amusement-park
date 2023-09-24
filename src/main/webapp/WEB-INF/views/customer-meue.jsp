<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
</head>
<style>
body {
	height: 100vh;
	background-attachment: fixed;
     object-fit: fill;
    width: auto;
	background-image:
		url("https://s7d2.scene7.com/is/image/TWCNews/7_2018_dca");
	background: top 56.25%;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.flex-container {
	display: flex;
	flex-direction: column;
	margin-left: 25em;
	justify-content: space-between;
	align-items: center;
}

.transparent-button {
	background-color: black;
	/* Adjust the last value (0.2) to control transparency */
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 5px;
	position: absolute;
	justify-self: center;
	width: 200px;
}

.custom-link {
	color: azure;
	text-decoration: dotted;
}

.button1 {
	margin-left: 70em;
	background-color: rgb(6, 23, 19);
	color: white;
	text-align: center;
	font-size: 16px;
	margin: 1px 1080px;
	border-radius: 10px;
	cursor: pointer;
	border: none;
}
</style>
<body>
	<div>
		<h1 style="text-align: center; color: rgba(187, 14, 34, 0.758);">Hello..
			${userName}</h1>
		<a href="/logoout"><button class="button1" onclick="alert('You have been logged out!');">LOGOUT</button></a>
	</div>
	<div class="flex-container">
		<br> <br> <br> <br> <br> <br> <a
			href="/get1/${userName}" class="custom-link"><button
				class="transparent-button">Activities Avaliable</button></a><br> <br>
		<br> <br> <a href="/ticketsbooked/${userName}"><button
				class="transparent-button">Tickets-Booked</button></a><br> <br>
		<br> <br> <a href="/customer-update/${userName}"><button
				class="transparent-button">Update</button></a> <br> <br> <br>

		
	</div>


</body>
</html>