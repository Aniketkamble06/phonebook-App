
<%@page import="com.entity.Contact"%>
<%@page import="java.util.List"%>
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
<style type="text/css">
.card-ho:hover{
background-color:#f7f7f7;

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


<%
String succMsg=(String)session.getAttribute("succMsg");
String failedMsg=(String)session.getAttribute("failedMsg");
if(succMsg!=null)
{
	%>
	<div class="alert alert-success" role="alert"><%=succMsg %></div>
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

<div class="container">
<div class="row p-4">


<%
if(user!=null)
{
ContactDAO dao =new ContactDAO(DbConnect.getConn());
List<Contact> contact=dao.getAllContact(user.getId());

for(Contact c:contact)
  {
	%>
	<div class="col-md-3">
	<div class="card card-ho">
	<div class="card-body">
	<h5>Name: <%=c.getName() %></h5>
	<p>Ph no: <%=c.getPhno() %></p>
	<p>Email:<%=c.getEmail() %> </p>
	<p>About: <%=c.getAbout() %></p>
	<div class="text-center">
	<a href="editContact.jsp?cid=<%=c.getId() %>" class="btn btn-success text-white  btn-sm"><b>Edit</b></a>
	<a href ="delete?cid=<%=c.getId() %>" class="btn btn-danger text-white btn-sm"><b>Delete</b></a>
	</div>
	</div>
	</div>
	</div>
	<% 
	}
}
%>





</div>
</div>

</body>
</html>