package com.show.Contoller;

import java.io.IOException;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoadMovies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoadMovies() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	String cityName = (String)request.getParameter("cityName");
    	if(cityName.equals("profile")) {
    		RequestDispatcher rd = request.getRequestDispatcher("./pages/Profile.jsp");
    		rd.forward(request, response);
    	
    	}else if(cityName.equals("logout")) {
    		RequestDispatcher rd = request.getRequestDispatcher("./index.jsp");
    		rd.forward(request, response);
    	}else {
    		HttpSession session = request.getSession(true);
        	session.setAttribute("cityName", cityName);
        	RequestDispatcher rd = request.getRequestDispatcher("./pages/Movies.jsp");
    		rd.forward(request, response);
    	}
    }
}
