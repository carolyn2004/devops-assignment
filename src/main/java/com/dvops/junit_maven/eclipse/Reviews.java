package com.dvops.junit_maven.eclipse;

import java.util.Comparator;
import java.util.Objects;

public class Reviews {
	
	private int review_id;
	private String game;
	private String rating;
	private String feedback;
	private String username;
	
	public Reviews(int review_id, String game, String rating, String feedback, String username) {
		super();
		this.review_id = review_id;
		this.game = game;
		this.rating = rating;
		this.feedback = feedback;
		this.username = username;
	}
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(review_id, game, rating, feedback, username);
	}
	
	public static Comparator<Reviews> gameComparator = new Comparator<Reviews>() {
		@Override
		public int compare(Reviews s1, Reviews s2) {
			return (int) (s1.getGame().compareTo(s2.getGame()));
		}
	};

}
