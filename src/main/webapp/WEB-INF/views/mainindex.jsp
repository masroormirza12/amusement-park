
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script defer src="index.js"></script>
<title>AmusmentPark</title>
</head>
<style>
body {
	background-image:
		url("https://img.freepik.com/premium-photo/amusement-park-with-many-rides-snack-bars_935552-1109.jpg?w=2000");
	margin: 0;
	padding: 0;
	background-repeat: no-repeat;
	background-attachment: fixed;
	object-fit: fill;
	width: auto;
	background-size: cover;
	background-position: center;
	height: 100vh;
}

.button1 {
	width: 100px;
	margin-left: 70em;
	color: rgb(225, 213, 213);
	background-color: rgba(9, 113, 187, 0.829);
	text-align: center;
	font-size: 16px;
	margin: 1px 10px;
	border-radius: 10px;
	cursor: pointer;
	border: 0px solid rgb(227, 221, 221);
	/* border-color:black; */
}

.flex-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.transparent-button {
	background-color: rgba(9, 113, 187, 0.829);
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
}

.custom-link {
	color: azure;
	text-decoration: dotted;
}

.larger-text {
	margin-top: 10px;
	font-size: 3.5em;
	font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
}
}
</style>

<body>

	<h1 class="larger-text" style="color: rgb(220, 9, 33);" align="center">Amusement
		Park</h1>
	<div class="flex-container">

		<a href="/aboutus.jsp"><button class="button1">About Us</button></a> <a
			href="/login" class="custom-link"><button
				class="transparent-button" style="top: 525px; left: 500px;">
				User</button></a> <a class="custom-link" href="AdminSignUp" href="#">
			<button class="transparent-button" style="top: 525px; left: 600px;">
				Admin</button>
		</a>
	</div>



</body>
</html>