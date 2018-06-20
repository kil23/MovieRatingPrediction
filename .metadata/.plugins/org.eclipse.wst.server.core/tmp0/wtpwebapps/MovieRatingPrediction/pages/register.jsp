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
					<form id="contact-form" action="javascript:fnSubmit();">
					<div class="account-top heading">
						<h3>NEW REGISTRATION</h3>
					</div>
					<div class="address">
						<span>First Name</span>
						<input type="text" id="name" name="fname" required="required">
					</div>
					<div class="address">
						<span>Last Name</span>
						<input type="text" name="lname" required="required">
					</div>
					<div class="address">
						<span>Contact No</span>
						<input type="text" name="phoneno"  id="phone"  required="required">
					</div>
					<div class="address">
						<span>UserName</span>
						<input type="text" id="username" name="username" required="required">
					</div>
					<div class="address">
						<span>Password</span>
						<input type="password" name="userpass" required="required">
					</div>
					<div class="address">
						<span>Re-enter Password</span>
						<input type="password" name="cuserpass"  required="required">
					</div>
					<div class="address new">
						<input value="Register" type="submit">
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
	
	if($('#userpass').val()!=$('#cuserpass').val()){
		alert('Password and confirm password do not match!');
		return;
	}
	
	 var str = $( "#contact-form" ).serialize();
	$.post("<%=request.getContextPath()%>/tiles/ajax.jsp?methodId=registerNewUser",
			str,
			function(data) {
data=$.trim(data);  
if(data.indexOf('Successfully')!=-1){
	alert(data);
	$('#contact-form')[0].reset();
	window.location.href='<%=request.getContextPath()%>/pages/login.jsp';
}else{
	alert(data);
}



			});


}
</script>
</html>