package com.dvops.junit_maven.eclipse;
import static org.testng.Assert.assertEquals;
import java.util.List;
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
		g1= new Game("0001","Elden Ring","description1",5.00);
		g2= new Game("0002","Mario Kart","description2",5.00);
		g3= new Game("0003","DOTA","description3",5.00);
		g4= new Game("0004","God of War","description4",5.00);
		gc.addGame(g1);
		gc.addGame(g2);
		gc.addGame(g3);
		gc.addGame(g4);
		
	}
	
	@Test 
	void testAddGame() {
		List<Game> testGc = gc.getGames();
		assertEquals(testGc.size(), GAME_COLLECTION_SIZE);
		
		gc.addGame(g1);
		assertEquals(gc.getGames().size(), GAME_COLLECTION_SIZE+1);
		
	}
	
	

	

}
