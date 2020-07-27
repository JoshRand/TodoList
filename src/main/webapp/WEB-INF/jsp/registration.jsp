<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<style>
u {
	color:white;


}

body {
 
	background-color: rgb(88, 88, 88);
 
}

.navbar-nav>li {
	border-right: 1px solid #000;
	border-color: silver;
}
td {
	border-right: 5px solid #000;
	border-color: silver;
}
.navbar-nav>li:last-child {
	border: none;
}
</style>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body style="background-color: rgb(88, 88, 88)">

	<div style="background: #343a40">
		<h1 style="margin-left: 20px; color: silver">Welcome to the
			Registration Page</h1>
		<h4 style="margin-left: 40px; color: silver">Fill in the required
			fields</h4>
		</br>

	</div>
	<form:form method="post" modelAttribute="user" 
		style="padding: 20px">

		<h6 style="margin-left: 10px">
			<u>Username :</u>
		</h6>
		<form:input path="uName" type="text" 
			placeholder="Enter Username" style="margin-left: 10px" />

		<h6 style="margin-left: 10px">
			<u>Password :</u>
		</h6>
		<form:input path="password" type="text" 
			placeholder="Enter Password" style="margin-left: 10px" />
		<h6 style="margin-left: 10px">
			<u>First Name :</u>
		</h6>
		<form:input path="firstName" type="text" 
			placeholder="Enter First Name" style="margin-left: 10px" />
			
		<h6 style="margin-left: 10px">
			<u>Last Name :</u>
		</h6>
		<form:input path="lastName" type="text" 
			placeholder="Enter Username" style="margin-left: 10px" />
			
		<br>

		<input type="submit" style="margin-left: 10px" />

		<font color="red">${errorMessage}</font>

	</form:form>
	<a style="margin-left: 30px;color:white;">Already have an account?</a>
	<a href="login" style="margin-left: 10px;color:yellow">Login Here</a>

</body>
</html>