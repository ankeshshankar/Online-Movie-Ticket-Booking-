package com.show.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

@Entity
@Table(name = "Login")
public class Login{
	
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	private int login_id;
	
	@NotNull
	private String user_name;
	@NotNull
	private String city;
	@NotNull
	private String phone_no;
	@NotNull
	private String login_email;
	@NotNull
	private String login_password;
	
	public Login() {
		super();
	}

	public Login(int login_id, String user_name, String city, String phone_no, String login_email, String login_password) {
		super();
		this.login_id = login_id;
		this.user_name = user_name;
		this.city = city;
		this.phone_no = phone_no;
		this.login_email = login_email;
		this.login_password = login_password;
	}

	public int getLogin_id() {
		return login_id;
	}

	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getLogin_email() {
		return login_email;
	}

	public void setLogin_email(String login_email) {
		this.login_email = login_email;
	}

	public String getLogin_password() {
		return login_password;
	}

	public void setLogin_password(String login_password) {
		this.login_password = login_password;
	}

	
	
}
