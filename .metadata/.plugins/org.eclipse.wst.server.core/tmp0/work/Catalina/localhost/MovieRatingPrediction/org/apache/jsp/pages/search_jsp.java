/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.39
 * Generated at: 2018-03-29 13:33:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.helper.UserModel;
import com.database.ConnectionManager;
import beans.movieModel;
import code.movieData;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE HTML>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../tiles/header.jsp", out, false);
      out.write("\r\n");
      out.write("\t<style>\r\n");
      out.write("img {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../tiles/topbar.jsp", out, false);
      out.write("\r\n");
      out.write("\t<!--/start-banner-->\r\n");
      out.write("\t  <div class=\"main-content\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"col-md-8 mag-innert-left\" style=\"margin-left: 15%;\" >\r\n");
      out.write("\t\t\t<div class=\"account-bottom\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<form name=\"myform\" id=\"myform\" action=\"");
      out.print(request.getContextPath());
      out.write("/pages/search.jsp\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6 account-left\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<div class=\"account-top heading\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Search Movie</h3>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>Movie Name:</span> <input type=\"text\" name=\"movname\"\r\n");
      out.write("\t\t\t\t\t\t\t\tid=\"movname\"> \r\n");
      out.write("\t\t\t\t\t\t\t<!-- \t<input value=\"Search\" type=\"submit\"> \t -->\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6 address new account-left\">\r\n");
      out.write("\t\t\t\t\t<h3></h3>\r\n");
      out.write("\t\t\t\t\t<h3></h3>\r\n");
      out.write("\t\t\t\t\t<h3></h3>\r\n");
      out.write("\t\t\t\t\t<h3></h3>\r\n");
      out.write("\t\t\t\t\t<input value=\"Search\" type=\"submit\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t<!-- </div> -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");

	UserModel um= null;
	if(session.getAttribute("USER_MODEL")!=null){
		um=(UserModel)session.getAttribute("USER_MODEL");
	}
		String rating="";
		String title="";
		String genres="";
		String actors="";
		String user=um.getUserid();
		movieData md = new movieData();
		movieModel mv=null;
		String searchkey = request.getParameter("movname");
		if (searchkey != null) {
			try{
			String url = md.getMovieUrl(searchkey);
			 mv = md.getMovieData(url);
			 title= mv.getMovie_title();
			 genres = mv.getGenres();
			 actors= mv.getActor1();
			 rating = ConnectionManager.getRating(mv);
			}catch(Exception e){
				
      out.write("\r\n");
      out.write("\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\talert(\"Movie Not Found!\");\r\n");
      out.write("\t\t\t\twindow.location.href='");
      out.print(request.getContextPath());
      out.write("/pages/search.jsp';\r\n");
      out.write("\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t");

			}
			if(mv!= null && rating != null){
			String poster=mv.getMov_imdb_link();
			poster=poster.replace("title", " class='img-responsive' title");

			System.out.print(mv.getActor1());
			ConnectionManager.addToHistort(user, title, poster, genres, actors);
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- <div class=\"container\"> -->\r\n");
      out.write("\t\t<div class=\"col-md-8 mag-innert-left\" style=\"margin-left: 15%;\">\r\n");
      out.write("\t\t\t<div class=\"technology\">\r\n");
      out.write("\t\t\t\t<h2 class=\"tittle\">\r\n");
      out.write("\t\t\t\t\t<i class=\"glyphicon glyphicon-certificate\"> </i>");
      out.print(mv.getMovie_title());
      out.write("</h2>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6 tech-img\">\r\n");
      out.write("\t\t\t\t\t<!-- <img src=\"images/tech.jpg\" class=\"img-responsive\" alt=\"\"> -->\r\n");
      out.write("\t\t\t\t\t");
      out.print(poster);
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6 tech-text\">\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t<!-- <div class=\"col-md-3 item-pic\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/f1.jpg\" class=\"img-responsive\" alt=\"\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</div> -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(mv.getDirector_name());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Director</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(mv.getWriter());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Writer</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a >");
      out.print(mv.getYear());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Release Year</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(mv.getLanguage());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Language</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(mv.getGenres());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Genres</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(mv.getActor1());
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Actors</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(rating );
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">Predicted Rating</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t");

// 				movieData m = new movieData();
// 				String url=m.getMovieUrl("padman");
// 				movieModel mv=m.getMovieData(url);
				if(mv.getRank().length() > 0){
					System.out.println(mv.getRank());
				
				
      out.write("\t\r\n");
      out.write("\t\t\t\t\t<div class=\"editor-pics\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-9 item-details\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5 class=\"inner two\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a>");
      out.print(mv.getRank() );
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"td-post-date two\">IMDB Rating</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t</div>\t\r\n");
      out.write("\t\t\t\t\t");

				}else{
					out.println("New Movie!");
				}
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t<!-- </div> -->\r\n");
      out.write("\r\n");
      out.write("\t");

			}
		}else
		{
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write(" <div class=\"col-md-8 mag-innert-left\" style=\"margin-left: 15%;\">\r\n");
      out.write("<pre>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</pre>\r\n");
      out.write("</div> \r\n");
      out.write("\t\t\t");

		}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../tiles/footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
