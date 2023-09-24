<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>value add</title>
<style>
 body {
	position: relative;
	background-image:
		url("https://im.whatshot.in/img/2020/Jul/banner-park-1-1595471475.jpg");
	
	background-repeat: no-repeat;
	background-attachment: fixed;
     object-fit: fill;
    width: auto;
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	height: 100vh;
} 
.button2 {
	width: 100px;
	margin-left: 70em;
	color: black;
	background-color:  rgba(213, 219, 220, 0.874);
	text-align: center;
	font-size: 16px;
	margin: 1px;
	border-radius: 10px;
	cursor: pointer;
	border: 2px solid black;
	/* border-color:black; */
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
.input {
	width: 30%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
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

<a href="/get1/${id}"><button class="button1">GO BACK</button></a>


<form action="/get2/${userName}" method="get">

	<h1>Enter your Budget </h1>

   <input class="input" type = "number"  name="charges"> 
   
	<button class="button2">submit</button>
	</form>
	<video width="640" heigth="360" >
    <source  type="video/mp4" src="pic12.mp4">
  </video>
</body>
</html>