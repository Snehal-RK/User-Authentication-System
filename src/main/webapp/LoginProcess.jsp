<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%

	// fetch data from input fields
	String username = request.getParameter("LoginUsername");
	String password = request.getParameter("LoginPassword");
	System.out.println(username+" "+ password);
	
	// db connection
	Class.forName("com.mysql.cj.jdbc.Driver");		// driver is a tool used for db connectivity
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp","root","");
	
	String sql = "SELECT * FROM logindata WHERE username=? AND password=?";
	PreparedStatement statement = con.prepareStatement(sql);
	statement.setString(1,username);
	statement.setString(2,password);
	
	ResultSet loginResult = statement.executeQuery();
	
	if(loginResult.next()){
		session.setAttribute("ROLE", loginResult.getString(5));
		session.setAttribute("SESSION_NAME", loginResult.getString(2));
		
		if(session.getAttribute("ROLE")==null){
			response.sendRedirect("Authorization.jsp");
		}
		else if(session.getAttribute("ROLE").equals("admin")){
			response.sendRedirect("AdminProfile.jsp");
		}
		else if(session.getAttribute("ROLE").equals("user")){
			response.sendRedirect("UserProfile.jsp");
		}
	}
	else{
		response.sendRedirect("Home.jsp");
	}

	
%>