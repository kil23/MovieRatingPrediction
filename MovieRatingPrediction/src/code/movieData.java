package code;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import beans.movieModel;

public class movieData {
	public String getMovieUrl(String movie) throws IOException{
		String searchurl="http://www.imdb.com/find?q="+movie;
		Document document = Jsoup.connect(searchurl).get();
		Elements findsection=document.select("div.findSection");
		Elements table=findsection.select("tbody");
		Element link=table.select("a[href]").first();
		String url="http://www.imdb.com"+link.attr("href");
		return url;
	}
	
	
	public String getMovieNames() throws IOException{
		String searchurl="http://www.imdb.com/list/ls076044429/";
		Document document = Jsoup.connect(searchurl).get();
		String titles=document.select("a[href^=/title/]").text();
		System.out.println(titles);

		
		return "";
	}
	
	public String getMoviePoster(String title) throws IOException{
		String url = getMovieUrl(title);
		Document document = Jsoup.connect(url).get();
		String poster=document.select("img[src]").get(6).toString();
		return poster;
		
	}
	public movieModel getMovieData(String url) throws IOException{
		Document document = Jsoup.connect(url).get();
	    
		
		String title = document.select(".title_wrapper h1").text();
	    Elements dir=document.select("[itemprop=director] [itemprop=name]");
	    int dir_no=dir.size();
	    String directors="";
	    String dir_links="";
	    while(dir_no>0){
	    	directors=dir.get(dir_no-1).text()+","+directors;
	    	
	    	String a="a:contains("+dir.get(dir_no-1).text()+")";
	    	 Elements link_tag=document.select(a);
	    	 String link=link_tag.attr("href");
	    	 dir_links=link+","+dir_links;
	    	 
	    	 dir_no--;
	    }
	    directors = directors.substring(0, directors.length() - 1);
	    dir_links = dir_links.substring(0, dir_links.length() - 1);
	    //System.out.println("Directors: "+directors);
	    //System.out.println("Dir_links"+dir_links);
	    
	    Elements writers=document.select("[itemprop=creator] [itemprop=name]");
	    String writer=writers.get(0).text();
	    //System.out.println("Writer: "+writer);
	    
	    String year=document.select("#titleYear a").text();
	    //System.out.println("year:"+year);
	    
	    Elements genres=document.select("div[itemprop=genre] a");
	    int genres_no=genres.size();
	    String genre="";
	    while(genres_no>0){
	    	genre=genres.get(genres_no-1).text()+"|"+genre;
	    	genres_no--;
	    }
	    genre = genre.substring(0, genre.length() - 1);
	    //System.out.println("genes: "+genre);
	    
	    String country=document.select("#titleDetails a[href^=/search/title?country_of_origin]").text();
	    //System.out.println("country: "+country);
	    
	    String language=document.select("#titleDetails a[href^=/search/title?title_type=feature&primary_language]").text();
	    //System.out.println("Language: "+language);
	    
	    String poster=document.select("img[src]").get(6).toString();
//	    String poster=document.select("/html/body/div[1]/div/div[4]/div[5]/div[1]/div[2]/div/div[3]/div[1]/a/img").text();
	    //System.out.println(poster);
	    
	    String rating=document.select("span[itemprop='ratingValue']").text();
//	    System.out.println("Rating: "+rating);
	    
	    String votes=document.select("span[itemprop='ratingCount']").text();
	    //System.out.println("No. of Votes: "+votes);
	    
	    String actors=document.select("span[itemprop='actors']").text();
	    //System.out.println("Actors: "+actors);
	    
	    String budget = document.select("html > body > div:nth-of-type(1) > div > div:nth-of-type(4) > div:nth-of-type(5) > div:nth-of-type(3) > div:nth-of-type(8) > div:nth-of-type(7)").text();
	    
	    movieModel mv=new movieModel();
		mv.setMovie_title(title);
		mv.setDirector_name(directors);
	    mv.setWriter(writer);
	    mv.setYear(year);
	    mv.setLanguage(language);
	    mv.setCountry(country);
	    mv.setGenres(genre.toString());
	    mv.setRank(rating);
	    mv.setVotes(votes);
	    mv.setActor1(actors);
	    mv.setMov_imdb_link(poster);
	    mv.setBudget(budget);
	    return mv;
	}
	
	public static void main(String[] args) throws IOException {
		movieData md = new movieData();
		String url=md.getMovieUrl("2.0");
		movieModel mv=md.getMovieData(url);
		System.out.println(mv.getMov_imdb_link());
	}
	
}
