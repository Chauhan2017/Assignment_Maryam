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
<form action="update.jsp" method="get">
<%
String id = request.getParameter("i");
//int i = Integer.parseInt(id);

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
String query = "select * from users where id='"+id+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>

<table border="2">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>E-mail</th>
<th>Phone No</th>
<th>Location</th>

<tr>
<td> <input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>
<td><input type="text" name="phone" value="<%=rs.getString("phone")%>"></td>
<td><input type="text" name="location" value="<%=rs.getString("location")%>"></td>
<td><input type="hidden" name="id" value="<%=rs.getString("id")%>"></td>
</tr>

<tr>
<td><input type="submit" name="Submit" value="Update" /></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>
</body>
</html>