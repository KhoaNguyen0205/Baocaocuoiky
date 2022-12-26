<%@page import="com.entity.ClubDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnett"%>
<%@page import="com.DAO.ClubDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Matches</title>
<%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Club</h4>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-damger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
                      
                      
						<form action="../add_matches" method="post"
							enctype="multipart/form-data">

							<div class="form-gruop">
								<label for="exampleInputEmail">Round</label> <input
									name="round" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required">
							</div>
							
							<div class="form-gruop">
								<label for="exampleInputEmail">Time</label> <input
									name="time" type="datetime-local" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required">
							</div>
							
							
							
							<div class="form-gruop">
								<label for="exampleInputEmail">Team1</label> 
								<input  name="team1" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required">
							</div>
							
							<div class="form-gruop">
								<label for="exampleInputEmail">Team2</label> 
								<input name="team2" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required">							
							</div>
							
							
							
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>