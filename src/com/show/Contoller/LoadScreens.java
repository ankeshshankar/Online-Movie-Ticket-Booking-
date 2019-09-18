package com.show.Contoller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoadScreens extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoadScreens() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String movieName  = request.getParameter("movieName");
//		results = JpaConnection.getMovie();
//		
//		Movie movie = new Movie();
//		movieDetails = new ArrayList<Movie>();
//		
//		for(Movie m : results) {
//			if(m.getMovie_name().equals(movieName)) {
//				movie.setMovie_name(m.getMovie_name());
//				movie.setMovie_id(m.getMovie_id());
//				movie.setMovie_release_date(m.getMovie_release_date());
//				movie.setMovie_about(m.getMovie_about());
//				movie.setMovie_lang(m.getMovie_lang());
//				movieDetails.add(movie);
//			}
//		}
		request.setAttribute("movieName", movieName);
		RequestDispatcher rd = request.getRequestDispatcher("pages/Screens.jsp");
		rd.forward(request, response);
		
		
	}

}
