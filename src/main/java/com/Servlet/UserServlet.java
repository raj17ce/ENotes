package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		
		UserDetails ud = new UserDetails(name, email, password);
		UserDAO dao = new UserDAO(DBConnect.getCon());
		boolean f = dao.addUser(ud);
		
		if(f == true) {
			session.setAttribute("signupSuccess", "Signed Up Successfully...");
			response.sendRedirect("./signup.jsp");
		}
		else {
			session.setAttribute("signupFail", "There was some error at Server Side...");
			response.sendRedirect("./signup.jsp");
		}
	}
	
}