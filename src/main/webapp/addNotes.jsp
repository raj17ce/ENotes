<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails ud = (UserDetails) session.getAttribute("userDe");

if(ud == null) {
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
<title>ENotes - Add Notes</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/addNotes.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>

	<div class="container notes-container">
		<h2>Add Note</h2>
		<form action="./addNotesServlet" method="post" class="notes-form">

			<label for="ntitle">Enter Title</label> <input type="text"
				name="ntitle" placeholder="Add a title for your Note" required /> <label
				for="ncontent">Enter Content</label>
			<textarea name="ncontent" id="" cols="30" rows="13"
				placeholder="Add some content for your Note"></textarea>
			<input class="btn" type="submit" value="Add Note" />
		</form>
	</div>

	<%@include file="./components/footer.jsp"%>

</body>
</html>