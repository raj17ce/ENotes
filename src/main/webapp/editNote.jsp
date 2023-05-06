<%@page import="com.User.NoteDetails"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.NoteDAO"%>
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
<title>ENotes - Edit Notes</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/editNote.css">
</head>

<%
	int editNoteID = Integer.parseInt(request.getParameter("note-id"));

	NoteDAO dao = new NoteDAO(DBConnect.getCon());
	NoteDetails note = dao.getNote(editNoteID);
%>

<body>
	<%@include file="./components/navbar.jsp"%>

	<div class="container notes-container">
		<h2>Edit Note</h2>
		<form action="./editNoteServlet" method="post" class="notes-form">
		
			<input type="hidden" value="<%=editNoteID%>" name="nid" />

			<label for="ntitle">Edit Title</label> <input type="text"
				name="ntitle" placeholder="Add a title for your Note" value="<%=note.getTitle()%>" required /> <label
				for="ncontent">Edit Content</label>
			<textarea name="ncontent" id="" cols="30" rows="13"
				placeholder="Add some content for your Note"><%=note.getContent() %></textarea>
			<input class="btn" type="submit" value="Edit Note" />
		</form>
	</div>

	<%@include file="./components/footer.jsp"%>

</body>
</html>