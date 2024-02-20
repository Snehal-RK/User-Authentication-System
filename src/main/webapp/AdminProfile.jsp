<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	if(session.getAttribute("ROLE")==null || session.getAttribute("ROLE").equals("user")){
		response.sendRedirect("login.jsp");	
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin Profile </title>
</head>
<body>

		<%@ include file="Home.jsp" %>
		
		<h2 class="offset-1"> Welcome, <%= session.getAttribute("SESSION_NAME") %> </h2>

</body>
</html>