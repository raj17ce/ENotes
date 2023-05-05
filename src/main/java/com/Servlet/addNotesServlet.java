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

@WebServlet("/addNotesServlet")
public class addNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("ntitle");
		String content = request.getParameter("ncontent");
		
		HttpSession session = request.getSession();
		UserDetails ud = (UserDetails) session.getAttribute("userDe");
		
		NoteDetails nd = new NoteDetails();
		nd.setTitle(title);
		nd.setContent(content);
		nd.setUser(ud);
		
		NoteDAO dao = new NoteDAO(DBConnect.getCon());
		boolean f = dao.addNote(nd);
		
		if(f == true) {
			System.out.println("Note Inserted Successfully");
		}
		else {
			System.out.println("Note Not Inserted");
		}
	}

}
