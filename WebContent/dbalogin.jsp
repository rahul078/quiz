<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>DBA Login</title>
<style>
h3{
	color:red;
}
.btn {
  background: #2bed05;

  background-image: linear-gradient(to bottom, #3cfcec, #122cb3);
  border-radius: 28px;
  font-family: Georgia;
  color: white;
  font-size: 20px;
  padding: 5px 20px 5px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3cfcec;
  color:white;
  background-image: linear-gradient(to bottom, #2bed05, #f5da27);
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
table tr td
{
padding-left:10px;
padding-top:10px;
 font-family: 'Roboto Slab', serif;
}
form{
  display: inline-block;
  text-align: center;
}

fieldset {
  margin: 20px;
  padding: 0 10px 10px;
  border: 1px solid #666;
  border-radius: 8px;
  box-shadow: 0 0 10px #666;
  padding-top: 10px;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

.button
{
  background-color: #BA68C8;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
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
<h2>${fail }</h2>
<br>
	<div align="center">
  <form action="dbalogin" action="post">
    <fieldset>
<h2><center>Admin Login</center></h2>
    <div class="imgcontainer">
    <img src="images/restricted.png" alt="Image not found" width="200" height="200" align="center">
    </div>

    <table>
      <tr><center>
        <td> Username </td>
      <td><input type=text name="uname" size=25% required class="css-input" /></td>
      </center></tr>

  <tr>
   <td>Password</td>
   <td><input type=password name="pword" size=25% required class="css-input" /></td>
  </tr>
  <tr>
    <td><input type="submit" value="submit" class="btn"/></td>
  	<td><input type="reset" value="Reset" class="btn" /></td>
  </tr>
  </table>

</fieldset>
  </form>
  </div>
</body>
</html>
