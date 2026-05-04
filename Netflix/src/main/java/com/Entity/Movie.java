package com.Entity;

public class Movie {

	private String title;
    private String genre;
    private String image;
    
    public Movie() {}
    
	public Movie(String title, String genre, String image) {
		this.title = title;
		this.genre = genre;
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
