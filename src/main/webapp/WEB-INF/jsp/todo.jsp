<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>First Web Application</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
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
b{
	color:silver;

}
</style>

</head>

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
      <a class="nav-link" href="/account-details?name=${name}">Account Details</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">Disabled</a>
    </li>
  </ul>
  <a style="color: silver;" >Signed in as ${name}</a>
   <a class="nav-link" href="/logout">Logout</a>
</nav>
<br/>
<br/>
	<div class="container">


		<form:form method="post" modelAttribute="todo">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label path="description"><b>Description</b></form:label>
				<form:input path="description" type="text" class="form-control"
					required="required" />
				<form:errors path="description" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="targetDate"><b>Target Date</b></form:label>
				<form:input path="targetDate" type="text" class="form-control"
					required="required" />
				<form:errors path="targetDate" cssClass="text-warning" />
			</fieldset>

			<button type="submit" class="btn btn-danger">Add</button>
		</form:form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	<script>
		$('#targetDate').datepicker({
			format : 'dd/mm/yyyy'
		});
	</script>

</body>
</html>