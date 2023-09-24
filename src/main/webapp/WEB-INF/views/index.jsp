<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Customer Details</title>
<style>
body {
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

.button2 {
	width: 100px;
	margin-left: 70em;
	color: black;
	background-color: rgba(67, 176, 206, 0.18);
	text-align: center;
	font-size: 16px;
	margin: 1px;
	border-radius: 10px;
	cursor: pointer;
	border: 2px solid black;
	/* border-color:black; */
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

	<h1 align="center">Customer Details</h1>
	<video autoplay loop muted plays-inline class="back-video">
    <source href="/Project-1/src/main/webapp/pic.mp4" type="video/mp4" src="pic.mp4">
  </video>
	<a href="/logOut"><button class="button3"
			onclick="alert('you has been logged out!');">LOGOUT</button></a>
	<a href="/admin-submit"><button class="button1">GO BACK</button></a>
	<!-- <div class="form"> -->
	<table align="center" border="2px"
		style="background-color: rgba(133, 154, 238, 0.909);">

		<thead>

			<tr>

				<th>Customer id</th>

				<th>UserName</th>

				

				<th>Address</th>

				<th>Mobile</th>

				<th>Email</th>
				<th>Modification</th>

			</tr>

		</thead>

		<tbody>

			<c:forEach var="t" items="${customer}">

				<tr>

					<td>${t.customerId}</td>

					<td>${t.userName}</td>

					
					<td>${t.address}</td>
					<td>${t.mobileNumber }</td>
					<td>${t.email }</td>


					<td><a href="/update-customer/${t.userName}"><button &nsbp>
								Update</button></a> <a href="/delete-customer/${t.userName}"><button>Delete</button></a></td>

				</tr>

			</c:forEach>

		</tbody>



	</table>
</body>



</body>

</html>