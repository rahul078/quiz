<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Registraton Page</title>
<style>
table tr td p
{
  font-size:1.6rem;
  color:red;
}
nav
{
	background-color:#3de109;
  height: 100px;
}
table tr td
{
  font-size:1.6rem;
  color:black;
  font-family: 'Roboto Slab', serif;
}

nav li{
  font-size:2.5rem;
  width:150px;
  font-family: 'Rye', cursive;
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
table tr td
{
  padding:5px;
  color:black ;
}
h2
{
	color:red;
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
<form action="registerController" method="post">
<table>
<tr>
	<td>Name</td>
	<td><input type="text" name="name" size=35% value="${details['name'] }" size=15 /></td>
	<td><p color:"red"">${error['name'] }</p>
</td>
</tr>
<tr>
	<td>E Mail</td>
	<td><input type="text" name="email" size=35% value="${details['email'] }" size=30 /></td>
	<td><p>${error['email'] }</p>
</td>
</tr>
<tr>
	<td>Age</td>
	<td><input type="number" name="age" size=10% value="${details['age'] }"/></td>
	<td><p>${error['age'] }</p>
</td>
</tr>
<tr>
	<td>Qualification</td>
	<td><input type="text" name="qualification" size=35% value="${details['qualification'] }"/></td>
	<td><p>${error['qualification'] }</p>
</td>
</tr>
<tr>
	<td>Password</td>
	<td><input type="password" name="password" size=35% onkeyup="CheckPasswordStrength(this.value)"/></td>
	<td><p>${error['password'] }</p>
	<td><span id="password_strength"></span>
<script type="text/javascript">
    function CheckPasswordStrength(password) {
        var password_strength = document.getElementById("password_strength");
        if (password.length == 0) {
            password_strength.innerHTML = "";
            return;
        }
        var regex = new Array();
        regex.push("[A-Z]"); //Uppercase Alphabet.
        regex.push("[a-z]"); //Lowercase Alphabet.
        regex.push("[0-9]"); //Digit.
        regex.push("[$@$!%*#?&]"); //Special Character.

        var passed = 0;

        //Validate for each Regular Expression.
        for (var i = 0; i < regex.length; i++) {
            if (new RegExp(regex[i]).test(password)) {
                passed++;
            }
        }
        if (passed > 2 && password.length > 8) {
            passed++;
        }
        var color = "";
        var strength = "";
        switch (passed) {
            case 0:
            case 1:
                strength = "Weak";
                color = "red";
                break;
            case 2:
                strength = "Good";
                color = "darkorange";
                break;
            case 3:
            case 4:
                strength = "Strong";
                color = "green";
                break;
            case 5:
                strength = "Very Strong";
                color = "darkgreen";
                break;
        }
        password_strength.innerHTML = strength;
        password_strength.style.color = color;
    }
</script></td>
</td>
</tr>
<tr>
	<td>Confirm Password</td>
	<td><input type="password" size=35% name="cpassword" /></td>
</tr>
<tr>
	<td><input type="submit" value="submit" class="btn" /></td>
	<td><input type="reset" value="Reset" class="btn" /></td>
</tr>
</table>
</form>

</body>
</html>
