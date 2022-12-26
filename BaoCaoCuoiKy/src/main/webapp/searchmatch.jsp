<%@page import="com.entity.MatchesDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MatchesDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="css1/style.css">
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
<%@include file="all_component/navbar2.jsp"%>

<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	
	<h3 class="text-center">Hello Admin</h3>

	<c:if test="${not empty succMsg}">
		<h5 class="text-center text-success">${succMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<h5 class="text-center text-damger">${failedMsg}</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	
	
	
	
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
			
			<tbody>
			<%
			String ch = request.getParameter("ch");
			MatchesDAOImpl dao =new MatchesDAOImpl(DBConnect.getConn());
			List<MatchesDtls> list = dao.getMatchesBySearch(ch);
			for(MatchesDtls b : list) {
			%>
				<tr>
				<td><%=b.getIdmatches()%></td>
				<td><%=b.getRound()%></td>
				<td><%=b.getTime()%></td>
				<td><%=b.getTeam1()%></td>
				<td><%=b.getScore1()%></td>
				<td><%=b.getScore2()%></td>
				<td><%=b.getTeam2()%></td>
				
				<%
			}
			 %>
</body>
</html>