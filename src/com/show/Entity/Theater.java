package com.show.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

@Entity
@Table(name = "Theater")
public class Theater {
	
	@Id
	private int theater_id;
	@NotNull
	private String theater_name;
	@NotNull
	private String theater_address;
	@NotNull
	private String theater_place;
	
	public Theater() {
		super();
	}

	public Theater(int theater_id, String theater_name, String theater_address, String theater_place) {
		super();
		this.theater_id = theater_id;
		this.theater_name = theater_name;
		this.theater_address = theater_address;
		this.theater_place = theater_place;
	}

	public int getTheater_id() {
		return theater_id;
	}

	public void setTheater_id(int theater_id) {
		this.theater_id = theater_id;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public String getTheater_address() {
		return theater_address;
	}

	public void setTheater_address(String theater_address) {
		this.theater_address = theater_address;
	}

	public String getTheater_place() {
		return theater_place;
	}

	public void setTheater_place(String theater_place) {
		this.theater_place = theater_place;
	}

	

}
