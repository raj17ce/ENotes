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
import com.User.NoteDetails;
import com.User.UserDetails;

@WebServlet("/editNoteServlet")
public class editNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noteID = Integer.parseInt(request.getParameter("nid"));
		String title = request.getParameter("ntitle");
		String content = request.getParameter("ncontent");
		UserDetails ud = (UserDetails) request.getSession().getAttribute("userDe");
		
		NoteDetails nd = new NoteDetails();
		nd.setNoteID(noteID);
		nd.setTitle(title);
		nd.setContent(content);
		nd.setUser(ud);
		
		NoteDAO dao = new NoteDAO(DBConnect.getCon());
		
		boolean isEdited = dao.editNote(nd);
		
		if(isEdited) {
			System.out.println("Note Edited Successfully");
			HttpSession session = request.getSession();
			session.setAttribute("editMsg", "Note Edited Successfully...");
			
			response.sendRedirect("./showNotes.jsp");
		}
		else {
			System.out.println("Note Edited Failed");
		}
	}

}
