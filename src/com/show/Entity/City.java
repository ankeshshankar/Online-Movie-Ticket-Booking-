package com.show.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

@Entity
@Table(name = "City")
public class City {
	@Id
	private int city_pincode;
	
	@NotNull
	private String city_name;

	public City(int city_pincode, String city_name) {
		super();
		this.city_pincode = city_pincode;
		this.city_name = city_name;
	}

	public City() {
		super();
	}

	public int getCity_pincode() {
		return city_pincode;
	}

	public void setCity_pincode(int city_pincode) {
		this.city_pincode = city_pincode;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

}
