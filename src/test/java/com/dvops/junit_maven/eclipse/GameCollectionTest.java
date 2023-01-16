package com.dvops.junit_maven.eclipse;
import static org.junit.jupiter.api.Assertions.fail;
import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertNotEquals;
import static org.testng.Assert.assertNotNull;
import static org.testng.Assert.assertNull;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class GameCollectionTest {
	private GameCollection gc;
	private Game g1;
	private Game g2;
	private Game g3;
	private Game g4;
	private final int GAME_COLLECTION_SIZE = 4;
	
	@BeforeEach
	void setUp() throws Exception {
		
		gc=new GameCollection();
		g1= new Game("Elden Ring","action role-play","https://i.postimg.cc/fyyvhXLZ/image.png","description1");
		g2= new Game("Mario Kart","racing","https://i.postimg.cc/q7SxsgMv/image.png","description2");
		g3= new Game("Cooking Mama","simulation","https://i.postimg.cc/J0YrBvjw/image.png","description3");
		g4= new Game("God of War","action-adventure","https://i.postimg.cc/mgByb0h8/image.png","description4");
		gc.addGame(g1);
		gc.addGame(g2);
		gc.addGame(g3);
		gc.addGame(g4);
	}
	
	@AfterEach
	void tearDown() throws Exception {
	}
	
	@Test
	void testGetAllGames() {
		List<Game> testGc = gc.getGames();
		assertEquals(testGc.size(), GAME_COLLECTION_SIZE);
	}
	
	@Test
	void testFindGamesByName() {
		//arrange
		String validName = "Elden Ring";
		String invalidName = "Elden";
		//act
		Game validGame = gc.findGamesByName(validName);
		Game invalidGame = gc.findGamesByName(invalidName);
//		System.out.println(gc.findGamesByName(validName));
		//assert
		assertNotNull(validGame);
		assertNull(invalidGame);
	}
	
	@Test 
	void testAddGame() {
		List<Game> testGc = gc.getGames();
		assertEquals(testGc.size(), GAME_COLLECTION_SIZE);
		
		gc.addGame(g1);
		assertEquals(gc.getGames().size(), GAME_COLLECTION_SIZE+1);
//		
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
		gc.addGame(g1);
	}
	
	@Test
	void testSortGamesByCategory() {
		//arrange
		
		//act
		List<Game> testGc = gc.sortGamesByCategory();
		
		//assert
		assertEquals(g1.getCategory(), testGc.get(0).getCategory());
		assertEquals(g4.getCategory(), testGc.get(1).getCategory());
		assertEquals(g2.getCategory(), testGc.get(2).getCategory());
		assertEquals(g3.getCategory(), testGc.get(3).getCategory());
//		System.out.println(g1.getCategory() + " - " + testGc.get(0).getCategory());
//		System.out.println(g4.getCategory() + " - " + testGc.get(1).getCategory());
//		System.out.println(g2.getCategory() + " - " + testGc.get(2).getCategory());
//		System.out.println(g3.getCategory() + " - " + testGc.get(3).getCategory());
	}
	
	

	

}
