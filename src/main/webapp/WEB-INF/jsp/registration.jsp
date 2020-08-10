<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

<meta charset="ISO-8859-1">
<title>Registration page</title>
<style>

u {
	color:white;
}

body {
 /*black or silver, which is best*/
  /*  background-color: rgb(88, 88, 88);*/
  background-color: rgb(88, 88, 88); /* For browsers that do not support gradients */
  background-image: linear-gradient(-45deg,rgb(88, 88, 88),black); /* Standard syntax (must be last) */
  background-size: 800%;
  -webkit-animation-name: change;
  -webkit-animation-duration: 15s;
  -webkit-animation-iteration-count: infinite;
  -webkit-animation-direction: alternate;
 
}
@-webkit-keyframes change {
	/* 0% {background-position: 0 50%;} 
	50% {background-position: 100% 50%;}
	100% {background-position: 0 50%;}
	 */
	  from {
   background-position: 20%;
 }
 to {
   background-position: 60%;
 }
} 
div{
position: relative;
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
			<br>
		

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
		<br>
		<input type="submit" class="btn btn-warning" style="margin-left: 10px" />

		<font color="red">${errorMessage}</font>

	</form:form>
	<a style="margin-left: 30px;color:white;">Already have an account?</a>
	<a href="login" style="margin-left: 10px;color:yellow">Login Here</a>

</body>
</html>