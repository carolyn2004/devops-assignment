package com.dvops.maven.eclipse;

public class Reviews {
	protected String review_id;
	public Reviews(String review_id, String game, String rating, String feedback, String username) {
		super();
		this.review_id = review_id;
		this.game = game;
		this.rating = rating;
		this.feedback = feedback;
		this.username = username;
	}
	public String getReview_id() {
		return review_id;
	}
	public void setReview_id(String review_id) {
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
	protected String game;
	protected String rating;
	protected String feedback;
	protected String username;
	
}
