package com.dvops.maven.eclipse;

public class Reviews {
	protected String game;
	protected String rating;
	public String getGame() {
		return game;
	}
	public Reviews(String game, String rating, String feedback, String username) {
		super();
		this.game = game;
		this.rating = rating;
		this.feedback = feedback;
		this.username = username;
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
	protected String feedback;
	protected String username;
	
}
