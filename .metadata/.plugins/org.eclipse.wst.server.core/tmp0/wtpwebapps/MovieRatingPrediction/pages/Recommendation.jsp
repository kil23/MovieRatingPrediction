<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="code.movieData"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.movieModel"%>
<%@page import="java.util.List"%>
<%@page import="com.database.ConnectionManager"%>
<%@page import="com.helper.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><jsp:include page="../tiles/header.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="../tiles/topbar.jsp"></jsp:include>
	
	
	
	<%
	UserModel um= null;
	if(session.getAttribute("USER_MODEL")!=null){
		um=(UserModel)session.getAttribute("USER_MODEL");
	}
		String user=um.getUsername();
		String userid=um.getUserid();
		List list=null;
		try{
		 list = ConnectionManager.getRecommendation(userid);
		}catch(Exception e){
			
		}
// 		for(int i=0;i<list.size();i++){
// 			movieModel mv=new movieModel();
// 			mv=(movieModel)list.get(i);
// 			System.out.println(mv.getTitle());
// 		}
		
		
	%>
	
	
	
		
  <div class="main-content">
  	<div class="container">
  		<%-- <div class="mag-inner">
  		<div class="row">
<!--   		<div class="col-md-4 mag-innert-left">&nbsp</div> -->
  		<div class="col-md-8 mag-innert-left" style="margin-left: 15%;">
  		<h4 class="side">Recommended Movies </h4>
			<div class="edit-pics">
			<%
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				movieModel object = (movieModel) iterator.next();
			%>
							      <div class="editor-pics">
										 <div class="col-md-3 item-pic">
										 <%
// 										 movieData md= new movieData();
// 										 String poster=md.getMoviePoster(object.getTitle());
										 %>
										   <img src="<%=request.getContextPath()%>/theme/images/f4.jpg" class="img-responsive" alt="">
											<%=object.getPoster() %>
										   </div>
											<div class="col-md-9 item-details">
												<h5 class="inner two"><a href="<%=request.getContextPath()%>/pages/search.jsp?movname=<%=object.getTitle()%>"><%=object.getTitle() %></a></h5>
											 </div>
											<div class="clearfix"></div>
										</div>
										
										<% } %>
										
									</div>
  		</div>
  		
  		</div>
  		
  		</div> --%>
  		
  		<div class="gallery col-lg-12">
							<div class="main-title-head">
							  <h3 class="tittle"><i class="glyphicon glyphicon-picture"></i>Recommended Movies</h3>
							</div>
							<div class="gallery-images">
								<div class="course_demo1">
								  <ul id="flexiselDemo1">	
								  <%
			for (int i=list.size()-1;i>list.size()/2;i--) {
				movieModel object = (movieModel) list.get(i);
			%>
									 <li>
										<a href="<%=request.getContextPath()%>/pages/search.jsp?movname=<%=object.getTitle()%>"><%=object.getPoster() %></a>						
									 </li>
										
									 <%} %>
								 </ul>
							 </div>
								<script type="text/javascript">
							 $(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 10,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 2
										}, 
										landscape: { 
											changePoint:640,
											visibleItems: 2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							 });
							  </script>
							 <script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.flexisel.js"></script>
						 </div>
						  <div class="course_demo1">
								  <ul id="flexiselDemo">
								  <%
// 								  List list1=null;
// 								 Collections.reverse(list);
			for (int i=list.size()/2;i>=0;i--) {
				movieModel object = (movieModel)list.get(i);
			%>	
									 <li>
										<a href="<%=request.getContextPath()%>/pages/search.jsp?movname=<%=object.getTitle()%>"><%=object.getPoster() %></a>							
									 </li>
									<%
										}
									%>	
								 </ul>
							 </div>
							 
								<script type="text/javascript">
							 $(window).load(function() {
								$("#flexiselDemo").flexisel({
									visibleItems: 4,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 2
										}, 
										landscape: { 
											changePoint:640,
											visibleItems: 2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							 });
							  </script>
							 <script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.flexisel.js"></script>

					</div>
					
					
					
					<%
// 					List list1=ConnectionManager.getGeneresMovies(userid);
					List list1=ConnectionManager.getRecommendedMovies(userid);
					System.out.println("--------------------:"+list.size()+":--------------------");
					%>
					
					<div class="gallery col-lg-12">
							<div class="main-title-head">
							  <h3 class="tittle"><i class="glyphicon glyphicon-film"></i>Genres Wise Recommended Movies</h3>
							</div>
							<div class="gallery-images">
								<div class="course_demo1">
								  <ul id="flexiselDemo2">	
								  <%
			for (int i=0;i<list1.size()/2;i++) {
				movieModel object = (movieModel)list1.get(i);
			%>
									 <li>
										<a href="<%=request.getContextPath()%>/pages/search.jsp?movname=<%=object.getTitle()%>"><%=object.getPoster() %></a>						
									 </li>
										
									 <%} %>
								 </ul>
							 </div>
								<script type="text/javascript">
							 $(window).load(function() {
								$("#flexiselDemo2").flexisel({
									visibleItems: 10,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 2
										}, 
										landscape: { 
											changePoint:640,
											visibleItems: 2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							 });
							  </script>
							 <script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.flexisel.js"></script>
						 </div>
						  <div class="course_demo1">
								  <ul id="flexiselDemo4">
								  <%
// 								  List list1=null;
// 								 Collections.reverse(list1);
			for (int i=list1.size()/2;i<list1.size();i++) {
				movieModel object = (movieModel)list1.get(i);
			%>	
									 <li>
										<a href="<%=request.getContextPath()%>/pages/search.jsp?movname=<%=object.getTitle()%>"><%=object.getPoster() %></a>							
									 </li>
									<%
										}
									%>	
								 </ul>
							 </div>
							 
								<script type="text/javascript">
							 $(window).load(function() {
								$("#flexiselDemo4").flexisel({
									visibleItems: 4,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 2
										}, 
										landscape: { 
											changePoint:640,
											visibleItems: 2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							 });
							  </script>
							 <script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/jquery.flexisel.js"></script>

					</div>
					
					
					
					
					
					
					
					
					
  		
  		
	</div>
</div>


	<jsp:include page="../tiles/footer.jsp"></jsp:include>

</body>

</html>