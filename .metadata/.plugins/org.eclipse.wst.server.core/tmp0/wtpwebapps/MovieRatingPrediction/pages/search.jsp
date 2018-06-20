<!DOCTYPE HTML>
<%@page import="com.helper.UserModel"%>
<%@page import="com.database.ConnectionManager"%>
<%@page import="beans.movieModel"%>
<%@page import="code.movieData"%>
<html>
<head>
<jsp:include page="../tiles/header.jsp"></jsp:include>
	<style>
img {
	width: 100%;
}
</style>
</head>
<body>
	<jsp:include page="../tiles/topbar.jsp"></jsp:include>
	<!--/start-banner-->
	  <div class="main-content">
	<div class="container">
		<div class="col-md-8 mag-innert-left" style="margin-left: 15%;" >
			<div class="account-bottom">
				
					<form name="myform" id="myform" action="<%=request.getContextPath()%>/pages/search.jsp">
				<div class="col-md-6 account-left">
						
						<div class="account-top heading">
							<h3>Search Movie</h3>
						</div>
						<div class="address">
							<span>Movie Name:</span> <input type="text" name="movname"
								id="movname"> 
							<!-- 	<input value="Search" type="submit"> 	 -->
							
						</div>

					
				</div>
				<div class="col-md-6 address new account-left">
					<h3></h3>
					<h3></h3>
					<h3></h3>
					<h3></h3>
					<input value="Search" type="submit">

				</div>
				</form>

			</div>
			<div class="clearfix"></div>
		</div>
		
		
		
		
		
	<!-- </div> -->


	<%
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
				%>
				<script type="text/javascript">
				alert("Movie Not Found!");
				window.location.href='<%=request.getContextPath()%>/pages/search.jsp';
				</script>
				<%
			}
			if(mv!= null && rating != null){
			String poster=mv.getMov_imdb_link();
			poster=poster.replace("title", " class='img-responsive' title");

			System.out.print(mv.getActor1());
			ConnectionManager.addToHistort(user, title, poster, genres, actors);
	%>

	<!-- <div class="container"> -->
		<div class="col-md-8 mag-innert-left" style="margin-left: 15%;">
			<div class="technology">
				<h2 class="tittle">
					<i class="glyphicon glyphicon-certificate"> </i><%=mv.getMovie_title()%></h2>
				<div class="col-md-6 tech-img">
					<!-- <img src="images/tech.jpg" class="img-responsive" alt=""> -->
					<%=poster%>
				</div>
				<div class="col-md-6 tech-text">
					<div class="editor-pics">
						<!-- <div class="col-md-3 item-pic">
							<img src="images/f1.jpg" class="img-responsive" alt="">

						</div> -->
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=mv.getDirector_name()%></a>
							</h5>
							<div class="td-post-date two">Director</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="editor-pics">
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=mv.getWriter()%></a>
							</h5>
							<div class="td-post-date two">Writer</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="editor-pics">
						
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a ><%=mv.getYear()%></a>
							</h5>
							<div class="td-post-date two">Release Year</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="editor-pics">
					
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=mv.getLanguage()%></a>
							</h5>
							<div class="td-post-date two">Language</div>
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="editor-pics">
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=mv.getGenres()%></a>
							</h5>
							<div class="td-post-date two">Genres</div>
						</div>
						<div class="clearfix"></div>
					</div>
					
					
					<div class="editor-pics">
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=mv.getActor1()%></a>
							</h5>
							<div class="td-post-date two">Actors</div>
						</div>
						<div class="clearfix"></div>
					</div>
					
					
					<div class="editor-pics">
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=rating %></a>
							</h5>
							<div class="td-post-date two">Predicted Rating</div>
						</div>
						<div class="clearfix"></div>
					</div>
				<%
// 				movieData m = new movieData();
// 				String url=m.getMovieUrl("padman");
// 				movieModel mv=m.getMovieData(url);
				if(mv.getRank().length() > 0){
					System.out.println(mv.getRank());
				
				%>	
					<div class="editor-pics">
						<div class="col-md-9 item-details">
							<h5 class="inner two">
								<a><%=mv.getRank() %></a>
							</h5>
							<div class="td-post-date two">IMDB Rating</div>
						</div>
						<div class="clearfix"></div>
					</div>	
					<%
				}else{
					out.println("New Movie!");
				}
					%>
					
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	<!-- </div> -->

	<%
			}
		}else
		{
			%>
			
			
			
			
 <div class="col-md-8 mag-innert-left" style="margin-left: 15%;">
<pre>











</pre>
</div> 
			<%
		}
	%>

</div>
</div>


	<jsp:include page="../tiles/footer.jsp"></jsp:include>
</body>
</html>