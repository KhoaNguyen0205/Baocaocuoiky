<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
#maintenance-page {
  width: 770px;
  min-height: 525px;
  text-align: center;
  font: 1em "Open Sans",sans-serif;
  color: #333;
  background: #EEF2F5;
}
#maintenance-page h1 {
  padding: 40px 0 25px;
  text-align: center;
  font: bold 2.5em "Open Sans",sans-serif;
  color: #084D8B;
  margin: 0;
}
#maintenance-page p {
    padding: 25px 0px 40px;
    font-size: 1em;
}
</style>
<link rel="stylesheet" href="css1/style.css">
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
<%@include file="all_component/navbar2.jsp"%>
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<div id="maintenance-page">
	<h1 class="nl_open-sans">Planned Upgrade Today</h1>
	<img src="https://myprovidence.healthtrioconnect.com/asset/maintenance.png">
	<p>This tool is temporarily unavailable due to a planned upgrade.
	  <br />
	  <br />
  We expect to be finished with maintenance by midnight (Pacific time), Saturday night. 
  <br />
	  <br />
	  We apologize for any inconvenience.</p>
</div>
</div>
</body>
</html>