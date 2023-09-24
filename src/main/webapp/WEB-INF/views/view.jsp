<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter</title>
<style>
	
	body

{
position: relative;
background-image:url("https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2018/03/og21.jpg");
margin:0;
padding:0;
background-repeat:no-repeat;
background-attachment: fixed;
     object-fit: fill;
    width: auto;
background-size:cover;
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
    .form {
	width :43%;
	margin-left: 400px;
	padding: 100px;
	
	
	
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
   
	
	
</style>
</head>
<body align="center">
 
<a href="/insert-activity1/${id}"><button class="button1">GO BACK</button></a>
<h1 align="center">List of Activity</h1>


<div class="form">
<h2  align="center"><b>No Of Activities: ${actCount}</b></h2>
<table border="2px" style="background-color:  rgba(133, 154, 238, 0.909);">
<thead>
<tr> 
	<th> Id</th>
	<th> Charges</th>
	<th> Description</th>
	<th> Modification</th>
	
</tr>
</thead>
<tbody>
	<c:forEach var="act" items="${activity}">
	<tr>
	<td>${act.getActivityId()}</td>
	<td>${act.getCharges()}</td>
	<td>${act.getDescription()}</td>
	<td ><a href="/add-ticket/${act.activityId}/${userName}/${act.description}/${act.charges}"><button>choose</button></a></td>
	<td>
	</tr>
	</c:forEach>
</tbody>

</table>

</div>
<br>

</body>
</html>