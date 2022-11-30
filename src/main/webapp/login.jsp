<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>

<style >
body{
background-image:url("img/Login4.jpg");
height:100%;
width:100%;
background-size:cover;
background-repeat:no-repeat ;


}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid ">
		<div class="row p-2">
			<div class="col-md-4 offset-md-8">
				<div class="card">
					<div class="card-body ">
        <h1 class="text-center text-danger"><b>Login Page</b></h1>
        
        <%
        String invalidMsg=(String)session.getAttribute("invalidMsg");
        if(invalidMsg!=null)
        {
        	%>
        	<p class="text-center text-danger"><%=invalidMsg %></p>
        	<%
        	session.removeAttribute("invalidMsg");
        }
        %>
        
        
        <% 
        String logMsg=(String)session.getAttribute("logMsg");
        if(logMsg!=null)
        {
        	%>
        	<p class="text-success text-center"><%=logMsg %></p>
        	<% 
        	session.removeAttribute("logMsg");
        }
        %>
        
        
					<form action="login" method="post">
					<div class="form-group">
					<label for="exampleInputEmail1"><b>Email address</b></label> 
	     <input name="email" type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email">
					
							</div>
							
					<div class="form-group">
					<label for="exampleInputPassword1"><b>Password</b></label> <input name="password"
					type="password" class="form-control" id="exampleInputPassword1"
					placeholder="Password">
							</div>
							
							<div class="text-center mt-2">
					<button type="submit" class="btn btn-primary"><b>Login</b></button>
					</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="margin-top:303px">
<%@include file="component/footer.jsp" %>
</div>
</body>
</html>