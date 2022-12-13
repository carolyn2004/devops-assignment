package com.dvops.maven.eclipse;

public class Game {
	protected String name;
	public Game(String name, String category, String image, String description) {
		super();
		this.name = name;
		this.category = category;
		this.image = image;
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	protected String category;
	protected String image;
	protected String description;
}


