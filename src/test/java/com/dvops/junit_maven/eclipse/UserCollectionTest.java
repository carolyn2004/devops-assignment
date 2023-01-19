package com.dvops.junit_maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;
import static org.testng.Assert.assertEquals;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserCollectionTest {
	private UserCollection uc;
	private User u1;
	private User u2;
	private User u3;
	private User u4;
	private final int USER_COLLECTION_SIZE = 4;

	@BeforeEach
	void setUp() throws Exception {
		uc=new UserCollection();
		u1= new User("Richard Aw","richard1","password1","email1");
		u2= new User("Richard Aw","richard2","password2","email2");
		u3= new User("Richard Aw","richard3","password3","email3");
		u4= new User("Richard Aw","richard4","password4","email4");
		uc.register(u1);
		uc.register(u2);
		uc.register(u3);
		uc.register(u4);
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testRegister() {
		List<User> testUc = uc.getUsers();
		assertEquals(testUc.size(), USER_COLLECTION_SIZE);
		
		uc.register(new User("Richard Aw","richard4","password4","email4"));
		assertEquals(uc.getUsers().size(), USER_COLLECTION_SIZE+1);
//		System.out.println(uc.getUsers().size());
	}
	
	@Test
	void testLogin() {
		String validUsername = "richard1";
		String validPassword = "password1";
		List<User> testUc = uc.login(validUsername, validPassword);
		
		//valid login
		assertEquals(testUc.get(0).getUsername(), validUsername);
		assertEquals(testUc.get(0).getPassword(), validPassword);
		
		String invalidUsername = "rich1";
		String invalidPassword = "pass1";
		
		//invalid login
		assertNotEquals(testUc.get(0).getUsername(), invalidUsername);
		assertNotEquals(testUc.get(0).getPassword(), invalidPassword);
	}
	
	@Test
	void testGetUserInfo() {
		String validUsername = "richard1";
		List<User> testUc = uc.getUserByUsername(validUsername);
		
		assertEquals(testUc.get(0).getName(), "Richard Aw");
		assertEquals(testUc.get(0).getUsername(), "richard1");
		assertEquals(testUc.get(0).getPassword(), "password1");
		assertEquals(testUc.get(0).getEmail(), "email1");
		
		
	}
	
	@Test
	void logout() {
		String validUsername = "richard1";
		String httpsessionUsername = "richard1";
		
		assertEquals(httpsessionUsername, validUsername);
		
		//removes username from session storage
		httpsessionUsername = "";
		assertNotEquals(httpsessionUsername, validUsername);
		
	}

}
