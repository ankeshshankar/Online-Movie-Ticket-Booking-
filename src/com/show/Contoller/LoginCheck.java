package com.show.Contoller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.show.Database.JpaConnection;
import com.show.Entity.Login;


public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCheck() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String click = (String) request.getParameter("click");
		
		if (click.equals("login")) {
			
			String login_email = request.getParameter("email");
			String login_password = request.getParameter("password");

			List<Login> results = JpaConnection.getUsers();

			for	(Login getUser : results) {
				if (getUser.getLogin_email().equals(login_email) && getUser.getLogin_password().equals(login_password)) {

					HttpSession session = request.getSession(true);
					int id =getUser.getLogin_id();
					session.setAttribute("userId",id);
					session.setAttribute("userName", getUser.getUser_name());

					RequestDispatcher rd = request.getRequestDispatcher("./pages/Home.jsp");
					rd.forward(request, response);
				} else {
					RequestDispatcher rd = request.getRequestDispatcher("./pages/Error.jsp");
					rd.forward(request, response);
				}
				
			}
		} else if (click.equals("register")) {
			RequestDispatcher rd = request.getRequestDispatcher("./pages/Register.jsp");
			rd.forward(request, response);
		}
	}
}
