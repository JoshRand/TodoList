<html>

<head>
<title>First Web Application</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body style="background:silver">
	
	<h1 style="margin-left: 20px" style="margin-top:20px">Welcome to the Login page</h1>
	<h4 style="margin-left: 40px">Please login to view Todos</h4>
	<form method="post" class="form-inline" style="padding: 20px">
		
		
		<h6 style="margin-left: 10px" ><u>Name :</u></h6> <input type="text" name="name" placeholder="Enter Username" style="margin-left: 10px"/>
	
		<h6 style="margin-left: 10px"><u>Password :</u></h6> <input type="password" name="password" placeholder="Enter Password" style="margin-left: 10px"/><br> 
	
		<input type="submit"  style="margin-left: 10px"/>
	
		<font color="red">${errorMessage}</font> 

	
	</form>

	
</body>

</html>