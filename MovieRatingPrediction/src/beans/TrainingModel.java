package beans;

import java.io.Serializable;

public class TrainingModel implements Serializable {
String title,director,writer,actors,country,language,genres,rank,votes,dir_rating,writer_rating,actor_likes;

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getDirector() {
	return director;
}

public void setDirector(String director) {
	this.director = director;
}

public String getWriter() {
	return writer;
}

public void setWriter(String writer) {
	this.writer = writer;
}

public String getActors() {
	return actors;
}

public void setActors(String actors) {
	this.actors = actors;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

public String getLanguage() {
	return language;
}

public void setLanguage(String language) {
	this.language = language;
}

public String getGenres() {
	return genres;
}

public void setGenres(String genres) {
	this.genres = genres;
}

public String getRank() {
	return rank;
}

public void setRank(String rank) {
	this.rank = rank;
}

public String getVotes() {
	return votes;
}

public void setVotes(String votes) {
	this.votes = votes;
}

public String getDir_rating() {
	return dir_rating;
}

public void setDir_rating(String dir_rating) {
	this.dir_rating = dir_rating;
}

public String getWriter_rating() {
	return writer_rating;
}

public void setWriter_rating(String writer_rating) {
	this.writer_rating = writer_rating;
}

public String getActor_likes() {
	return actor_likes;
}

public void setActor_likes(String actor_likes) {
	this.actor_likes = actor_likes;
}


}
