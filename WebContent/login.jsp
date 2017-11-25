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

<title>Login To Take Quiz</title>
<style>
nav
{
	background-color:#3de109;
  height: 100px;
}
nav li{
  font-size:2.5rem;
  width:150px;
  font-family: 'Rye', cursive;
}
table tr td
{
  padding:3px;
  color:black ;
}
nav li a:hover{
  font-size:3rem;
  font-family: 'Rye', cursive;
    border-bottom:3px dashed black;
}
nav ul li a
{
  font-size: 2.5rem;
  font-family: 'Rye', cursive;
}
#login_form
{
  padding-left: 30px;
  padding-bottom: 20px;
}


.btn {
  background: #0b1dde;
  background-image: -webkit-linear-gradient(top, #0b1dde, #0a3306);
  background-image: -moz-linear-gradient(top, #0b1dde, #0a3306);
  background-image: -ms-linear-gradient(top, #0b1dde, #0a3306);
  background-image: -o-linear-gradient(top, #0b1dde, #0a3306);
  background-image: linear-gradient(to bottom, #0b1dde, #0a3306);
  -webkit-border-radius: 20;
  -moz-border-radius: 20;
  border-radius: 20px;
  font-family: Georgia;
  color: #fae6fa;
  font-size: 20px;
  padding: 5px 10px 5px 10px;
  text-decoration: none;
}
.btn:hover {
  background: #18c0de;
  background-image: -webkit-linear-gradient(top, #18c0de, #a124e0);
  background-image: -moz-linear-gradient(top, #18c0de, #a124e0);
  background-image: -ms-linear-gradient(top, #18c0de, #a124e0);
  background-image: -o-linear-gradient(top, #18c0de, #a124e0);
  background-image: linear-gradient(to bottom, #18c0de, #a124e0);
  text-decoration: none;
}
</style>
</head>

<body>
<nav class="navbar navbar-default">
<a href="index.jsp"><img src="images/logo.png" width=250px height=100px/></a>
<ul class="nav navbar-nav navbar-right">
<li><a href="login.jsp">Login</a></li>
<li><a href="register.jsp">Register</a></li>
</ul>
</nav>
<h2>${fail}</h2>

<form action="loginController" method="post">
<table>
<tr>
	<td>Email</td>
	<td><input type=text name="email" size=35% required/></td>
</tr>
<tr>
	<td>Password</td>
	<td><input type=password name="password" size=35% required/></td>
</tr>
<tr>
	<td><input type="submit" value="submit" class="btn"/></td>
	<td><input type="reset" value="Reset" class="btn" /></td>
</tr>
</table>
</form>
</body>
</html>
