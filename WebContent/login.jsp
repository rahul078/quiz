<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="stylesheet/styling.css">
<link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stylesheet/animaton.css">
<title>Login To Take Quiz</title>
<style>

table tr td
{
  padding:3px;
  color:black ;
}
.btn {
  background: #2bed05;
  background-image: -webkit-linear-gradient(top, #2bed05, #f5da27);
  background-image: -moz-linear-gradient(top, #2bed05, #f5da27);
  background-image: -ms-linear-gradient(top, #2bed05, #f5da27);
  background-image: -o-linear-gradient(top, #2bed05, #f5da27);
  background-image: linear-gradient(to bottom, #2bed05, #f5da27);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Georgia;
  color: white;
  font-size: 20px;
  padding: 5px 10px 5px 10px;
  text-decoration: none;
}

.btn:hover {
  background: #3cfcec;
  background-image: -webkit-linear-gradient(top, #3cfcec, #122cb3);
  background-image: -moz-linear-gradient(top, #3cfcec, #122cb3);
  background-image: -ms-linear-gradient(top, #3cfcec, #122cb3);
  background-image: -o-linear-gradient(top, #3cfcec, #122cb3);
  background-image: linear-gradient(to bottom, #3cfcec, #122cb3);
  text-decoration: none;
}
.css-input {
     padding: 5px;
     font-size: 16px;
     border-width: 1px;
     border-color: #CCCCCC;
     background-color: #FFFFFF;
     color: #000000;
     border-style: solid;
     border-radius: 9px;
     box-shadow: 0px 0px 5px rgba(66,66,66,.75);
     text-shadow: undefined 0px 0px 5px px rgba(66,66,66,.75);
}
 .css-input:focus {
     outline:none;
}
#navigation
{
	background: linear-gradient(to right, #66ff33 0%, #0099ff 100%);
  height: 100px;
}
nav li{
  font-size:2.5rem;
  width:150px;
  top:30px;
  font-family: 'Rye', cursive;
}
nav li:hover{
  font-size:3rem;
  font-family: 'Rye', cursive;
  border-bottom:3px solid green;
  top:35px;
  right:20px;
}
</style>
</head>

<body>
<nav class="navbar navbar-default" id="navigation">
<a href="index.jsp"><img src="images/logo.png" width=250px height=100px/></a>
<ul class="nav navbar-nav navbar-right">
<li><a href="login.jsp">Login</a></li>
<li><a href="register.jsp">Register</a></li>
</ul>
</nav>
<h2 id="anim" class="animated lightSpeedIn">${fail}</h2>

<form action="loginController" method="post">
<table>
<tr>
	<td>Email</td>
	<td><input type=text name="email" size=35% required class="css-input" /></td>
</tr>
<tr>
	<td>Password</td>
	<td><input type=password name="password" size=35% required class="css-input" /></td>
</tr>
<tr>
	<td><input type="submit" value="submit" class="btn"/></td>
	<td><input type="reset" value="Reset" class="btn" /></td>
</tr>
</table>
</form>
</body>
</html>
