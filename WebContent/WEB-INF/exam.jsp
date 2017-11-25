<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.src.model.*" %>
    <%@ page import="java.util.*" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>quiz</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
table tr td
{
  padding:3px;
  color:black ;
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
	<li><a href="resultController">Cancel</a></li>
	<li><a href="logoutController">Logout</a></li>
	</ul>
</nav>
<form action="resultController" method="post">

	<% List q=(ArrayList)request.getAttribute("q");
		HttpSession s=request.getSession();
		s.setAttribute("question",q);
	%>
	<c:forEach items="${q}" var="question">
		<br>
	<p>${question.question}</p>

	<input type="radio" value="1" name="${question.question}" required>${question.choice1 }</input><br/>
	<input type="radio" value="2" name="${question.question}" >${question.choice2 }</input><br/>
	<input type="radio" value="3" name="${question.question}" >${question.choice3 }</input><br/>
	<input type="radio" value="4" name="${question.question}" >${question.choice4 }</input><br/>


	</c:forEach>
	<br>

	<input type="submit" value="submit" class="btn"/>

</form>
</body>
</html>
