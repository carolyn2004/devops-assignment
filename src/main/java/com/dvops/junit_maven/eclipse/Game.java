package com.dvops.junit_maven.eclipse;

import java.util.Comparator;
import java.util.Objects;

public class Game {
	private String name;
	private String category;
	private String image;
	private String description;

	public Game(String name, String category, String image, String description) {
		super();
		this.name = name;
		this.category = category;
		this.image = image;
		this.description = description;
	}

	/**
	 * @return the id
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the id to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}

	/**
	 * @param category the title to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}

	/**
	 * @return the artiste
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param artiste the artiste to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * @return the songLength
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param songLength the songLength to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public int hashCode() {
		return Objects.hash(image, name, description, category);
	}

//	@Override
//	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (!(obj instanceof Game))
//			return false;
//		Game other = (Game) obj;
//		return Objects.equals(image, other.image) && Objects.equals(name, other.name)
//				&& Objects.equals(description, other.description)
////				Double.doubleToLongBits(numberOfReviews) == Double.doubleToLongBits(other.numberOfReviews)
//				&& Objects.equals(category, other.category);
//	}

	public static Comparator<Game> categoryComparator = new Comparator<Game>() {
		@Override
		public int compare(Game s1, Game s2) {
			return (int) (s1.getCategory().compareTo(s2.getCategory()));
		}
	};

//	public static Comparator<Game> numberOfReviewsComparator = new Comparator<Game>() {
//		@Override         
//	    public int compare(Game s1, Game s2) {             
//	      return (s2.getnumberOfReviews() < s1.getnumberOfReviews() ? -1 :                     
//	              (s2.getnumberOfReviews() == s1.getnumberOfReviews() ? 0 : 1));           
//	    }     
//	};
}
