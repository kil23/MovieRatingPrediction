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
		String userid= um.getUserid();
		List list = ConnectionManager.getHistory(userid);
		for(int i=0;i<list.size();i++){
			movieModel mv=new movieModel();
			mv=(movieModel)list.get(i);
// 			System.out.println(mv.getTitle());
		}
		
		
	%>
	
	
	
	
  <div class="main-content">
  	<div class="container">
  		<div class="mag-inner">
  		<div class="row">
<!--   		<div class="col-md-4 mag-innert-left">&nbsp</div> -->
  		<div class="col-md-8 mag-innert-left" style="margin-left: 15%;">
  		<h4 class="side">Searched Movies </h4>
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
<%-- 										   <img src="<%=request.getContextPath()%>/theme/images/f4.jpg" class="img-responsive" alt=""> --%>
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
  		
  		</div>
	</div>
</div>


	<jsp:include page="../tiles/footer.jsp"></jsp:include>

</body>

</html>