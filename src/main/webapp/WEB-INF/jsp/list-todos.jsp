<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>

<head>
<title>Todo's for ${name}</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
th {

	color: white;

}
td {

	color: silver;

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


@-webkit-keyframes mymove {
  from {top: 100%;}
  to {top: 0%;}
}
div{
   position: relative;
  animation: mymove 0.5s;
  animation-timing-function:ease;
  
 
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
color:white;
margin-left: 80px;
}
</style>

</head>

</head>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav mr-auto" >
    <li class="nav-item">
      <a class="nav-link" method="post" href="/welcome-page">Home</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link disabled" href="#">View Todos</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/account-details?name=${name}">Account Details</a>
    </li>
   <!--  <li class="nav-item">
      <a class="nav-link disabled" href="#">Disabled</a>
    </li> -->
  </ul>
  <a style="color: silver;" >Signed in as ${name}</a>
   <a class="nav-link" href="/logout">Logout</a>
</nav>
<b style="color:white">Your todos are</b>

	<div class="container">
	
		<table class="table table-dark table-striped">
			
			<thead>
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is it Done?</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.description}</td>
						<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
						<td>${todo.done}</td>
						<td><a type="button" class="btn btn-info"
							href="/update-todo?id=${todo.id}">Update</a></td>
						<td><a type="button" class="btn btn-warning"
							href="/delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/add-todo" style="color:yellow">Add a Todo</a>
		</div>
	</div>
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>