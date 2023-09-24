<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activity</title>
<style>
body {
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
	width: 43%;
	margin-left: 425px;
	padding: 40px;
}

.button2 {
	width: 100px;
	margin-left: 10em;
	color: black;
	background-color: rgba(67, 176, 206, 0.18);
	text-align: center;
	font-size: 16px;
	margin: 1px;
	border-radius: 10px;
	cursor: pointer;
	border: 2px solid black;
	justify: center;
	/* border-color:black; */
}

.back-video {
    position: fixed;
    right: 0;
    bottom: 0;
    z-index: -1;
  }
  @media(min-aspect-ratio:16/9){
    .back-video{
      width:100%;
      height:auto;
    }
  }
  @media(max-aspect-ratio:16/9){
    .back-video{
      width:100%;
      height:auto;
    }
  }
</style>
</head>
<body align="center">

	
	<a href="/select/${userName}"><button class="button1">GO
			BACK</button></a>
	<h1 align="center">Available Activities</h1>
	<video autoplay loop muted plays-inline class="back-video">
    <source href="/Project-1/src/main/webapp/pic.mp4" type="video/mp4" src="pic.mp4">
  </video>
	<div class="form">
		<table border="2px" style="background-color: rgba(240, 241, 245, 0.735);">
			<thead>
				<tr>
					<th>Id</th>
					<th>Charges</th>
					<th>Description</th>
					<th>Select item</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="act" items="${activity}">
					<tr>
						<td>${act.activityId}</td>
						<td>${act.charges}</td>
						<td>${act.description}</td>
						<td><a
							href="/add-ticket/${act.activityId}/${userName}/${act.description}/${act.charges}"><button>choose</button>
						</a></td>
					</tr>


				</c:forEach>
			</tbody>

		</table>



		<div>
			<br>
			<br> <a href="/insert-activity1/${userName}"><button
					class="button2">FILTER</button></a>

		</div>
	</div>

</body>
</html>
