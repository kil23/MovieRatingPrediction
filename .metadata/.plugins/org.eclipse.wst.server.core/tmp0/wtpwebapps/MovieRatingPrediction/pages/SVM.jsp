<%@page import="com.constant.ServerConstants"%>
<%@page import="com.database.ConnectionManager"%>
<%@page import="java.util.*"%>
<%@page import="com.helper.StringHelper"%>
<%@page import="com.svm.SvmClassifier"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <%@taglib prefix="display" uri="/WEB-INF/displaytag-12.tld" %>
 --%>
 <%@ taglib uri="/WEB-INF/displaytag-12.tld" prefix="display" %>
<jsp:include page="../tiles/header.jsp"></jsp:include>

<style type="text/css">
.form-group{
margin-bottom: 15px;
}
.form-control{
display: block;
width: 100%;
height: 34px;
padding: 6px 12px;
font-size: 14px;
line-height: 1.42857143;
color: #555;
background-color: #fff;
background-image: none;
border: 1px solid #ccc;
border-radius: 4px;
}
</style>
</head>
<body>



<jsp:include page="../tiles/topbar.jsp"></jsp:include>
		<div class="main-content">
		<div class="container">
			<div class="col-md-12 mag-innert-left">
				<div class="account-bottom">
					<div class="col-md-12 account-left">
					<form name="myform" id="myform" action="<%=request.getContextPath()%>/pages/SVM.jsp">
					<div class="row">
					<div class="account-top heading">
						<h3>SVM Analysis</h3>
					</div>
					<div class="row">
					<div class="address col-md-2">
						<span>Total No. of Votes</span>
						<input type="text" name="votes">
					</div>
					<div class="address col-md-2">
						<span>Director Rating</span>
						<input type="text" name="dir_rating">
					</div>
					<div class="address col-md-2">
						<span>Writer Rating</span>
						<input type="text" name="writer_rating">
					</div>
					<div class="address col-md-2">
						<span>Actor Likes</span>
						<input type="text" name="actor_likes">
					</div>
<!-- 					<div class="address col-md-2 "> -->
<!-- 						<span>Language</span> -->
<!-- 							<select name="lang"> -->
<!-- 							  <option value="1">Hindi</option> -->
<!-- 							  <option value="2">English</option> -->
<!-- 							  <option value="3">Other</option> -->
<!-- 							</select> -->
<!-- 					</div> -->
					
						<div class="address col-lg-2 form-group">
					      <span>Language</span>
					      <select class="form-control" name="lang">
					        <option value="1">Hindi</option> 
							<option value="2">English</option>
 							<option value="3">Other</option> 
					      </select>
					      </div>
					</div>
					
					</div>
					<div class="address col-md-1">
						<input value="submit" type="submit" >
					</div>
					</form>
					<form action="<%=request.getContextPath()%>/pages/SVM.jsp">
					<div class="col-md-1"></div>
					<div class="address col-md-2">
						<input value="Reset" type="submit" >
					</div>
					</form>
					
				</div>
				 <div class="col-md-12 account-left second" >
				<%
				double lang = StringHelper.n2d(request.getParameter("lang"));
				double votes = StringHelper.n2d(request.getParameter("votes"));
				double dir_rating = StringHelper.n2d(request.getParameter("dir_rating"));
				double writer_rating = StringHelper.n2d(request.getParameter("writer_rating"));
				double actor_likes = StringHelper.n2d(request.getParameter("actor_likes"));
			if (votes > 0) {
				double featureArray[]={votes,dir_rating,writer_rating,actor_likes,lang};
			       String str= SvmClassifier.applySvmClassifier(featureArray);
			       str=ServerConstants.rating[StringHelper.n2i(str)];
			%>
				
						<div class="account-top heading">
							<h3>Movie Rating: <%=str%></h3>
						</div>
				<%} %>
				</div> 
				
				
				
				</div>
				
			</div>
		</div>
		</div>
		<div class="container">
			<div class="col-md-12 mag-innert-left">
				<div class="account-bottom">
					<div class="account-top heading">
						<h3>Training Data Set</h3>
					</div>
					<%
					int srno=1;
					List list=ConnectionManager.getTrainedData();
					session.setAttribute("LIST2", list);
					if(list==null){
						System.out.println("Empty");
					}
					%>
					
					<display:table class="simple" name="sessionScope.LIST2"
											requestURI="SVM.jsp"
											id="searchTableId"
											style=" width:150%;" length="100"
											defaultorder="ascending" export="false" sort="list">
											<display:setProperty name="export.csv" value="false" />
											<display:setProperty name="export.xml" value="false" />
											<display:setProperty name="export.xls" value="false" />
											<%-- <display:setProperty name="paging.banner.placement"
												value="bottom" /> --%>
											
											<display:column sortProperty="title"  sortable="true" style="text-align:center;" title="Sr.No" ><%=srno%>
												<%  
													srno++;
												%>
											</display:column>
												
											<display:column title="Title" sortable="true" style="text-align:center;"
												property="title">
											</display:column>

											<display:column title="Director" sortable="true" style="text-align:center;"
												property="director">
											</display:column>

											<display:column title="writer" sortable="true" style="text-align:center;"
												property="writer">
											</display:column>
											<display:column title="actors" sortable="true" style="text-align:center;"
												property="actors">
											</display:column>
											<display:column title="genres" sortable="true" style="text-align:center;"
												property="genres">
											</display:column>
											<display:column title="votes" sortable="true" style="text-align:center;"
												property="votes">
											</display:column>
											<display:column title="dir_rating" sortable="true" style="text-align:center;"
												property="dir_rating">
											</display:column>
											<display:column title="writer_rating" sortable="true" style="text-align:center;"
												property="writer_rating">
											</display:column>
											<display:column title="actor_likes" sortable="true" style="text-align:center;"
												property="actor_likes">
											</display:column>
										</display:table>
					
					
					
				</div>
			</div>
		</div>

	<jsp:include page="../tiles/footer.jsp"></jsp:include>

</body>
</html>