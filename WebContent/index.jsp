<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Welcome</title>

<style>
body {
 font-family:Tahoma,Arial,sans-serif;
}
a{
  color:black;
}
a:hover{
  color:blue;
}

#footer{
  position: absolute;
  bottom:0;
  width:100%;
  height:75px;
  background-color:#f5f5f5;

}
#footer a{
  font-family: 'Rye', cursive;
}

p{
font-family: 'Roboto Slab', serif;
  color:black ;
  font-size:20px;
}
b{
  font-family: 'Roboto Slab', serif;
  font-size:15px;
}
#navigation
{
background-image: linear-gradient(to left, #B3FAFF 0%, #FFFFFF 100%);
  height: 90px;
}
nav li{
  font-size:2.5rem;
	padding:18px 10px 20px 10px;

  font-family: 'Rye', cursive;
}
nav li:hover{
  font-size:3rem;
  font-family: 'Rye', cursive;
  background-color:lightgray;
  border-bottom:3px solid orange;
}
</style>

</head>
<body>
<nav class="navbar navbar-default" id="navigation">
	<img src="images/logo.png" width=250px height=100px/>
	<ul class="nav navbar-nav navbar-right">
	<li><a href="login.jsp">Login</a></li>
	<li><a href="register.jsp">Register</a></li>
	</ul>
</nav>

	<p>
	This s a quiz game developed off the shelf just as a project
	<br/>

	</p>
	<h3 id="anim" class="animated lightSpeedIn">${fail }</h3>
	<div id="footer">
	<p font-size:10px>Contact us on : <b>rahul.jaikumar1998@gmail.com</b>
	<br>
	<a href="dbalogin.jsp">Login as DBA</a></p>
	</div>
</body>
</html>
