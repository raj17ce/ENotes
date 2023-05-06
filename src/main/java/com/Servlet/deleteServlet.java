package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.NoteDAO;
import com.DB.DBConnect;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noteID = Integer.parseInt(request.getParameter("note-id"));
		
		NoteDAO dao = new NoteDAO(DBConnect.getCon());
		
		boolean f = dao.deleteNote(noteID);
		
		HttpSession session = request.getSession();
		
		if(f == true) {
			System.out.println("Note Deleted Successfully...");
			session.setAttribute("deleteMsg", "Note Deleted Successfully...");
			response.sendRedirect("./showNotes.jsp");
		}
		else {
			System.out.println("Note Deletion Failed...");
			session.setAttribute("notDeleteMsg", "Something Went Wrong on Server...");
			response.sendRedirect("./showNotes.jsp");
		}
	}

}
