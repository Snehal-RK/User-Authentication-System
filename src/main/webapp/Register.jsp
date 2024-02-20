<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Register here </title>
</head>
<body>

	<%@ include file="Home.jsp" %>
	
	<!-- Login Form start -->
	
	<div class="container">
		<div class="row">
			<div class="offset-3 col-6 mt-2">
				<div class="card">	
				<!-- Post method restricts data from displaying in URL -->
				
					<div class="card-header">
						<h1> Registration Form </h1>
					</div>
					
					<form action="registrationProcess.jsp" method="post" class="card-body form-group">
							<label> Username : </label>
							<input type="text" name="RegisterUsername" class="form-control">
						
							<label> Password : </label>
							<input type="text" name="RegisterPassword" class="form-control">
						
							<label> Contact : </label>
							<input type="text" name="RegisterContact" class="form-control">

							<input type="submit" value="Register" class="mt-2 float-right">
					</form>
				</div>
			</div>
		</div>		
	</div>
	
	<!-- Login Form start -->

</body>
</html>