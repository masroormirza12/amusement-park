<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Ticket Details</title>
<style>
body

{
background-color: rgba(163, 202, 247, 0.756);
	position: relative;
	background-image:
		url("https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/03/og21.jpg");
	
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
        background-color:rgba(67, 176, 206, 0.011);
        text-align: center;
        font-size: 16px;
        margin: 1px 1080px;
        border-radius: 10px;
        cursor: pointer;
        border: 2px solid black;
        /* border-color:black; */
        

    }
     .button3 {
     width: 100px;
        margin-right: 70em;
        color: black;
        background-color:rgba(67, 176, 206, 0.011);
        text-align: center;
        font-size: 16px;
       
        border-radius: 10px;
        cursor: pointer;
        border: 2px solid black;
        /* border-color:black; */
        

    }
    .form {
	width :70%;
	margin-left: 250px;
	padding: 80px;
	
	
}
.button2 {
    width: 100px;
        margin-left: 70em;
        color: black;
        background-color:rgba(67, 176, 206, 0.18);
        text-align: center;
        font-size: 16px;
        margin: 1px ;
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

    <body align="center">
<video autoplay loop muted plays-inline class="back-video">
    <source href="/Project-1/src/main/webapp/pic.mp4" type="video/mp4" src="pic.mp4">
  </video>
        <h1 align="center">Ticket Details</h1>
        <a href="/logoout"><button class="button3" onclick="alert('You have been logged out!');">LOGOUT</button></a>
 <a href="/select/${id}"><button class="button1">GO BACK</button></a>
	<div class="form">
        <table border="2px"  style="background-color: rgba(240, 241, 245, 0.735);">

            <thead>

                <tr>

                    <th>Ticket Id</th>

                    <th>Activity Id</th>
                    <th>Activity Description</th>

                    <th>Date</th>

                    <th>Customer UserName</th>
                    <th>Cost</th>
                    <th>Date Update</th>

               

                </tr>

            </thead>

            <tbody>

                <c:forEach var = "t" items = "${Tickets}">

                    <tr>

                        <td>${t.ticketid}</td>
                        <td>${t.activity.activityId}</td>
                        <td>${t.activity.description}</td>
                        <td>${t.datetime}</td>
                        <td>${t.customer.userName}</td>
                        <td>${t.activity.charges}</td>
						<%--  <td><a href="/customer-update-activity/${t.customer.userName}"><button>update</button></a></td> --%>
                        <td><a href="/customer-update-activity/${t.customer.userName}/${t.ticketid}"><button onclick="alert('your are able to change only date of schedule!')">UPDATE</button></a>

</td>

                    </tr>

                </c:forEach>

            </tbody>

            

        </table>
</div>
    </body>

   

</body>

</html>