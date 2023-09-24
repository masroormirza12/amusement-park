<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	background: top 56.25%;;
	background-repeat: no-repeat;
	background-attachment: fixed;
     object-fit: fill;
    width: auto;
	background-size: cover;
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
<video autoplay loop muted plays-inline class="back-video">
    <source href="/Project-1/src/main/webapp/pic.mp4" type="video/mp4" src="pic.mp4">
  </video>
<a href="/admin-submit"><button class="button1">GO BACK</button></a>
<form action="/activity-date" method="get">
	<h1>Enter the Date</h1>
	
   <input class="input" type = "text"  name="datetime" placeholder="yyyy-mm-dd"> 
   
	<button class="button2">submit</button>
	</form>
</body>
</html>