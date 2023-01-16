package com.dvops.junit_maven.eclipse;

import java.util.*;

public class UserCollection {

	private ArrayList<User> users = new ArrayList<>();
	private ArrayList<User> users2 = new ArrayList<>();
	
	public List<User> getUsers() {
        return users;
    }

	public List<User> getUserByUsername(String username) {
		for (User s : users) {
			if (s.getUsername().equals(username)) {
				users2.add(s);
			}
		}
		return users2;
	}

	public void register(User user) {
		users.add(user);
	}

	public List<User> login(String username,String password) {
		for (User s : users) {
			if (s.getUsername().equals(username) && s.getPassword().equals(password)) {
				users2.add(s);
			}
		}
		return users2;
	}

}
