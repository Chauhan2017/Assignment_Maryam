<%@page import="java.io.*" %>
<%@page import="java.sql.*"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
	Statement statement = con.createStatement();
	String query = "select * from users";
	ResultSet rs = statement.executeQuery(query);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Users</title>
</head>
<body>
<table border="2">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>E-mail</th>
<th>Phone No</th>
<th>Location</th>
<th>ACTION</th>
</tr>

	<% while(rs.next())
        {
	%><tr>
	<td><%=rs.getString("fname") %></td>
    <td><%=rs.getString("lname") %></td>
    <td><%=rs.getString("email") %></td>
    <td><%=rs.getString("phone") %></td>
    <td><%=rs.getString("location") %></td>
    <td>
	<a href="edit.jsp?i=<%=rs.getInt("id") %>">Edit</a>
	<a href="delete.jsp?i=<%=rs.getInt("id") %>"> Delete</a></td>
    
    <% } %>
    
    </table>
    <%
    rs.close();
    statement.close();
    con.close();
    %>
    
</body>
</html>