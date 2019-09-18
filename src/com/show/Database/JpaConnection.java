package com.show.Database;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.show.Entity.City;
import com.show.Entity.Login;
import com.show.Entity.Movie;
import com.show.Entity.Theater;

public class JpaConnection {
	
	public static EntityManagerFactory register = Persistence.createEntityManagerFactory("BookMyShow");
	
	public  static List<Movie> getMovie(){
		EntityManager manager = register.createEntityManager();
		TypedQuery<Movie> query = manager.createQuery("SELECT c FROM Movie c", Movie.class);
		List<Movie> results = (List<Movie>) query.getResultList();
		manager.close();
		return results;
	}
	
	public static List<City> getCity(){
		EntityManager manager = register.createEntityManager();
		TypedQuery<City> query = manager.createQuery("SELECT c FROM City c", City.class);
		List<City> results = (List<City>) query.getResultList();
		manager.close();
		return results;
	}
	
	public static List<Theater> getTheater(){
		EntityManager manager = register.createEntityManager();
		TypedQuery<Theater> query = manager.createQuery("SELECT c FROM Theater c", Theater.class);
		List<Theater> results = (List<Theater>) query.getResultList();
		manager.close();
		return results;
	}
	public static List<Login> getUsers(){
		EntityManager manager = register.createEntityManager();
		TypedQuery<Login> quert = manager.createQuery("SELECT c from Login c", Login.class);
		List<Login> results = (List<Login>) quert.getResultList();
		manager.close();
		return results;
	}
}
