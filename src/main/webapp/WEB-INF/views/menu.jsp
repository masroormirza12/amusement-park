<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activity</title>
<style>
body {
	position: relative;
	background-image:
		url("https://img.freepik.com/premium-vector/bench-with-tree-lantern-park_165488-4433.jpg?w=2000");
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
	width: 70%;
	margin-left: 5px;
	padding: 25px;
}

.button2 {
	width: 100px;
	margin-left: 70em;
	color: black;
	background-color: rgba(67, 176, 206, 0.619);
	text-align: center;
	font-size: 16px;
	margin: 1px;
	border-radius: 10px;
	cursor: pointer;
	border: 2px solid black;
	/* border-color:black; */
}

.table {
	margin-left: 25em;
}

.larger-text {
	font-size: 3em;
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
<body>
<video autoplay loop muted plays-inline class="back-video">
    <source href="/Project-1/src/main/webapp/pic.mp4" type="video/mp4" src="pic.mp4">
  </video>
	<a href="/logOut"><button class="button3"
			onclick="alert('you has been logged out!');">LOGOUT</button></a>
	<a href="/admin-submit"><button class="button1">GO BACK</button></a>
	<h1 align="center" class="larger-text">Modify Activity</h1>
	<h3>Add new Activity</h3>
	<a href="/insert-activity"><button class="button2">Insert</button></a>




	<div class="form">
		<table class="table" border="2px"
			style="background-color: rgba(133, 154, 238, 0.909);">
			<thead>
				<tr>
					<th>Id</th>
					<th>Charges</th>
					<th>Description</th>
					<th>Modification</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="act" items="${activity}">
					<tr>
						<td>${act.getActivityId()}</td>
						<td>${act.getCharges()}</td>
						<td>${act.getDescription()}</td>
						<td><a href="update-activity/${act.activityId}"><button>update</button></a>

							<a href="delete-activity/${act.activityId}"><button>delete</button></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<br>
</body>
</html>
