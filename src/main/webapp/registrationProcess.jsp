<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%

	// fetch and save data from url
	
	String username = request.getParameter("RegisterUsername");
	String password = request.getParameter("RegisterPassword");
	long contact = Long.parseLong(request.getParameter("RegisterContact"));
	
	// db connection
	Class.forName("com.mysql.cj.jdbc.Driver");		// driver is a tool used for db connectivity
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginapp","root","");
	
	String sql = "INSERT INTO logindata (username, password, contact) VALUES (?,?,?) ";
	PreparedStatement statement = con.prepareStatement(sql);
	statement.setString(1,username);
	statement.setString(2,password);
	statement.setLong(3,contact);
	
	int result = statement.executeUpdate();
	if(result!=0){
		response.sendRedirect("Login.jsp");
	}

%>