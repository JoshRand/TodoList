<html>

<head>
<title>First Web Application</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>



<!-- <h1 style="margin-left: 20px" style="margin-top:20px">Welcome to the Login page</h1>
	<h4 style="margin-left: 40px">Please login to view Todos</h4>
	 -->

<body style="background:white">
	
	<div style="background:#343a40" >
		<h1 style="margin-left: 20px;color: silver">Welcome to the Login page</h1>
		<h4 style="margin-left: 40px;color: silver">Please login to view Todos</h4>
		</br>
	
	</div>
		<form method="post" class="form-inline" style="padding: 20px">
		
		<h6 style="margin-left: 10px" ><u>Name :</u></h6> <input type="text" name="name" placeholder="Enter Username" style="margin-left: 10px"/>
	
		<h6 style="margin-left: 10px"><u>Password :</u></h6> <input type="password" name="password" placeholder="Enter Password" style="margin-left: 10px"/><br> 
	
		<input type="submit"  style="margin-left: 10px"/>
	
		<font color="red">${errorMessage}</font> 

	
	</form>
	<a style="margin-left: 30px" >Don't have an account?</a><a href="registration-page" style="margin-left: 10px">Register Here</a>
	
</body>

</html>