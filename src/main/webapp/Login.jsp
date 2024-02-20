<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Login Page </title>
</head>
<body>

	<%@ include file="Home.jsp" %>
	
	<!-- Login Form start -->
	
	<div class="container">
		<div class="row">
			<div class="offset-3 col-6 mt-2">
				<div class="card">	
				<!-- Post method restricts data from displaying in url -->
				
					<div class="card-header">
						<h1> Login Form </h1>
					</div>
					<form class="card-body form-group" action="LoginProcess.jsp" method="post">
							<label> Username : </label>
							<input type="text" name="LoginUsername" class="form-control">
						
							<label> Password : </label>
							<input type="text" name="LoginPassword" class="form-control">
						
							<input type="submit" value="Submit" class="mt-2 float-right">
					</form>
				</div>
			</div>
		</div>		
	</div>
	
	<!-- Login Form end -->

</body>
</html>