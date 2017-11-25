<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stylesheet/styling.css">

<title>DBA Login</title>
</head>
<body>

<nav class="navbar navbar-default" background-image=url("images/img-background.png">
	<a href="index.jsp"><img src="images/logo.png" width=250px height=100px/></a>
	<ul class="nav navbar-nav navbar-right">
	<li><a href="login.jsp">Login</a></li>
	<li><a href="register.jsp">Register</a></li>
	</ul>
</nav>
<h3 color:red>${fail }</h3>
<br>
	<form action="dbalogin" method="post">
		<table>
			<tr>
				<td>UserName</td>
				<td><input type="text" name ="uname" size=30 required/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pword" required /></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit" /></td>
				<td><input type="reset" value="reset"/></td>
			</tr>
		</table>
	
	</form>
</body>
</html>