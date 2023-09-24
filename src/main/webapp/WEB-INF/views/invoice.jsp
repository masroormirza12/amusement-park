<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Invoice</title>
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

.form {
	max-width: 300px;
	height: 300px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin: 0 auto;
	padding: 20px;
	border: 3px solid #ccc;
	background-color: #fffffffe;
}

.line-break {
	margin-bottom: 1em;
}

.header {
	text-align: center;
	margin-bottom: 10px;
}

.info {
	margin-bottom: 10px;
	align-items: center;
}

.total {
	text-align: center;
	margin-top: 20px;
}

.button3 {
	width: 100px;
	margin-right: 70em;
	color: black;
	background-color: rgba(67, 176, 206, 0.011);
	text-align: center;
	font-size: 16px;
	border-radius: 10px;
	cursor: pointer;
	border: 2px solid black;
	/* border-color:black; */
}
</style>
</head>

<body>
	<a href="/get1/${id}"><button class="button3">GO BACK</button></a>
	<a href="/home"><button class="button1">Homepage</button></a>
	<div class="form">
		<div class="header">
			<h1>Invoice Details</h1>
		</div>



		<div class="info">
			<h3>
				<p>UserName:${userName}</p>
			</h3>
			<h3>
				<p>ActivityId:${activityId}</p>
			</h3>
			<h3>
				<p>Description: ${description}</p>
			</h3>
			<h3>
				<p>Date:${dates }</p>
			</h3>
			<h3>
				<p>Charges:${charges}</p>
			</h3>
			<h4>
				<p>Thanks For Booking Have a nice day......</p>
			</h4>


			
			
		</div>

	</div>





</body>

</html>