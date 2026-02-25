package com.rahul.model;

public class User {

	private int id;
	private String name;
	private String email;
	// Default constructor
	public User() {
	}
	// Parameterized constructor
	public User(int id, String name, String email) {
	this.id = id;
	this.name = name;
	this.email = email;
	}
	// Getter for id
	public int getId() {

	return id;
	}
	// Setter for id
	public void setId(int id) {
	this.id = id;
	}
	// Getter for name
	public String getName() {
	return name;
	}
	// Setter for name
	public void setName(String name) {
	this.name = name;
	}
	// Getter for email
	public String getEmail() {
	return email;
	}
	// Setter for email
	public void setEmail(String email) {
	this.email = email;
	}
	// Optional: toString method (useful for debugging)
	@Override
	public String toString() {
	return "User [id=" + id + ", name=" + name + ", email=" + email + "]";
	}
	
}
