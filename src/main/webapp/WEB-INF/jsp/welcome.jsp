<html>

<head>

<title>Welcome Page</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.navbar-nav>li{
  border-right: 1px solid #000;
  border-color: silver;
}

.navbar-nav>li:last-child{
   border: none;
}
</style>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav mr-auto" >
    <li class="nav-item active">
      <a class="nav-link" method="post" href="/welcome-page">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/list-todos">View Todos</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/account-details">Account Details</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">Disabled</a>
    </li>
    
     
    
  </ul>
  <a style="color: silver;" >Signed in as ${name}</a>
   <a class="nav-link" href="/logout">Logout</a>
</nav>

<h1 style="margin-left: 20px" align="center">${welcome} ${name}!</h1>
	<%--  <a href="/list-todos" style="margin-left: 20px">${clickhere}</a> ${statement} --%>
	
</body>

</html>