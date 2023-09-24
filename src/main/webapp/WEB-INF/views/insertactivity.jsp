<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activity</title>
<style>
    body {
	background-color: rgba(244, 246, 248, 0.756);
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


.form {
	width: 250px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	background-color: #f9f9f9a4;
}

.input {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.button {
	width: 50%;
    margin-left: 5.5em;
	padding: 15px;
	background-color: #83de14;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	justify:center;
	/* display:inline-block; */
	text-align:center;
}
.button-container{
text-align:justify;}
.button1 {
	width: 50%;
	padding: 15px;
	background-color: #83de14;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	align:center;
	/* display:inline-block; */
	text-align:center;

}

.button2 {
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
</style>
</head>
<body>
<a href="/get"><button class="button2">GO BACK</button></a>
	<h1 align="center">Insert Activity</h1>

<form:form action="/save" method="POST" modelAttribute="activity">
<div class="form">
<table>
<tr>

<td><form:label path="activityId">Activity ID:</form:label>
</td>

</tr>
<tr>
<td><form:input  class="input" type="number" path="activityId" /></td>
</tr>

<tr>

<td><form:label path="description">Description</form:label></td>

</tr>


<tr>

<td><form:input  class="input" type="text" path="description" /></td>

</tr>

<tr>

<td><form:label path="charges">Charges:</form:label>

</td>

</tr>

<tr>

<td><form:input  class="input" type="number" path="charges" /></td>

</tr>
<tr>
<div class="button-container">
        <td><button class="button" type="submit">Submit</button><br><br></td>
      </div>
</tr>

</table>
</form:form>
</body>
</html>