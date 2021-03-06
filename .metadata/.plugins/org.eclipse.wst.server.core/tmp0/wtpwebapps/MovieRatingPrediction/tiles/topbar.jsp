<%@page import="com.helper.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
.bgimg-1 {
<%--     background-image: url("<%=request.getContextPath()%>/theme/bg1.jpg"); --%>
    height: 100%;
}


padding-top: 0.7em;padding-bottom: 0.7em;
</style>

</head>
<body class="bgimg-1">

<%
boolean isAdmin=false;
UserModel um= null;
if(session.getAttribute("USER_MODEL")!=null){
	um=(UserModel)session.getAttribute("USER_MODEL");
	String user=um.getUsername();
	if(user.indexOf("admin")!=-1){
		isAdmin=true;
	}
}


%>
<div class="header" id="home">
	 <div class="content white" style="padding-top: 0.7em;padding-bottom: 0.7em;">
		<nav class="navbar navbar-default" role="navigation">
		   <div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><h1><span> Movie ratings</span></h1> </a>
			</div>
			<!--/.navbar-header-->
		
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/pages/search.jsp">Search</a></li>
					<li class="divider"></li>
					<li><a href="<%=request.getContextPath()%>/pages/SearchHistory.jsp">History</a></li>
					<li class="divider"></li>
					<li><a href="<%=request.getContextPath()%>/pages/Recommendation.jsp">Recommended Movies</a></li>
					<li class="divider"></li>
					<%if(isAdmin){ %>
					<li><a href="SVM.jsp">SVM Analysis</a></li>
					<%} %>   
					<li class="divider"></li>
<%-- 					<li><a href="<%=request.getContextPath()%>/pages/login.jsp">Login</a></li> --%>
					<li class="divider"></li>
					
					<%if(um==null){ %>
						<li><a href="<%=request.getContextPath()%>/pages/register.jsp">Register</a></li>
					<%}else{ %>
						<li><a href="<%=request.getContextPath()%>/tiles/ajax.jsp?methodId=logout">Logout</a></li>
					<%} %>
					
				</ul>
			</div>
			<!--/.navbar-collapse-->
	 <!--/.navbar-->
     </div>
	</nav>
  </div>
 </div>

</body>
</html>