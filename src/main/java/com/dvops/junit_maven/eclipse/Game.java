package com.dvops.junit_maven.eclipse;

import java.util.Comparator;
import java.util.Objects;

public class Game {
	private String id;
	private String title;
	private String description;
	private double numberOfReviews;

	public Game(String id, String title, String description, double numberOfReviews) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.numberOfReviews = numberOfReviews;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the artiste
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param artiste the artiste to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the songLength
	 */
	public double getnumberOfReviews() {
		return numberOfReviews;
	}

	/**
	 * @param songLength the songLength to set
	 */
	public void setnumberOfReviews(double numberOfReviews) {
		this.numberOfReviews = numberOfReviews;
	}

	@Override
	public int hashCode() {
		return Objects.hash(description, id, numberOfReviews, title);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof Game))
			return false;
		Game other = (Game) obj;
		return Objects.equals(description, other.description) && Objects.equals(id, other.id)
				&& Double.doubleToLongBits(numberOfReviews) == Double.doubleToLongBits(other.numberOfReviews)
				&& Objects.equals(title, other.title);
	}

	public static Comparator<Game> titleComparator = new Comparator<Game>() {
		@Override
		public int compare(Game s1, Game s2) {
			return (int) (s1.getTitle().compareTo(s2.getTitle()));
		}
	};

	public static Comparator<Game> numberOfReviewsComparator = new Comparator<Game>() {
		@Override         
	    public int compare(Game s1, Game s2) {             
	      return (s2.getnumberOfReviews() < s1.getnumberOfReviews() ? -1 :                     
	              (s2.getnumberOfReviews() == s1.getnumberOfReviews() ? 0 : 1));           
	    }     
	};
}
