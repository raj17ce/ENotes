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


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		
		UserDetails ud = new UserDetails();
		ud.setEmail(email);
		ud.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getCon());
		UserDetails user = dao.loginUser(ud);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userDe", user);
			response.sendRedirect("./home.jsp");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("loginFail", "Invalid Username or Password...");
			response.sendRedirect("./login.jsp");
		}
	}

}
