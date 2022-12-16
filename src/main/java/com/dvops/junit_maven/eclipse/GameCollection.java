package com.dvops.junit_maven.eclipse;

import java.util.*;

public class GameCollection {

    private ArrayList<Game> games = new ArrayList<>();
    private int capacity;

    public GameCollection() {
    	

        this.capacity = 20;
    }

    public GameCollection(int capacity) {
        this.capacity = capacity;
    }

    public List<Game> getGames() {
        return games;
    }

    public void addGame(Game game) {
    	if(games.size() != capacity) {
    		games.add(game);
    	}
    }
    
    public ArrayList<Game> sortGamesByTitle() {         
        Collections.sort(games, Game.titleComparator);         
        return games;     
    } 
    
    public ArrayList<Game> sortGamesByNumberOfReviews() {         
        Collections.sort(games, Game.numberOfReviewsComparator);         
        return games;     
    } 
    
    public Game findGamesById(String id) {
    	for (Game s : games) { 		      
            if(s.getId().equals(id)) return s;
       }
    	return null;
    }

    public Game findGameByTitle(String title) {
    	for (Game s : games) { 		      
            if(s.getTitle().equals(title)) return s;
       }
    	return null;
    }
}
