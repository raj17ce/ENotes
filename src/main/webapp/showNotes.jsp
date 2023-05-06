<%@page import="com.User.NoteDetails"%>
<%@page import="java.util.List"%>
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
<title>ENotes - Show Notes</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/showNotes.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>

	<div class="container show-container">
		<h2 class="all-notes">All Notes</h2>

		<%
			String editMsg = (String) session.getAttribute("editMsg");
			if(editMsg != null) {
		%>
		<div class="successtext"><%=editMsg%></div>
		<%
			session.removeAttribute("editMsg");
			}
		%>
		
		<%
			String deleteMsg = (String) session.getAttribute("deleteMsg");
			if(deleteMsg != null) {
		%>
		<div class="successtext"><%=deleteMsg%></div>
		<%
			session.removeAttribute("deleteMsg");
			}
		%>
		
		<%
			String notDeleteMsg = (String) session.getAttribute("notDeleteMsg");
			if(notDeleteMsg != null) {
		%>
		<div class="failtext"><%=notDeleteMsg%></div>
		<%
			session.removeAttribute("notDeleteMsg");
			}
		%>

		<%
		if (ud != null) {
			NoteDAO dao = new NoteDAO(DBConnect.getCon());
			List<NoteDetails> notes = dao.getNotes(ud.getUserID());

			for (NoteDetails note : notes) {
		%>

		<div class="card">
			<img src="./images/paper.png" alt="Notes Image" />

			<div class="card-body">

				<h3 class="card-title"><%=note.getTitle()%></h3>
				<p><%=note.getContent()%></p>

				<p class="publish-p">
					<b class="publish-text">Published By : </b> <b><%=ud.getName()%></b>
				</p>

				<p class="publish-p">
					<b class="publish-text">Published On : </b> <b><%=note.getnDate() %></b>
				</p>

				<div class="button-container">
					<a href="deleteServlet?note-id=<%=note.getNoteID()%>" class="btn delete-btn">Delete</a> <a
						href="./editNote.jsp?note-id=<%=note.getNoteID()%>"
						class="btn edit-btn">Edit</a>
				</div>
			</div>
		</div>

		<%
		}
		}
		%>

		<div class="add-notes-btn-container">
			<a href="./addNotes.jsp" class="btn add-notes-btn">Add Notes</a>
		</div>
	</div>

	<%@include file="./components/footer.jsp"%>

</body>
</html>