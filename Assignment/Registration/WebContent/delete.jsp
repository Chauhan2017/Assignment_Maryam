<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.io.*" %>
<%@page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>

<%
String id = request.getParameter("i");
//int i = Integer.parseInt(id);


Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
String query = "delete from users where id='"+id+"'";
Statement st = conn.createStatement();
st.executeUpdate(query);
response.sendRedirect("Viewtable.jsp");
%>
