<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="index.jsp">
		<b><i class="fa-solid fa-square-phone"></i> PhoneBook</b></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="addContact.jsp">
				<b><i class="fa-solid fa-house-chimney"></i> Home</b></a></li>
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="addContact.jsp">
				<b><i class="fa-solid fa-square-plus"></i> Add Phone
						No</b></a></li>

				<li class="nav-item active"><a class="nav-link " href="viewContact.jsp">
				<b><i class="fa-solid fa-eye"></i> View
						Contact</b></a></li>
			</ul>



            <%
          User user=(User)session.getAttribute("user");
            if(user==null)
            {
            	%>
            	<form class="form-inline my-2 my-lg-0">

				<a href="login.jsp" class="btn btn-success "><i
				class="fas fa-user"></i> <b>Login</b></a> 
				<a href="register.jsp" class="btn btn-danger ml-2">
					<i class="fas fa-user"></i><b> Register</b></a>
			</form>
            	<% 
            }
            else 
            {
            	%>
			<form class="form-inline my-2 my-lg-0">

				<button class="btn btn-success"><b><%=user.getName()%></b></button>
				<a data-toggle="modal" data-target="#exampleModalCenter"
				 class="btn btn-danger ml-2 text-white "><b>Logout</b></a>
			</form>

			<% 
            }
            %>
		</div>
	<!-- Logout Popup -->
	

	<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Modal
							title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body text-center">
					<h4><b>Do You Want Logout...</b></h4>
					<button type="button" class="btn btn-secondary"
							data-dismiss="modal"><b>Close</b></button>
						<a href="logout"  class="btn btn-primary"><b>Logout</b></a>
					</div>
					<div class="modal-footer">
						
					</div>
				</div>
			</div>
		</div>

		<!-- Logout Popup -->
	</nav>
</body>
</html>