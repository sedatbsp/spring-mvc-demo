package com.sedatbsp.springdemo.mvc;

import java.util.LinkedHashMap;

public class Student {

	private String firstName;
	private String lastName;
	private String city;
	
	private LinkedHashMap<String, String> cityOptions;
	private String course;
	private String[] experiencedArea;
	
	
	public Student() {
		// populate city options 
		cityOptions = new LinkedHashMap<String, String>();
		cityOptions.put("Adana", "Adana");
		cityOptions.put("Ýstanbul", "Ýstanbul");
		cityOptions.put("Ankara", "Ankara");
		cityOptions.put("Bursa", "Bursa");
		cityOptions.put("Ýzmir", "Ýzmir");
		cityOptions.put("Kocaeli", "Kocaeli");
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public LinkedHashMap<String, String> getCityOptions() {
		return cityOptions;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String[] getExperiencedArea() {
		return experiencedArea;
	}

	public void setExperiencedArea(String[] experiencedArea) {
		this.experiencedArea = experiencedArea;
	}
	
	
	
}
