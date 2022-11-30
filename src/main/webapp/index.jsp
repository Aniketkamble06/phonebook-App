<%@page import="com.entity.User"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<%@include file="component/allCss.jsp" %>
<style type="text/css">
.back-img{
background:url("img/Bg3.jpg");
width:100%;
height:85.6vh;
background-repeat:no-repeat;
background-size:cover;
}

</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>


<div class="container-fluid back-img">
<h1 class="  text-center text-white"><b>Welcome to PhoneBook App</b></h1>
</div>

</div>

<%@ include file="component/footer.jsp" %>
</body>
</html>