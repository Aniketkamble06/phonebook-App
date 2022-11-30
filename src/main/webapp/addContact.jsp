<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
<style>
body {
	background-image: url(img/AddContact.jpg);
	width: 100%;
	height: 100%;
	background-repeat: no repeat;
	background-size: cover;
}
</style>

</head>
<body>
<%@include file="component/navbar.jsp" %>

<%
if(user==null)
{
	session.setAttribute("invalidMsg", "Login Please..");
	response.sendRedirect("login.jsp");
	}
%>

<div class="container-fluid ">
		<div class="row p-2">
			<div class="col-md-5 offset-md-0">
				<div class="card">
					<div class="card-body ">
        <h1 class="text-center text-success"><b>Add Contact Page</b></h1>
        
        <%
        String succMsg=(String)session.getAttribute("succMsg");
        String failedMsg=(String)session.getAttribute("failedMsg");
        if(succMsg!=null)
        {
        	%>
        	<p class="text-center text-success"><%=succMsg %></p>
        	<% 
        	session.removeAttribute("succMsg");
        }
        if(failedMsg!=null)
        {
        	%>
        	<p class="text-center text-danger"><%=failedMsg %></p>
        	<%
        	session.removeAttribute("failedMsg");
        }
        
        %>
					
					<form action="addContact" method="post">	
					
					<%
			if(user!=null)
			{
				%>
				<input type="hidden" value="<%= user.getId()%>"  name="userid">	
				<% 
			}
			%>	
			
			
			<div class="form-group">
			<label for="exampleInputEmail1"><b>Name</b></label> <input name="name"
			type="text" class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Name">
				</div>
						
			<div class="form-group">
			<label for="exampleInputEmail1"><b>Email address</b></label> <input name="email"
			type="email" class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter email">
				</div>
							
			<div class="form-group">
			<label for="exampleInputEmail1"><b>Phone No</b></label> <input name="phno"
			type="number" class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Phone no">
				</div>
					
			<div class="form-group ml-0.5 mr-0.5 ">
			<label for="exampleInputEmail1"><b>About</b></label><br>
			<textarea rows="3" cols="" placeholder="Enter about" name="about"></textarea>
			</div>
					
	     	<div class="text-center mt-2">
			<button type="submit" class="btn btn-primary"><b>Save Contact</b></button>
					    </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="margin-top:79px">
<%@include file="component/footer.jsp" %>
</div>
</body>
</html>