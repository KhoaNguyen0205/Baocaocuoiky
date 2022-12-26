<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN || HOME</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a.button{
 display: inline-block;
 padding: 20px 40px;
 background-color:white;
 text-decoration: none;
 border-radius: 20px;
}

a.button.addClub{
	background: #ffb3b3;
	float: left;
	height: 100px;
	width: 350px;
}
</style>
</head>
<body>
<%@include file="navbar.jsp"%> 
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
    <div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_clubs.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
							<i class="fa-regular fa-futbol fa-3x text-danger"></i>
							<h4>Add CLUBS</h4>
							-------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="all_clubs.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
							<i class="fa-regular fa-futbol fa-3x text-danger"></i>
							<h4>All CLUBS</h4>
							-------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="add_players.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
							<i class="fa-solid fa-person-running fa-3x text-primary"></i>
							<h4>Add Player</h4>
							-------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="all_players.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
								<i class="fa-solid fa-person-running fa-3x text-primary"></i>
							<h4>All Player</h4>
							-------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="add_matches.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
							<i class="fa-regular fa-calendar-days fa-3x"></i>
							<h4>Add Matches</h4>
							-------------
						</div>
					</div>
				</a>
			</div>
			
			
			<div class="col-md-3">
				<a href="all_matches.jsp">
					<div class="card">
						<div class="card-body text-center">
							<br>
							<i class="fa-regular fa-calendar-days fa-3x"></i>
							<h4>All Matches</h4>
							-------------
						</div>
					</div>
				</a>
			</div>

			
			
</body>
</html>