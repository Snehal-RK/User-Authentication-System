<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">

</head>
<body>

	<!-- Navbar Start -->
		<nav class="navbar navbar-expand-lg navbar-light bg-secondary mt-2 mb-5">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> Login Application </a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				
					<!-- For user with no login -->
					<% if(	session.getAttribute("ROLE") == null || 
							session.getAttribute("ROLE").toString() == "" ){
					%>
					<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link text-white" href="Home.jsp"> Home </a>
						</li>

						<li class="nav-item">
							<a class="nav-link text-white" href="Login.jsp"> Login </a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link text-white" href="Register.jsp"> Register </a>
						</li>
					</ul>
					<%
						}
					%>
					
					<!-- For user with login -->
					<% if(	session.getAttribute("ROLE") != null &&
							session.getAttribute("ROLE").equals("user")){
					%>
					<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
						<li class="nav-item text-white">
							<a class="nav-link" href="Home.jsp"> Home </a>
						</li>

						<li class="nav-item text-white">
							<a class="nav-link" href="UserProfile.jsp"> Account </a>
						</li>
						
						<li class="nav-item text-white">
							<a class="nav-link btn btn-secondary bg-light" href="Logout.jsp"> Logout </a>
						</li>
					</ul>
					<%
						}
					%>
					
					<!-- For admin with login -->
					<% if(	session.getAttribute("ROLE") != null && 
							session.getAttribute("ROLE").equals("admin") ){
							
					%>
					<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link text-white" href="Home.jsp"> Home </a>
						</li>

						<li class="nav-item">
							<a class="nav-link text-white" href="AdminProfile.jsp"> Account </a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link btn btn-secondary bg-light" href="Logout.jsp"> Logout </a>
						</li>
					</ul>
					<% 
						}
					%>
					
				</div>
			</div>
		</nav>

	<!-- Navbar Ends -->
	
	<!-- Home data starts -->
		<!-- FOR USER -->
		<% 
			if(	session.getAttribute("ROLE") != null &&
				session.getAttribute("ROLE").equals("user")){
		%>
		<h1 class="text-danger mb-2 offset-1"> User Profile </h1>
		<%
			}
		%>
		
		<!-- FOR ADMIN -->
		<% 
			if(	session.getAttribute("ROLE") != null &&
				session.getAttribute("ROLE").equals("admin")){
		%>
		<h1 class="text-danger mb-2 offset-1"> Admin Profile </h1>
		<%
			}
		%>
	<!-- Home data ends -->

	<script src="Bootstrap/jquery.js"></script>
	<script src="Bootstrap/bootstrap.min.js"></script>

</body>
</html>