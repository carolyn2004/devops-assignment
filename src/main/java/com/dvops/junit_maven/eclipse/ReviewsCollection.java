package com.dvops.junit_maven.eclipse;

import java.util.*;

public class ReviewsCollection {
	
	private ArrayList<Reviews> reviews = new ArrayList<>();
	private ArrayList<Reviews> reviews2 = new ArrayList<>();
	
	public List<Reviews> getReviews() {
        return reviews;
    }
	
	public List<Reviews> getReviewsByGame(String game) {
		for (Reviews s : reviews) {
			if(s.getGame().equals(game)) {
			reviews2.add(s);
			}
		}
		return reviews2;
    }
	
	
//	public ArrayList<Reviews> getReviewsByGame(String game, Reviews review) {
//		for (Reviews s : reviews) {
//			if(s.getGame().equals(game))
//			reviews2.add(s);
//			return reviews2;
//		}
//        return null;
//    }
	
//	 public ArrayList<Reviews> sortReviewsByGame() {         
//	        Collections.sort(reviews, Reviews.gameComparator);   
//	        Collections.
//	        return reviews;     
//	    } 

    public void addReview(Reviews review) {
    		reviews.add(review);
    }
    
    public void deleteReview(Reviews review) {
		reviews.remove(review);
    }
    
    public Reviews editReview(int review_id, String username) {
		for (Reviews i : reviews) {
			if(i.getReview_id()== review_id && i.getUsername().equals(username)) return i;
		}
		return null;
    }
    
    
    
}
