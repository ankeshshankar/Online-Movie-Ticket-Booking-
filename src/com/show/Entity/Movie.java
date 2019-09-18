package com.show.Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.sun.istack.NotNull;

@Entity
@Table(name = "Movie")
public class Movie {

	public Movie(int movie_id, String movie_name, Date movie_release_date, String movie_about, String movie_lang) {
		super();
		this.movie_id = movie_id;
		this.movie_name = movie_name;
		this.movie_release_date = movie_release_date;
		this.movie_about = movie_about;
		this.movie_lang = movie_lang;
	}


	@Id
	private int movie_id;
	@NotNull
	private String movie_name;
	@NotNull
	@Temporal(value=TemporalType.DATE)
	private Date movie_release_date;
	@NotNull
	private String movie_about;
	@NotNull
	private String movie_lang;
	
	
	public Movie() {
		super();
	}


	public int getMovie_id() {
		return movie_id;
	}


	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}


	public String getMovie_name() {
		return movie_name;
	}


	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}


	public Date getMovie_release_date() {
		return movie_release_date;
	}


	public void setMovie_release_date(Date movie_release_date) {
		this.movie_release_date = movie_release_date;
	}


	public String getMovie_about() {
		return movie_about;
	}


	public void setMovie_about(String movie_about) {
		this.movie_about = movie_about;
	}


	public String getMovie_lang() {
		return movie_lang;
	}


	public void setMovie_lang(String movie_lang) {
		this.movie_lang = movie_lang;
	}
	
	
	
	
}
