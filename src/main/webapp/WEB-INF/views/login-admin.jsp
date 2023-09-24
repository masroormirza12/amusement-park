<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<style>
body {
	background-color: rgba(244, 246, 248, 0.756);
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


.form {
	width: 300px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	background-color: #12cf7164;
}

.input {
	width: 90%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.button {
	width: 50%;
    margin-left: 5.5em;
	padding: 15px;
	background-color: #6666f9d8;
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
.button12 {
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
    .slide-left {
  animation: 1s slide-top;
}
@keyframes slide-top {
  from {
    margin-top: 100%;
  }
  to {
    margin-top: 0%;
  }
}

</style>
<body>
    <h2 align="center">ADMIN LOGIN</h2>
   
    <a href="/home"><button class="button12">Home</button></a>
    <form action="/authenticate-admin" method="post">
    <div class="slide-left">
    <div class="form">
        <label for="userName">Username:</label>
        <input  class="input" type="text" id="userName" name="userName" required><br>
        
        <label for="password">Password:</label>
        <input class="input" type="password" id="password" name="password" required><br>
      <!--  <div class="flex-container"> -->
      <div class="button-container">
        <button   class="button" type="submit">Login</button><br><br>
         </div>
       <!-- </div> -->
        </div>
    </form>
    </div>
    
    <h4 align="center">Doesn't have account <a href="/insert-admin"><b>SignUp</b></a></h4> 

</body>
</html>