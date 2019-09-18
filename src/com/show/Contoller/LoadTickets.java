package com.show.Contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoadTickets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadTickets() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String theaterName = (String) request.getParameter("theaterName");
		String place = (String) request.getParameter("place");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("theaterName", theaterName);
		session.setAttribute("place", place);
		
		RequestDispatcher rd = request.getRequestDispatcher("pages/Tickets.jsp");
		rd.forward(request, response);
	}

}
