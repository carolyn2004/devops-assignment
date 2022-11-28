package com.dvops.maven.eclipse;

public class Games {
	protected String name;
	protected String category;
	protected String image;
	protected String description;
	
	public Games (String name, String category, String image, String description) {
		super();
		this.name = name;
		this.category = category;
		this.image = image;
		this.description = description;
	}
	
	public String getName() {
		return name;
	}
	public String getCategory() {
		return category;
	}
	public String getimage() {
		return image;
	}
	public String getdescription() {
		return description;
	}
}


