package com.dvops.junit_maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;
import static org.testng.Assert.assertEquals;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ReviewsCollectionTest {
	private ReviewsCollection rc;
	private Reviews r1;
	private Reviews r2;
	private Reviews r3;
	private Reviews r4;
	private Reviews r5;
	private Reviews r6;
	private final int GAME_COLLECTION_SIZE = 6;

	@BeforeEach
	void setUp() throws Exception {
		
		rc=new ReviewsCollection();
		r1= new Reviews(1, "Elden Ring","1stars","feedback1","richard");
		r2= new Reviews(2, "God of War","2stars","feedback2","richard");
		r3= new Reviews(3, "Cooking Mama","3stars","feedback3","richard123");
		r4= new Reviews(4, "God of War","4stars","feedback4","richard123");
		r5= new Reviews(5, "God of War","5stars","feedback5","richard123");
		r6= new Reviews(6, "God of War","1stars","feedback6","richard123");
		rc.addReview(r1);
		rc.addReview(r2);
		rc.addReview(r3);
		rc.addReview(r4);
		rc.addReview(r5);
		rc.addReview(r6);
	}

	@AfterEach
	void tearDown() throws Exception {
	}
	
	

	@Test
	void testGetReviewsByGame() {
		
		String game = "God of War";
		List<Reviews> testRc = rc.getReviewsByGame(game);
		assertEquals(testRc.get(0).getGame(), game);
		assertEquals(testRc.get(1).getGame(), game);
		assertEquals(testRc.get(2).getGame(), game);
		assertEquals(testRc.get(3).getGame(), game);
		System.out.println(testRc);
		System.out.println(testRc.get(0).getUsername());
		System.out.println(testRc.get(1).getUsername()); 
		System.out.println(testRc.get(2).getUsername());
		System.out.println(testRc.get(3).getUsername());
	}

	@Test
	void testAddReview() {
		List<Reviews> testRc = rc.getReviews();
		assertEquals(testRc.size(), GAME_COLLECTION_SIZE);
		
		rc.addReview(r1);
		assertEquals(rc.getReviews().size(), GAME_COLLECTION_SIZE+1);
		System.out.println(rc.getReviews().size());
	}

	@Test
	void testDeleteReview() {
		List<Reviews> testRc = rc.getReviews();
		assertEquals(testRc.size(), GAME_COLLECTION_SIZE);
		
		rc.deleteReview(r1);
		assertEquals(rc.getReviews().size(), GAME_COLLECTION_SIZE-1);
		System.out.println("Size after delete: " + rc.getReviews().size());
		
	}

	@Test
	void testEditReview() {
		//arrange
		int review_id = 1;
		String username = "richard";
		String newRating = "3stars";
		String newFeedback = "this game is quite good!";
		
		Reviews review = rc.editReview(review_id, username);
		
		review.setRating(newRating);
		review.setFeedback(newFeedback);
		
		assertEquals(r1.getRating() , newRating);
		assertEquals(r1.getFeedback() , newFeedback);
	}

}
