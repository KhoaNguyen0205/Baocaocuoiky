<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bundesliga</title>
<style type="text/css">
* {
	padding: 5px;
	margin: 0;
}
body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: relative;
	min-height: 100vh;
	
}

div {
	color: #727272;
	text-align: center;
}

p {
	margin: 16px;
	font-size: 96px;
	color: #ff1a1a;
	text-transform: uppercase;
	font-weight: 600;
	transition: all 1s ease-in-out;
	position: relative;
}

p:before {
	content: attr(data-item);
	transition: all 1s ease-in-out;
	color: #8254ff;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	width: 0;
	overflow: hidden;
}

p:hover {
   color: black;
}

.nav {
	margin: 25px;
	background: #f9f9f9;
	padding: 16px;
}
.menuItems {
	list-style: none;
	display: flex;
	padding: 5px;
}

.nav li {
	margin: 50px;
}

nav li a {
	text-decoration: none;
	color: #8f8f8f;
	font-size: 24px;
	font-weight: 400;
	transition: all 0.5s ease-in-out;
	position: relative;
	text-transform: uppercase;
}

nav li a:before {
	content: attr(data-item);
	transition: 0.5s;
	color: #8254ff;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	width: 0;
	overflow: hidden;
}

nav li a:hover {
	width: 100%;
	transition: all 0.5s ease-in-out;
	color: red;
}
.ct{
border-color: black;
height: 50px;
width: 50px;
position: absolute;
right: 5px;
top: 
}
</style>
</head>
<body>
	<p data-item='BUNDESLIGA'>BUNDESLIGA</p>
	
<div class="col-md-3">
		
		<c:if test="${not empty userobj}">
			
             	 <a href="login.jsp" style="border: solid;color: black;" class="">${userobj.name}</a> 
					<a href="logout" style="border: solid;color: black;" class="">Logout</a>

			
		</c:if>



		<c:if test="${empty userobj}">
			
				<a href="login.jsp" style="border: solid;color: black;" class=""> Login</a> 
				<a href="register.jsp" style="border: solid;color: black;" class="">Register</a>

			

		</c:if>

	 </div>



	<!-- <div class="col-md-3">
				<a href="login.jsp" style="border: solid;color: black;" class="">Login</a>
				<a href="register.jsp" style="border: solid; color: black;" class="">Register</a>
  	    </div> -->	
	<section>
  <nav>
    <ul class="menuItems">
      <li><a href="index.jsp" data-item='Home'>Home</a></li>
      <li><a href="table.jsp" data-item='Table'>Table</a></li>
      <li><a href="allClub.jsp" data-item='CLUBS'>CLUBS</a></li>
      <li><a href="Players.jsp" data-item='Players'>Players</a></li>
      <li><a href="legends.jsp" data-item='Legends'>Legends</a></li>
      <li><a href="error.jsp" data-item='Legends'>Fixtures & Results</a></li>	
    </ul>

  </nav>

</section>


	
</body>
</html>