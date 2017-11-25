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


<title>DBA PAGE</title>
<style type="text/css">
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

<nav class="navbar navbar-default" background-image=url("images/img-background.png")>
	<img src="images/logo.png" width=250px height=100px/>
	<ul class="nav navbar-nav navbar-right">
	<li><a href="dbaLogoutController">Logout</a></li>
	</ul>
</nav>
	${msg }
	<div id="insert">
	<form action="insertQuestion" method="post">
		<table>
			<tr>
				<td>Enter Question</td>
				<td><input type="text" name="question"/></td>
			</tr>
			<tr>
				<td>Enter choice 1</td>
				<td><input type="text" name="choice1" /></td>
			</tr>
			<tr>
				<td>Enter choice 2</td>
				<td><input type="text" name="choice2" /></td>
			</tr>
			<tr>
				<td>Enter choice 3</td>
				<td><input type="text" name="choice3" /></td>
			</tr>
			<tr>
				<td>Enter choice 4</td>
				<td><input type="text" name="choice4" /></td>
			</tr>
			<tr>
				<td>Enter correct option number</td>
				<td><input type="number" name="c_opt"></td>
			</tr>
			<tr>
				<td>Enter level</td>
				<td><input type="number" name="level"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit" class="btn"></input></td>
				<td><input type="reset" value="reset" class="btn"/></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>