<%@page import="java.util.Map.Entry"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="com.helper.UserModel"%>
<%@page import="java.io.ObjectOutputStream"%>

<%@page import="com.database.ConnectionManager"%>
<%@page import="com.helper.StringHelper"%>
<%@page import="java.util.HashMap"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String sMethod = StringHelper.n2s(request
	.getParameter("methodId"));
	String returnString = "";
	boolean bypasswrite=false;
	UserModel um=null;
	
if(session.getAttribute("USER_MODEL")!=null){
		um=(UserModel)session.getAttribute("USER_MODEL");
		
		
}
	HashMap parameters = StringHelper.displayRequest(request);
	if (sMethod.equalsIgnoreCase("registerNewUser")) {
		returnString = ConnectionManager.insertUser(parameters);
	}else if (sMethod.equalsIgnoreCase("checkLogin")) {
		
		UserModel um2= ConnectionManager.checkLogin(parameters);
		if(um2!=null){
	session.setAttribute("USER_MODEL", um2);
	

	returnString="true";
		}else{
	returnString="false";
		}
	}
	
	else if (sMethod.equalsIgnoreCase("logout")) {  
	session.removeAttribute("USER_MODEL");
	bypasswrite=true;
%>
			<script>
			window.location.href='<%=request.getContextPath()%>/pages/login.jsp';
			</script>
			<%
	}
	if(!bypasswrite){
	out.println(returnString);
	
	}
%>