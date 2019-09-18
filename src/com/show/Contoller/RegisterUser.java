package com.show.Contoller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.show.Database.JpaConnection;
import com.show.Entity.Login;

public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterUser() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		

		String click = (String) request.getParameter("click");
		if(click.equals("register")) {
			Login newUser = new Login();
			
			newUser.setUser_name(request.getParameter("userName"));
			newUser.setCity(request.getParameter("userCity"));
			newUser.setPhone_no(request.getParameter("userPhone"));
			newUser.setLogin_email(request.getParameter("userEmail"));
			newUser.setLogin_password(request.getParameter("userPass"));
			
			EntityManager manager = JpaConnection.register.createEntityManager();
			
			manager.getTransaction().begin();
			manager.persist(newUser);
			manager.getTransaction().commit();
			manager.close();
			
			response.sendRedirect("index.jsp");	
			
		}else if(click.equals("update")) {
			
			EntityManager update = JpaConnection.register.createEntityManager();
			int user_id = (Integer)session.getAttribute("userId");
		
			Login user = update.find(Login.class, user_id);
			update.getTransaction().begin();
			
			user.setUser_name(request.getParameter("userName"));
			user.setCity(request.getParameter("userCity"));
			user.setPhone_no(request.getParameter("userPhone"));
			user.setLogin_email(request.getParameter("userEmail"));
			user.setLogin_password(request.getParameter("userPass"));
			
			update.getTransaction().commit();
			update.close();
			
			response.sendRedirect("index.jsp");
			
		}else if(click.equals("delete")) {
			EntityManager delete = JpaConnection.register.createEntityManager();
			int user_id = (Integer)session.getAttribute("userId");
			Login user = delete.find(Login.class, user_id);
			delete.remove(user);
			delete.getTransaction().begin();
			delete.getTransaction().commit();
			
			response.sendRedirect("index.jsp");	
			
		}else if(click.equals("login")) {
			response.sendRedirect("index.jsp");	
		}
	}

}
