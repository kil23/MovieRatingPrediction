<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><jsp:include page="../tiles/header.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="../tiles/topbar1.jsp"></jsp:include>
  <div class="main-content">
  	<div class="container">
  		<div class="mag-inner">
  		<div class="col-md-8 mag-innert-left">
  		<div class="col-md-6 account-left">
					<form name="contact-form" id="contact-form" action="javascript:fnSubmit();" enctype="mulipart/form-data" method="post">
					<div class="account-top heading">
						<h3>LogIn</h3>
					</div>
					<div class="address">
						<span>Username</span>
						<input type="text" id="username" name="username" placeholder="Enter User Name" required="required">
					</div>
					<div class="address">
						<span>Password</span>
						<input type="password" id="pass" name="pass" placeholder="Enter password" required="required" >
					</div>
					
					<div class="address new">
						<input value="submit" type="submit">
					</div>
					</form>
				</div>
			
  		</div>
  
  		</div>
	</div>
</div>


	<jsp:include page="../tiles/footer.jsp"></jsp:include>

</body>

<script>

function fnSubmit(){
	

	 var str = $( "#contact-form" ).serialize();
	$.post("<%=request.getContextPath()%>/tiles/ajax.jsp?methodId=checkLogin",
			str,
			function(data) {
		data=$.trim(data);
		if(data=='false'){
			alert('Invalid Credentials. Please try again.');
			$('#contact-form')[0].reset();
		}else{
			window.location.href='<%=request.getContextPath()%>/pages/search.jsp';
		}
  

			});


}
</script>
</html>