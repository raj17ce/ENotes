<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails ud = (UserDetails) session.getAttribute("userDe");

if (ud == null) {
	response.sendRedirect("./login.jsp");
	session.setAttribute("loginError", "Please login...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon">
<title>ENotes - Save your notes online</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>

	<div class="container home-container flex">
		<img src="./images/paper.png" alt="Notes">
		<h1>Start Taking Your Notes</h1>
		<a href="./addNotes.jsp" class="btn">Add Notes</a>
	</div>

	<%@include file="./components/footer.jsp"%>

</body>
</html>