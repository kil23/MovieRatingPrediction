package com.helper;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GoogleSearchModel implements Serializable {
	String title = "", htmlTitle = "", link = "", cacheId = "",
			htmlSnippet = "", formattedUrl = "", displayLink = "";
	String catagory = "";
	String page="";
	String websiteCategory="";
	HashMap titleTokens;
	ArrayList arrTitleTokens = null;
	ArrayList arrTextTokens = null;
	public HashMap getTitleTokens() {
		return titleTokens;
	}



	public String getWebsiteCategory() {
		return websiteCategory;
	}



	public void setWebsiteCategory(String websiteCategory) {
		this.websiteCategory = websiteCategory;
	}



	public ArrayList getArrTitleTokens() {
		return arrTitleTokens;
	}



	public void setArrTitleTokens(ArrayList arrTitleTokens) {
		this.arrTitleTokens = arrTitleTokens;
	}



	public ArrayList getArrTextTokens() {
		return arrTextTokens;
	}



	public void setArrTextTokens(ArrayList arrTextTokens) {
		this.arrTextTokens = arrTextTokens;
	}



	public void setTitleTokens(HashMap titleTokens) {
		this.titleTokens = titleTokens;
	}



	public HashMap getTextTokens() {
		return textTokens;
	}



	public void setTextTokens(HashMap textTokens) {
		this.textTokens = textTokens;
	}

	HashMap textTokens;
	public String getPage() {
		return page;
	}



	public void setPage(String page) {
		this.page = page;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHtmlTitle() {
		return htmlTitle;
	}

	public void setHtmlTitle(String htmlTitle) {
		this.htmlTitle = htmlTitle;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getCacheId() {
		return cacheId;
	}

	public void setCacheId(String cacheId) {
		this.cacheId = cacheId;
	}

	public String getHtmlSnippet() {
		return htmlSnippet;
	}

	public void setHtmlSnippet(String htmlSnippet) {
		this.htmlSnippet = htmlSnippet;
	}

	public String getFormattedUrl() {
		return formattedUrl;
	}

	public void setFormattedUrl(String formattedUrl) {
		this.formattedUrl = formattedUrl;
	}

	public String getDisplayLink() {
		return displayLink;
	}

	public void setDisplayLink(String displayLink) {
		this.displayLink = displayLink;
	}

	public String getCatagory() {
		return catagory;    
	}

	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}
	public static void main(String[] args) {
			String str = "Hello +-^ my \"+ - *||{*(<}friend>'s mom) !!!! ^ ^^-- ^^^ +!";
			str = str.replaceAll("[-+^()<>{}!-=:;\"|`@#$%]+", " ");
			System.out.println(str); 
			
			String jt="<b>Technowings Inc</b>, Pune, India. 54 likes · 2 talking about this. &nbsp;Delivering Services <br>Around The Globe.";
			jt=jt.replaceAll("\\<.*?\\>", "");
			System.out.println(jt);
			
			jt = jt.replaceAll("&.*?;","");
			System.out.println("jt "+jt);
			
			try {
//		        String regex = "Harry James Potter (.*?) Mr\\.Potter";
//		        String strToSearch = "Harry James Potter also known as Mr.Potter. Potter is very famous in hagwards. Harry James Potter also called Mr.Potter.";
//		        Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
//		        Matcher matcher = pattern.matcher(strToSearch);
//		        int start = 0;
//		        int count = 0;
//		        while (matcher.find(start)) {
//		            System.out.println(count + ". " + matcher.group(1));
//		            start = matcher.end();
//		            count++;
//		        }
//		        System.out.println("Match Count "+count);
		        
		        
		        
		        
		        String regex = "(.*?)\\boverview\\b(.*?)\\binformation\\b";
		        String strToSearch = "overview of sales with customer information";
		        Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
		        Matcher matcher = pattern.matcher(strToSearch);
		        int start = 0;
		        int count = 0;
		        System.out.println(matcher.find());
		        while (matcher.find(start)) {
		            System.out.println(count + ". " + matcher.group(1));
		            start = matcher.end();
		            count++;
		        }
		        System.out.println("Match Count "+count);

		    } catch(Exception ex) {
		        ex.printStackTrace();
		    }
			
					
	}
}
