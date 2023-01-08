package com.dvops.maven.eclipse;

public class User {
	
	protected String username;
	protected String name;
	protected String email;
	public User(String username, String name, String email) {
		super();
		this.username = username;
		this.name = name;
		this.email = email;
		
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
