<%@page import="com.entity.MatchesDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MatchesDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	MatchesDAOImpl dao = new MatchesDAOImpl(DBConnect.getConn());
	MatchesDtls b = dao.getMatchesById(id);
	%>
	<form action="../editMatches" method="post">
		<table class="table table-light ">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Round</th>
					<th scope="col">Time</th>
					<th scope="col">Team1</th>
					<th scope="col">Score</th>
					<th scope="col">Score</th>
					<th scope="col">Team2</th>
				</tr>
			</thead>
			<tboby>
			<tr>
				
				<th>
				<input type="hidden" name="id" value="<%=b.getIdmatches()%>">
				</th>

				<th scope="col"><%=b.getRound() %></th>

				<th><%=b.getTime() %></th>

				<th><%=b.getTeam1() %></th>

				<th>
					<div class="form-gruop">
						<input style="height: 50px; width: 50px;" name="score1"
							type="number" min="0" class="form-control" value="<%=b.getScore1()%>">
					</div>
				</th>

				<th>
					<div class="form-gruop">
						<input style="height: 50px; width: 50px;" name="score2"
							type="number" min=0 class="form-control" value="<%=b.getScore2()%>">
					</div>
				</th>

				<th><%=b.getTeam2() %></th>

				<th>
					<button type="submit" class=" form-control mr-sm-2">ADD</button>
				</th>
			</tr>
			</tboby>
		</table>
	</form>

</body>
</html>