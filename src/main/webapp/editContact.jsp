<%@page import="com.entity.Contact"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ContactDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
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
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-body ">
        <h1 class="text-center text-success">Update Contact Page</h1>
        
        <%
       
        String failedMsg=(String)session.getAttribute("failedMsg");
        if(failedMsg!=null)
        {
        	%>
        	<p class="text-center text-danger"><%=failedMsg %></p>
        	<%
        	session.removeAttribute("failedMsg");
        }
        
        %>
					
					<form action="Update" method="post">	
					
					<%
					int cid=Integer.parseInt(request.getParameter("cid"));
			ContactDAO dao=new ContactDAO(DbConnect.getConn());
				Contact c=	dao.getContactById(cid);
			%>	
			<input type="hidden" value="<%=cid %>" name="cid">
			
			
			<div class="form-group">
			<label for="exampleInputEmail1"><b>Name</b></label> <input value="<%=c.getName()%>"name="name"
			type="text" class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Name">
				</div>
						
			<div class="form-group">
			<label for="exampleInputEmail1"><b>Email address</b></label> <input value="<%=c.getEmail()%>"name="email"
			type="email" class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter email">
				</div>
							
			<div class="form-group">
			<label for="exampleInputEmail1"><b>Phone No</b></label> <input value="<%=c.getPhno()%>" name="phno"
			type="number" class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Phone no">
				</div>
					
			<div class="form-group ml-0.5 mr-0.5 ">
			<label for="exampleInputEmail1"><b>About</b></label><br>
			<textarea rows="3" cols="" placeholder="Enter about"  name="about"> <%=c.getAbout()%>"</textarea>
			</div>
					
	     	<div class="text-center mt-2">
			<button type="submit" class="btn btn-primary">Update Contact</button>
					    </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="margin-top:89px">
<%@include file="component/footer.jsp" %>
</div>
</body>
</html>